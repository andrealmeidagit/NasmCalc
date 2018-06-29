; ----------------------------------------------------------------------------------------
; Progam executes 5 math operations with integers. Runs on 64-bit macOS only.
; To assemble and run:
;
;     nasm -fmacho64 nasmcalc.asm && ld nasmcalc.o && ./a.out
; ----------------------------------------------------------------------------------------

          global    start

          section   .text
start:    mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message1           ; address of string to output
          mov       rdx, 28                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000003         ; system call for read
          mov       rdi, 1                  ; file handle 1 is stdin
          mov       rsi, name               ; address of string to input
          mov       rdx, 60                 ; max number of bytes
          syscall

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message2           ; address of string to output
          mov       rdx, 6                  ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, name               ; address of string to output
          mov       rdx, 60                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message3           ; address of string to output
          mov       rdx, 38                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu0              ; address of string to output
          mov       rdx, 20                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu1              ; address of string to output
          mov       rdx, 11                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu2              ; address of string to output
          mov       rdx, 16                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu3              ; address of string to output
          mov       rdx, 20                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu4              ; address of string to output
          mov       rdx, 14                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu5              ; address of string to output
          mov       rdx, 10                  ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, menu6              ; address of string to output
          mov       rdx, 11                 ; number of bytes
          syscall                           ; invoke operating system to do the write

          mov       rax, 0x02000001         ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data
message1:  db        "Por favor escreva seu nome", 13, 10      ;newline at the end
message2:  db        "Hola, "
name:      times 60   db   0                               ;allocates array
message3:  db        ", bem-vindo ao programa de CALC-IA32", 13, 10 ;crlf
menu0:     db        "ESCOLHA UMA OPCAO:", 13, 10   ;crlf
menu1:     db        "- 1: SOMA", 13, 10
menu2:     db        "- 2: SUBTRACAO", 13, 10
menu3:     db        "- 3: MULTIPLICACAO", 13, 10
menu4:     db        "- 4: DIVISAO", 13, 10
menu5:     db        "- 5: MOD", 13, 10
menu6:     db        "- 6: SAIR", 13, 10
message4:  db        "Insira o primeiro argumento:", 13, 10
message5:  db        "Insira o segundo argumento:", 13, 10
arg1:      dd        0
arg2:      dd        0
