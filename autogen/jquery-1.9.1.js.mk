# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifeq ($(MAIN),1)
unexport MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = -I$(shell urweb -print-cinclude) 
.PHONY: all
all: ./jquery-1.9.1.js.urp
./jquery-1.9.1.js.urp: ./jquery-1.9.1.js.urp.in
	cat ./jquery-1.9.1.js.urp.in > ./jquery-1.9.1.js.urp
./jquery-1.9.1.js.urp.in: ./Jquery_1_9_1_js.ur ./Jquery_1_9_1_js.urs ./Jquery_1_9_1_js_c.h ./Jquery_1_9_1_js_c.o
	touch ./jquery-1.9.1.js.urp.in
./Jquery_1_9_1_js_c.o: ./Jquery_1_9_1_js_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c $(URINCL)  -o ./Jquery_1_9_1_js_c.o ./Jquery_1_9_1_js_c.c
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
.PHONY: ./jquery-1.9.1.js.urp
./jquery-1.9.1.js.urp: .fix-multy1
.PHONY: ./jquery-1.9.1.js.urp.in
./jquery-1.9.1.js.urp.in: .fix-multy1
.PHONY: ./Jquery_1_9_1_js_c.o
./Jquery_1_9_1_js_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./jquery-1.9.1.js.mk $(MAKECMDGOALS)

endif
