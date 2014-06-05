# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifeq ($(MAIN),1)
unexport MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = -I$(shell urweb -print-cinclude) 
.PHONY: all
all: ./glyphicons-halflings-regular.ttf.mk ./glyphicons-halflings-regular.ttf.urp
./glyphicons-halflings-regular.ttf.urp: ./Glyphicons_halflings_regular_ttf.ur ./Glyphicons_halflings_regular_ttf.urs ./Glyphicons_halflings_regular_ttf_c.h ./Glyphicons_halflings_regular_ttf_c.o ./glyphicons-halflings-regular.ttf.mk .cake3/tmp0
	cat .cake3/tmp0 > ./glyphicons-halflings-regular.ttf.urp
.cake3/tmp0: ./glyphicons-halflings-regular.ttf.mk
	-rm -rf .cake3/tmp0
	echo 'include ./Glyphicons_halflings_regular_ttf_c.h' >> .cake3/tmp0
	echo 'link ./Glyphicons_halflings_regular_ttf_c.o' >> .cake3/tmp0
	echo 'ffi ./Glyphicons_halflings_regular_ttf_c' >> .cake3/tmp0
	echo 'ffi ./Glyphicons_halflings_regular_ttf_js' >> .cake3/tmp0
	echo 'safeGet Glyphicons_halflings_regular_ttf/blobpage' >> .cake3/tmp0
	echo 'safeGet Glyphicons_halflings_regular_ttf/blob' >> .cake3/tmp0
	echo '' >> .cake3/tmp0
	echo './Glyphicons_halflings_regular_ttf' >> .cake3/tmp0
./Glyphicons_halflings_regular_ttf_c.o: ./Glyphicons_halflings_regular_ttf_c.c ./glyphicons-halflings-regular.ttf.mk $(call GUARD,URCC) $(call GUARD,URINCL) $(call GUARD,UR_CFLAGS)
	$(URCC) -c $(URINCL) $(UR_CFLAGS)  -o ./Glyphicons_halflings_regular_ttf_c.o ./Glyphicons_halflings_regular_ttf_c.c
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
.PHONY: ./glyphicons-halflings-regular.ttf.urp
./glyphicons-halflings-regular.ttf.urp: .fix-multy1
.PHONY: .cake3/tmp0
.cake3/tmp0: .fix-multy1
.PHONY: ./Glyphicons_halflings_regular_ttf_c.o
./Glyphicons_halflings_regular_ttf_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./glyphicons-halflings-regular.ttf.mk $(MAKECMDGOALS)

endif
.PHONY: clean
clean: 
	-rm ./Glyphicons_halflings_regular_ttf_c.o ./glyphicons-halflings-regular.ttf.urp .cake3/tmp0
	-rm -rf .cake3

endif
