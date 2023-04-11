CC = riscv-none-embed-gcc
OBJCOPY = riscv-none-embed-objcopy
LDFLAGS = -march=rv32imc --specs=nano.specs --specs=nosys.specs -nostartfiles -T ld/esp32c3.ld -T ld/common.ld -T ld/romfuncs.ld
SRCDIR = .
INCDIR = -I./driver
DRIVERS = driver/*.c
SOURCES = main.c start.S vectors.S $(DRIVERS)
EXECUTABLE = ejemplo
BINARY = ejemplo.bin

all: $(SOURCES) $(EXECUTABLE) $(BINARY)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(INCDIR) $(SOURCES) -o $@

$(BINARY): $(EXECUTABLE)
	$(OBJCOPY) -O binary $< $@


clean:
	rm -f *.o $(EXECUTABLE) $(BINARY)
