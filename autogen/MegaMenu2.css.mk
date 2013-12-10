# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifdef MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = $(shell urweb -print-cinclude)
.PHONY: all
all: ./MegaMenu2.css.urp
./MegaMenu2.css.urp: ./MegaMenu2_css.ur ./MegaMenu2_css.urs ./MegaMenu2_css_c.h ./MegaMenu2_css_c.o
	touch ./MegaMenu2.css.urp
./MegaMenu2_css_c.o: ./MegaMenu2_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c -I $(URINCL) -o ./MegaMenu2_css_c.o ./MegaMenu2_css_c.c
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
.PHONY: ./MegaMenu2.css.urp
./MegaMenu2.css.urp: .fix-multy1
.PHONY: ./MegaMenu2_css_c.o
./MegaMenu2_css_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./MegaMenu2.css.mk MAIN=1 $(MAKECMDGOALS)

endif