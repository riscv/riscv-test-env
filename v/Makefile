vm:
	riscv64-unknown-elf-gcc -nostdlib entry.S -g vm.c -T link.ld  -DENTROPY=0xf7930f7 -mcmodel=medany -lc -o $@
	riscv64-unknown-elf-objdump -d vm > vm.dis
	riscv64-unknown-elf-objcopy -I elf64-little -O binary vm vm.bin
	riscv64-unknown-elf-objcopy -I binary -O verilog vm.bin cnvmem.mem 
