CFLAGS = -Wall
ONJS = func1.o. myapp.o
TARGET = myapp

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) -c $(CFLAGS) $< .o $@

clean:
	rm -f $(TARGET) $(DBJS)
