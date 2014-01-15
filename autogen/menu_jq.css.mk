# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifdef MAIN

# Main section

URCC = $(shell $(shell urweb -print-ccompiler) -print-prog-name=gcc)
URINCL = -I$(shell urweb -print-cinclude) 
.PHONY: all
all: ./menu_jq.css.urp
./menu_jq.css.urp: ./menu_jq.css.urp.in
	cat ./menu_jq.css.urp.in > ./menu_jq.css.urp
./menu_jq.css.urp.in: ./Menu_jq_css.ur ./Menu_jq_css.urs ./Menu_jq_css_c.h ./Menu_jq_css_c.o
	touch ./menu_jq.css.urp.in
./Menu_jq_css_c.o: ./Menu_jq_css_c.c $(call GUARD,URCC) $(call GUARD,URINCL)
	$(URCC) -c $(URINCL) -o  ./Menu_jq_css_c.o ./Menu_jq_css_c.c
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
.PHONY: ./menu_jq.css.urp
./menu_jq.css.urp: .fix-multy1
.PHONY: ./menu_jq.css.urp.in
./menu_jq.css.urp.in: .fix-multy1
.PHONY: ./Menu_jq_css_c.o
./Menu_jq_css_c.o: .fix-multy1
.INTERMEDIATE: .fix-multy1
.fix-multy1: 
	-mkdir .cake3
	$(MAKE) -f ./menu_jq.css.mk MAIN=1 $(MAKECMDGOALS)

endif
