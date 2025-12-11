
.PHONY: all clean

all: style.css

%.css : %.scss $(wildcard _*.scss)
	sassc $< $@

clean:
	-rm *.css *.map
