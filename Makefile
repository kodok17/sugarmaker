
CFLAGS= -O2 -Wall -g

PROG	= minerd

OBJS	= cpu-miner.o

LDFLAGS	= $(CFLAGS)

LIBS	= -lcurl -ljansson -lcrypto

all:	$(PROG)

.c.o:
	gcc $(CFLAGS) -c $< -o $@

clean:
	rm -f $(PROG) $(OBJS)

$(PROG):	$(OBJS)
	gcc $(LDFLAGS) -o $(PROG) $(OBJS) $(LIBS)
