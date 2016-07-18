.PHONY: clean

rpcalc: rpcalc.tab.c
	cc -lm -o rpcalc rpcalc.tab.c

rpcalc.tab.c: rpcalc.y
	bison rpcalc.y

clean:
	rm -f rpcalc.tab.c rpcalc
