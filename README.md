It's just a repo where I publish my results of studying assembler on my MacM1. My playground, but I will try to explain all my solutions.


# What you need to understand in order to go to the Examples section

1. How to compile and link your asm programs (Just read this page, I'll provide the shortest way)
2. What does really mean low-level? Comparing to other higher-order programming languages
3. Register-based machines
4. Syscalls and SuperViser. How to exit from your programm
5. Basic memonics (instraction set)

I'm going to write all these topic down here, but later (Work In Progress).


# How to compile your asm program

> Works for Mac M1 Sillicon (arm64)

1. Name your file with code whatever you wish with extension `.s`. I will use the name `hello.s`
2. Compile it with the next command:

```bash

as -o hello.o hello.s
```

You must see in the current directory new compiled (object) file `hello.o`

```bash
ls // hello.o hello.s
```

3. Link your program (not need to explain right now, just do it)

```bash
ld -arch arm64 \
      -o hello hello.o \
      -e _start \
      -macos_version_min 14.0 \
      -syslibroot $(xcrun -sdk macosx --show-sdk-path) \
      -lSystem
```

4. Now you are able to run your executable file from your terminal:

```bash
./hello
```
