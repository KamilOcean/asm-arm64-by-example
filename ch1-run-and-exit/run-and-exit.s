.text
.global _main

_main:
    mov X0, #0      // Set exit code to 0 (success)
    mov X16, #1     // Set syscall number for exit (1)
    svc #0x80       // Execute the system call

