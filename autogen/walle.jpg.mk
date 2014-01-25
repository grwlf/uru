# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifeq ($(MAIN),1)
unexport MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = -I$(shell urweb -print-cinclude) 
.PHONY: all
all: ./walle.jpg.urp
./walle.jpg.urp: ./walle.jpg.urp.in
	cat ./walle.jpg.urp.in > ./walle.jpg.urp
./walle.jpg.urp.in: ./Walle_jpg.ur ./Walle_jpg.urs ./Walle_jpg_c.h ./Walle_jpg_c.o
	touch ./walle.jpg.urp.in
./Walle_jpg_c.o: ./Walle_jpg_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c $(URINCL)  -o ./Walle_jpg_c.o ./Walle_jpg_c.c
$(call GUARD,URCC):
	rm -f .cake3/GUARD_URCC_*
	touch $@
$(call GUARD,URINCL):
	rm -f .cake3/GUARD_URINCL_*
	touch $@

else

# Prebuild/postbuild section

export MAIN=1

.PHONY: all
all: .fix-multy1
.PHONY: ./walle.jpg.urp
./walle.jpg.urp: .fix-multy1
.PHONY: ./walle.jpg.urp.in
./walle.jpg.urp.in: .fix-multy1
.PHONY: ./Walle_jpg_c.o
./Walle_jpg_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./walle.jpg.mk $(MAKECMDGOALS)

endif
