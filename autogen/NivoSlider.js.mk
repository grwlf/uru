# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifdef MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = $(shell urweb -print-cinclude)
.PHONY: all
all: ./NivoSlider.js.urp
./NivoSlider.js.urp: ./NivoSlider_js.ur ./NivoSlider_js.urs ./NivoSlider_js_c.h ./NivoSlider_js_c.o
	touch ./NivoSlider.js.urp
./NivoSlider_js_c.o: ./NivoSlider_js_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c -I $(URINCL) -o ./NivoSlider_js_c.o ./NivoSlider_js_c.c
$(call GUARD,URCC):
	rm -f .cake3/GUARD_URCC_*
	touch $@
$(call GUARD,URINCL):
	rm -f .cake3/GUARD_URINCL_*
	touch $@

else

# Prebuild/postbuild section

.PHONY: all
all: .fix-multy1
.PHONY: ./NivoSlider.js.urp
./NivoSlider.js.urp: .fix-multy1
.PHONY: ./NivoSlider_js_c.o
./NivoSlider_js_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./NivoSlider.js.mk MAIN=1 $(MAKECMDGOALS)

endif
