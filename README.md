# esp32c3_bare_metal
## how to build
*1. Download gcc from 

```
https://xpack.github.io/riscv-none-embed-gcc/

https://github.com/xpack-dev-tools/riscv-none-embed-gcc-xpack/releases
```

*2.build example*


```
cd example
make
```

*3. Download and install espressif tools*

https://docs.espressif.com/projects/esp-idf/en/latest/esp32c3/get-started/index.html#introduction




```

```
*4. Write bin file (ejemplo.bin) *

Linux:
```
esptool.py --port /dev/ttyUSB0 --baud 921600 write_flash 0x0000 ejemplo.bin
python -m serial.tools.miniterm COM3 115200
```


windows:
```
esptool.py --port COM3 --baud 921600 write_flash 0x0000 ejemplo.bin
python -m serial.tools.miniterm COM3 115200
```
exit you can
```
ctrl + ]
```
