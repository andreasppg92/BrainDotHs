CC=ghc
CFLAGS=-package GLUT
EXE=main

all: $(EXE)

main: main.hs
	$(CC) $(CFLAGS) $^ -o $@

clean:
	find . -name "*.o"  -print0 | xargs -0 rm -f
	find . -name "*.hi" -print0 | xargs -0 rm -f
	rm -f $(EXE)

.SILENT: clean
