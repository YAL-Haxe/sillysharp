# SillySharp

A Haxe➜C# compiler... based on CustomJSGenerator?

## Why?

- Default generator produces code that's rather verbose
  (full of fully-qualified references and redundant casts)
  and hard to read without cross-referencing it with Haxe source.
- Default C# standard library implementation adds some amount of overhead to operations
  where you wouldn't expect any.
- Standard library routinely reimplements types
  (especially generics) that already exist in .NET.

## What it's good for

Library code that you would probably just write in C# if you didn't already write it in Haxe.

## Caveats

- Barely any standard library coverage
- No ability to reference DLLs for externs  
  (see [sics-autogen-src] for extracting externs out of the regular hxcs build)
- Consistency is routinely sacrificed for conciseness and/or minor added performance
  (did you know that `"1" + null` is `"1"` in .NET/CLR?)
- May generate ambiguous code if your naming conventions leave much to be desired.
- No ADT support.
- Probably two dozen other things that I forgot about because they are not used in the project that
  I'm making this for.