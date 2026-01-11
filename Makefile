CC = arm-none-eabi-gcc
OBJCOPY = arm-none-eabi-objcopy
CFLAGS = -mcpu=cortex-m4 -mthumb -O3

all: project.bin

project.elf: main.c
	$(CC) $(CFLAGS) main.c -o project.elf

project.bin: project.elf
	$(OBJCOPY) -O binary project.elf project.bin
