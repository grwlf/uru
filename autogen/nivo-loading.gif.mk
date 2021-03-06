# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifdef MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = $(shell urweb -print-cinclude)
.PHONY: all
all: ./nivo-loading.gif.urp
./Nivo_loading_gif_c.o: ./Nivo_loading_gif_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c -I $(URINCL) -o ./Nivo_loading_gif_c.o ./Nivo_loading_gif_c.c
./nivo-loading.gif.urp: ./Nivo_loading_gif.ur ./Nivo_loading_gif.urs ./Nivo_loading_gif_c.h ./Nivo_loading_gif_c.o
	touch ./nivo-loading.gif.urp
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
.PHONY: ./Nivo_loading_gif_c.o
./Nivo_loading_gif_c.o: .fix-multy1
.PHONY: ./nivo-loading.gif.urp
./nivo-loading.gif.urp: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./nivo-loading.gif.mk MAIN=1 $(MAKECMDGOALS)

endif
