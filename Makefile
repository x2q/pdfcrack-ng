LIBS = -pthread

CFLAGS= -Wall -Wshadow -Wwrite-strings -Wsign-compare -Wfloat-equal \
	-Wmissing-noreturn -Wbad-function-cast \
	-Wmissing-prototypes -Winline -Wredundant-decls -O3 -march=native

all: pdfcrack

pdfcrack: main.o rc4.o md5.o pdfcrack.o pdfparser.o passwords.o common.o \
	benchmark.o
	gcc ${LIBS} $(CFLAGS) -o $@ $+
	strip $@

pdfreader: pdfparser.o pdfreader.o common.o
	gcc ${LIBS} $(CFLAGS) -o $@ $+
	strip $@

clean:
	rm -f pdfcrack pdfcrack.exe pdfreader testreader *.o

%.o: %.c
	gcc ${LIBS} $(CFLAGS) -c -o $@ $+
