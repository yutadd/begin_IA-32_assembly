nasm -f elf32 converted.asm -o tmp && ld -m elf_i386 tmp -o converted
rm -f ./tmp