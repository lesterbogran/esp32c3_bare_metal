riscv-none-embed-gcc -march=rv32imc -c driver/wdt.c
riscv-none-embed-gcc -march=rv32imc -c main.c start.S vectors.S -I./driver
riscv-none-embed-gcc -o ejemplo -march=rv32imc --specs=nano.specs --specs=nosys.specs -nostartfiles -T ld/esp32c3.ld -T ld/common.ld -T ld/romfuncs.ld main.o start.o vectors.o wdt.o
riscv-none-embed-objcopy -O binary ejemplo ejemplo.bin