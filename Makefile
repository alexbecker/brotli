br: $(addsuffix .br,$(COMPRESSIBLE))

%.br: %
	bro --force --input $< --output $@
