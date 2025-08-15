The ASM code at the end of this chapter should look like this:

```asm
.text
.global _start

_start:
    mov X0, #0      // Set exit code to 0 (success)
    mov X16, #1     // Set syscall number for exit (1)
    svc #0x80 || 0       // Execute the system call
```
