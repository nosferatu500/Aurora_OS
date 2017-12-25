section .multiboot_header
header_start:
    dd 0xe85250d6                ; magic number (multiboot 2)
    dd 0                         ; architecture 0 (protected mode i386)
    dd header_end - header_start ; header length
    ; checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

    ; The formula from the table, -(magic + architecture + header_length), 
    ; creates a negative value that doesn't fit into 32bit. By subtracting from 0x100000000 (= 2^(32)) instead,
    ; we keep the value positive without changing its truncated value. Without the additional sign bit(s) 
    ; the result fits into 32bit and the compiler is happy :)

    ; insert optional multiboot tags here

    ; required end tag
    dw 0    ; type
    dw 0    ; flags     ; dw - (16bit)
    dd 8    ; size      ; dd - (32bit)
header_end: