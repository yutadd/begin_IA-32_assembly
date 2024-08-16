nasm -f elf32 desugar.asm -o tmp && ld -m elf_i386 tmp -o desugar
rm -f ./tmp