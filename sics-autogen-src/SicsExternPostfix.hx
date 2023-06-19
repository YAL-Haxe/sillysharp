package;

import haxe.io.Path;
import haxe.macro.Context;
import sys.FileSystem;
import sys.io.File;
using StringTools;

/**
 * 
 * @author YellowAfterlife
 */
class SicsExternPostfix {
	static var prefixes:Array<String>;
	static var newFileList:Array<SicsExternPostfixFile>;
	static var newFileMap:Map<String, SicsExternPostfixFile>;
	static var newFileBase:String;
	static var oldFileBase:String;
	static var patchFileBase:String;
	static var isCopy:Bool;
	static var removeOld:Bool;
	static function formFullDir(base:String, dir:String) {
		return dir != "" ? base + "/" + dir : base;
	}
	static function findNewFilesRec(dir:String) {
		var fulldir = formFullDir(newFileBase, dir);
		if (!FileSystem.exists(fulldir)) return;
		
		for (item in FileSystem.readDirectory(fulldir)) {
			var full = fulldir + "/" + item;
			var rel = dir + "/" + item;
			if (FileSystem.isDirectory(full)) {
				findNewFilesRec(rel);
				continue;
			}
			if (Path.extension(item) != "hx") continue;
			var file = new SicsExternPostfixFile(rel);
			newFileList.push(file);
			newFileMap[rel] = file;
		}
	}
	static var rxFunc:EReg = new EReg("^\t"
		+ "(?:@:\\w+" + "(?:\\(.*?\\)" + ")? )*" // 0 or more @:metas
		+ "(?:static |protected |private |public )*" // access modifiers
		+ "function (\\w+)"
		+ "(.+);$"
	,"");
	static function procFilesRec(dir:String) {
		Sys.println('$dir...');
		var fulldir = formFullDir(oldFileBase, dir);
		if (!FileSystem.exists(fulldir)) return;
		if (isCopy) {
			var newFullDir = formFullDir(newFileBase, dir);
			if (!FileSystem.exists(newFullDir)) FileSystem.createDirectory(newFullDir);
		}
		
		for (item in FileSystem.readDirectory(fulldir)) {
			var full = fulldir + "/" + item;
			var rel = dir + "/" + item;
			if (rel == "cs/system/String.hx") continue;
			if (FileSystem.isDirectory(full)) {
				procFilesRec(rel);
				continue;
			}
			if (Path.extension(item) != "hx") continue;
			
			var code:String = null;
			if (patchFileBase != null) {
				var patchFull = patchFileBase + "/" + rel;
				if (FileSystem.exists(patchFull)) {
					code = File.getContent(patchFull);
				}
			}
			if (code == null) {
				code = File.getContent(full);
				
				// @:realPath is forbidden in externs
				code = ~/@:realPath\(".+?"\) /g.replace(code, "");
				
				// @:native("List`1") will include that in generation, and we don't want that
				// (at least for now)
				code = ~/(@:native\(".+?)`\d+("\) .*?extern)/g.replace(code, "$1$2");
				
				// thank you, System.Threading.Tasks.Task, very cool
				code = ~/\(function :/g.replace(code, "(_function :");
				
				var lines = code.split("\n");
				var foundFunc:Map<String, Bool> = new Map();
				var i = lines.length;
				while (--i >= 0) {
					var line = lines[i];
					if (!rxFunc.match(line)) continue;
					var func = rxFunc.matched(1);
					if (!foundFunc.exists(func)) {
						foundFunc[func] = true;
						continue;
					}
					lines[i] = "\t@:overload(function" + rxFunc.matched(2) + " {})";
				}
				code = lines.join("\n");
			}
			
			if (isCopy) {
				var file = newFileMap[rel];
				if (file != null) file.used = true;
				File.saveContent(newFileBase + "/" + rel, code);
				if (removeOld) FileSystem.deleteFile(full);
			} else {
				File.saveContent(full, code);
			}
		}
	}
	static function afterGenerate() {
		newFileList = [];
		newFileMap = new Map();
		isCopy = newFileBase != oldFileBase;
		for (prefix in prefixes) {
			if (isCopy) {
				findNewFilesRec(prefix);
			}
			procFilesRec(prefix);
		}
		if (isCopy) {
			for (file in newFileList) {
				if (!file.used) FileSystem.deleteFile(newFileBase + "/" + file.rel);
			}
		}
	}
	public static function run(pack:String = "", ?outDir:String, ?patchDir:String) {
		if (Context.defined("display") || !Context.defined("gen-hx-classes")) return;
		prefixes = StringTools.replace(pack, ".", "/").split("|");
		oldFileBase = "hxclasses";
		patchFileBase = patchDir;
		if (outDir == null) {
			newFileBase = oldFileBase;
		} else {
			if (outDir.endsWith("/") || outDir.endsWith("\\")) {
				newFileBase = outDir.substring(0, outDir.length - 1);
			} else newFileBase = outDir;
		}
		removeOld = false;
		Context.onAfterGenerate(afterGenerate);
	}
}
private class SicsExternPostfixFile {
	public var rel:String;
	public var used = false;
	public function new(rel:String) {
		this.rel = rel;
	}
}