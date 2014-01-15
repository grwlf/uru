# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifdef MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = -I$(shell urweb -print-cinclude) 
.PHONY: all
all: ./RespTabs.js.urp
./RespTabs.js.urp: ./RespTabs.js.urp.in
	cat ./RespTabs.js.urp.in > ./RespTabs.js.urp
./RespTabs.js.urp.in: ./RespTabs_js.ur ./RespTabs_js.urs ./RespTabs_js_c.h ./RespTabs_js_c.o
	touch ./RespTabs.js.urp.in
./RespTabs_js_c.o: ./RespTabs_js_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c $(URINCL) -o  ./RespTabs_js_c.o ./RespTabs_js_c.c
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
.PHONY: ./RespTabs.js.urp
./RespTabs.js.urp: .fix-multy1
.PHONY: ./RespTabs.js.urp.in
./RespTabs.js.urp.in: .fix-multy1
.PHONY: ./RespTabs_js_c.o
./RespTabs_js_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./RespTabs.js.mk MAIN=1 $(MAKECMDGOALS)

endif
