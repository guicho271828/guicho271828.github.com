
export LANG       = en_US.utf8
export EMACS      = emacs
export EMACSFLAGS =

.PHONY: auto all img scripts clean allclean html index css
.SECONDLY: *.elc *.org.*

%.html: %.org head.org scripts
	scripts/org-html.sh $< $@

all: html
html: img css index.html

index: html
	cp -f presen.org.html index.html

scripts:
	$(MAKE) -C scripts

auto:
	scripts/make-cycle.sh all

img:
	$(MAKE) -C img
css:
	$(MAKE) -C css

clean:
	-rm *~ *.html *.elc

allclean: clean
	git clean -Xfd
	$(MAKE) -C scripts clean
	$(MAKE) -C img clean
	$(MAKE) -C css clean

