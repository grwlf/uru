# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifdef MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = $(shell urweb -print-cinclude)
.PHONY: all
all: ./walle.jpg.urp
./Walle_jpg_c.o: ./Walle_jpg_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c -I $(URINCL) -o ./Walle_jpg_c.o ./Walle_jpg_c.c
./walle.jpg.urp: ./Walle_jpg.ur ./Walle_jpg.urs ./Walle_jpg_c.h ./Walle_jpg_c.o
	touch ./walle.jpg.urp
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
.PHONY: ./Walle_jpg_c.o
./Walle_jpg_c.o: .fix-multy1
.PHONY: ./walle.jpg.urp
./walle.jpg.urp: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./walle.jpg.mk MAIN=1 $(MAKECMDGOALS)

endif