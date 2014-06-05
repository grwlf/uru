# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifeq ($(MAIN),1)
unexport MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = -I$(shell urweb -print-cinclude) 
.PHONY: all
all: ./walle.jpg.mk ./walle.jpg.urp
./walle.jpg.urp: ./Walle_jpg.ur ./Walle_jpg.urs ./Walle_jpg_c.h ./Walle_jpg_c.o ./walle.jpg.mk .cake3/tmp0
	cat .cake3/tmp0 > ./walle.jpg.urp
.cake3/tmp0: ./walle.jpg.mk
	-rm -rf .cake3/tmp0
	echo 'include ./Walle_jpg_c.h' >> .cake3/tmp0
	echo 'link ./Walle_jpg_c.o' >> .cake3/tmp0
	echo 'ffi ./Walle_jpg_c' >> .cake3/tmp0
	echo 'ffi ./Walle_jpg_js' >> .cake3/tmp0
	echo 'safeGet Walle_jpg/blobpage' >> .cake3/tmp0
	echo 'safeGet Walle_jpg/blob' >> .cake3/tmp0
	echo '' >> .cake3/tmp0
	echo './Walle_jpg' >> .cake3/tmp0
./Walle_jpg_c.o: ./Walle_jpg_c.c ./walle.jpg.mk $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o ./Walle_jpg_c.o ./Walle_jpg_c.c
$(call GUARD,URCC):
	rm -f .cake3/GUARD_URCC_*
	touch $@
$(call GUARD,URINCL):
	rm -f .cake3/GUARD_URINCL_*
	touch $@
$(call GUARD,UR_CFLAGS):
	rm -f .cake3/GUARD_UR_CFLAGS_*
	touch $@

else

# Prebuild/postbuild section

export MAIN=1

ifneq ($(MAKECMDGOALS),clean)

.PHONY: all
all: .fix-multy1
.PHONY: ./walle.jpg.urp
./walle.jpg.urp: .fix-multy1
.PHONY: .cake3/tmp0
.cake3/tmp0: .fix-multy1
.PHONY: ./Walle_jpg_c.o
./Walle_jpg_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./walle.jpg.mk $(MAKECMDGOALS)

endif
.PHONY: clean
clean: 
	-rm ./Walle_jpg_c.o ./walle.jpg.urp .cake3/tmp0
	-rm -rf .cake3

endif
