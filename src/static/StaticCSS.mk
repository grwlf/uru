# This Makefile was generated by the ThirdCake
# https://github.com/grwlf/cake3

GUARD = .GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)
.PHONY: urp
urp: ./StaticCSS.urp
./AppMM_css_c.data.o: ./AppMM_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./AppMM_css_c.data.o ./AppMM_css_c_blob
./AppMM_css_c.o: ./AppMM_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./AppMM_css_c.o ./AppMM_css_c.c
./Easy_responsive_tabs_css_c.data.o: ./Easy_responsive_tabs_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Easy_responsive_tabs_css_c.data.o ./Easy_responsive_tabs_css_c_blob
./Easy_responsive_tabs_css_c.o: ./Easy_responsive_tabs_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Easy_responsive_tabs_css_c.o ./Easy_responsive_tabs_css_c.c
./Jquery_ui_css_c.data.o: ./Jquery_ui_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Jquery_ui_css_c.data.o ./Jquery_ui_css_c_blob
./Jquery_ui_css_c.o: ./Jquery_ui_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Jquery_ui_css_c.o ./Jquery_ui_css_c.c
./MegaMenu2_css_c.data.o: ./MegaMenu2_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./MegaMenu2_css_c.data.o ./MegaMenu2_css_c_blob
./MegaMenu2_css_c.o: ./MegaMenu2_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./MegaMenu2_css_c.o ./MegaMenu2_css_c.c
./Menu_jq_css_c.data.o: ./Menu_jq_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Menu_jq_css_c.data.o ./Menu_jq_css_c_blob
./Menu_jq_css_c.o: ./Menu_jq_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Menu_jq_css_c.o ./Menu_jq_css_c.c
./Nivo_default_css_c.data.o: ./Nivo_default_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Nivo_default_css_c.data.o ./Nivo_default_css_c_blob
./Nivo_default_css_c.o: ./Nivo_default_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Nivo_default_css_c.o ./Nivo_default_css_c.c
./Nivo_slider_css_c.data.o: ./Nivo_slider_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Nivo_slider_css_c.data.o ./Nivo_slider_css_c_blob
./Nivo_slider_css_c.o: ./Nivo_slider_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Nivo_slider_css_c.o ./Nivo_slider_css_c.c
./PikaChoose_css_c.data.o: ./PikaChoose_css_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./PikaChoose_css_c.data.o ./PikaChoose_css_c_blob
./PikaChoose_css_c.o: ./PikaChoose_css_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./PikaChoose_css_c.o ./PikaChoose_css_c.c
./StaticCSS.urp: ./StaticCSS.urp.in
	cp ./StaticCSS.urp.in ./StaticCSS.urp
	echo ./StaticCSS.urp
./StaticCSS.urp.in: ./AppMM_css.ur ./AppMM_css.urp ./AppMM_css.urs ./AppMM_css_c.data.o ./AppMM_css_c.h ./AppMM_css_c.o ./AppMM_css_c.urp ./AppMM_css_c.urs ./AppMM_css_js.urp ./AppMM_css_js.urs ./Easy_responsive_tabs_css.ur ./Easy_responsive_tabs_css.urp ./Easy_responsive_tabs_css.urs ./Easy_responsive_tabs_css_c.data.o ./Easy_responsive_tabs_css_c.h ./Easy_responsive_tabs_css_c.o ./Easy_responsive_tabs_css_c.urp ./Easy_responsive_tabs_css_c.urs ./Easy_responsive_tabs_css_js.urp ./Easy_responsive_tabs_css_js.urs ./Jquery_ui_css.ur ./Jquery_ui_css.urp ./Jquery_ui_css.urs ./Jquery_ui_css_c.data.o ./Jquery_ui_css_c.h ./Jquery_ui_css_c.o ./Jquery_ui_css_c.urp ./Jquery_ui_css_c.urs ./Jquery_ui_css_js.urp ./Jquery_ui_css_js.urs ./MegaMenu2_css.ur ./MegaMenu2_css.urp ./MegaMenu2_css.urs ./MegaMenu2_css_c.data.o ./MegaMenu2_css_c.h ./MegaMenu2_css_c.o ./MegaMenu2_css_c.urp ./MegaMenu2_css_c.urs ./MegaMenu2_css_js.urp ./MegaMenu2_css_js.urs ./Menu_jq_css.ur ./Menu_jq_css.urp ./Menu_jq_css.urs ./Menu_jq_css_c.data.o ./Menu_jq_css_c.h ./Menu_jq_css_c.o ./Menu_jq_css_c.urp ./Menu_jq_css_c.urs ./Menu_jq_css_js.urp ./Menu_jq_css_js.urs ./Nivo_default_css.ur ./Nivo_default_css.urp ./Nivo_default_css.urs ./Nivo_default_css_c.data.o ./Nivo_default_css_c.h ./Nivo_default_css_c.o ./Nivo_default_css_c.urp ./Nivo_default_css_c.urs ./Nivo_default_css_js.urp ./Nivo_default_css_js.urs ./Nivo_slider_css.ur ./Nivo_slider_css.urp ./Nivo_slider_css.urs ./Nivo_slider_css_c.data.o ./Nivo_slider_css_c.h ./Nivo_slider_css_c.o ./Nivo_slider_css_c.urp ./Nivo_slider_css_c.urs ./Nivo_slider_css_js.urp ./Nivo_slider_css_js.urs ./PikaChoose_css.ur ./PikaChoose_css.urp ./PikaChoose_css.urs ./PikaChoose_css_c.data.o ./PikaChoose_css_c.h ./PikaChoose_css_c.o ./PikaChoose_css_c.urp ./PikaChoose_css_c.urs ./PikaChoose_css_js.urp ./PikaChoose_css_js.urs ./StaticCSS.ur ./StaticCSS.urs
$(call GUARD,CC):
	rm -f .GUARD_CC_*
	touch $@
$(call GUARD,LD):
	rm -f .GUARD_LD_*
	touch $@
$(call GUARD,UR_INCLUDE_DIR):
	rm -f .GUARD_UR_INCLUDE_DIR_*
	touch $@
