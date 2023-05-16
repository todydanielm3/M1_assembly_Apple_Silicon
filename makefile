LD = ld
AS = as

LDFLAGS = -o vigenere
ASFLAGS = -o vigenere.o

all: vigenere

vigenere: vigenere.o
	$(LD) $(LDFLAGS) vigenere.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

vigenere.o: vigenere_m1.s
	$(AS) $(ASFLAGS) vigenere_m1.s

clean:
	rm -f vigenere.o vigenere
