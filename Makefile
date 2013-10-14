# This Makefile was generated by the ThirdCake
# https://github.com/grwlf/cake3

GUARD = .GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)
CC = $(shell $(URCC) -print-prog-name=gcc)
LD = $(shell $(URCC) -print-prog-name=ld)
URCC = $(shell urweb -print-ccompiler)
URFLAGS = 
URINCL = $(shell dirname `which urweb`)/../include/urweb
.PHONY: all
all: ./AppMM.exe Makefile
	ls -lh ./AppMM.exe
.PHONY: run
run: ./AppMM.exe Makefile
	 ./AppMM.exe
.PHONY: sql
sql: ./App.db Makefile
	sqlite3 ./App.db
Makefile: ./AppMM.urp ./Cakegen
	./Cakegen > Makefile
./App.db ./App.sql ./AppMM.exe: stamp1
.INTERMEDIATE: stamp1
stamp1: ./AppMM.ur ./AppMM.urp ./AppMM.urs ./Columns.ur ./Columns.urs ./src/Template.ur ./src/Template.urs ./src/static/EremexImg.urp ./src/static/PulsonixImg.urp ./src/static/StaticCSS.urp ./src/static/StaticImg.urp ./src/static/StaticJS.urp ./src/ui/CSS.ur ./src/ui/CSS.urs ./src/ui/FullWidth/FullWidth.ur ./src/ui/FullWidth/FullWidth.urs ./src/ui/MegaMenu2/MegaMenu2.ur ./src/ui/MegaMenu2/MegaMenu2.urs ./src/ui/NivoSlider/NivoSlider.ur ./src/ui/NivoSlider/NivoSlider.urs ./src/ui/Page.ur ./src/ui/Page.urs ./src/ui/PikaChoose/PikaChoose.ur ./src/ui/PikaChoose/PikaChoose.urs ./src/ui/RespTabs/RespTabs.ur ./src/ui/RespTabs/RespTabs.urs ./src/ui/TinyMCE/TinyMCE.ur ./src/ui/TinyMCE/TinyMCE.urs Makefile $(call GUARD,URFLAGS)
	urweb -dbms sqlite $(URFLAGS) AppMM
	-rm -rf ./App.db
	sqlite3 ./App.db < ./App.sql
./src/static/EremexImg.mk: ./img/eremex/banner/banner_rtos.jpg ./img/eremex/banner/banner_simone.jpg ./img/eremex/banner/banner_topor.jpg ./img/eremex/flag_jp.gif ./img/eremex/flag_ru.gif ./img/eremex/flag_uk.gif ./img/eremex/fxrtos/logo_rtos.png ./img/eremex/logo.gif ./img/eremex/logo/logo_simone.png ./img/eremex/logo/logo_topor.png ./img/eremex/topor/whytopor1.gif ./img/eremex/topor/whytopor2.gif ./img/eremex/topor/whytopor3.gif ./img/eremex/topor/whytopor4.gif Makefile
	mkdir -pv ./src/static
	urembed -o ./src/static/EremexImg.urp ./img/eremex/logo.gif ./img/eremex/flag_uk.gif ./img/eremex/flag_ru.gif ./img/eremex/flag_jp.gif ./img/eremex/topor/whytopor2.gif ./img/eremex/topor/whytopor4.gif ./img/eremex/topor/whytopor1.gif ./img/eremex/topor/whytopor3.gif ./img/eremex/fxrtos/logo_rtos.png ./img/eremex/banner/banner_topor.jpg ./img/eremex/banner/banner_simone.jpg ./img/eremex/banner/banner_rtos.jpg ./img/eremex/logo/logo_simone.png ./img/eremex/logo/logo_topor.png
./src/static/EremexImg.urp: ./src/static/EremexImg.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f EremexImg.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
./src/static/PulsonixImg.mk: ./img/pulsonix/bluegreen.jpg ./img/pulsonix/flex.png ./img/pulsonix/pencil-drawing.png ./img/pulsonix/pnp.png Makefile
	mkdir -pv ./src/static
	urembed -o ./src/static/PulsonixImg.urp ./img/pulsonix/pnp.png ./img/pulsonix/flex.png ./img/pulsonix/pencil-drawing.png ./img/pulsonix/bluegreen.jpg
./src/static/PulsonixImg.urp: ./src/static/PulsonixImg.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f PulsonixImg.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
./src/static/StaticCSS.mk: ././AppMM.css ././src/thirdparty/jquery-ui.css ././src/ui/MegaMenu2/MegaMenu2.css ././src/ui/MenuUI/menu_jq.css ././src/ui/NivoSlider/nivo-default.css ././src/ui/NivoSlider/nivo-slider.css ././src/ui/PikaChoose/PikaChoose.css ././src/ui/RespTabs/easy-responsive-tabs.css Makefile
	mkdir -pv ./src/static
	urembed -o ./src/static/StaticCSS.urp ././AppMM.css ././src/thirdparty/jquery-ui.css ././src/ui/PikaChoose/PikaChoose.css ././src/ui/NivoSlider/nivo-default.css ././src/ui/NivoSlider/nivo-slider.css ././src/ui/MegaMenu2/MegaMenu2.css ././src/ui/RespTabs/easy-responsive-tabs.css ././src/ui/MenuUI/menu_jq.css
./src/static/StaticCSS.urp: ./src/static/StaticCSS.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f StaticCSS.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
./src/static/StaticImg.mk: ././img/eremex/banner/banner_rtos.jpg ././img/eremex/banner/banner_simone.jpg ././img/eremex/banner/banner_topor.jpg ././img/eremex/flag_jp.gif ././img/eremex/flag_ru.gif ././img/eremex/flag_uk.gif ././img/eremex/fxrtos/logo_rtos.png ././img/eremex/logo.gif ././img/eremex/logo/logo_simone.png ././img/eremex/logo/logo_topor.png ././img/eremex/topor/whytopor1.gif ././img/eremex/topor/whytopor2.gif ././img/eremex/topor/whytopor3.gif ././img/eremex/topor/whytopor4.gif ././img/nemo.jpg ././img/pulsonix/bluegreen.jpg ././img/pulsonix/flex.png ././img/pulsonix/pencil-drawing.png ././img/pulsonix/pnp.png ././img/walle.jpg ././src/ui/NivoSlider/nivo-arrows.png ././src/ui/NivoSlider/nivo-bullets.png ././src/ui/NivoSlider/nivo-loading.gif Makefile
	mkdir -pv ./src/static
	urembed -o ./src/static/StaticImg.urp ././img/walle.jpg ././img/nemo.jpg ././img/pulsonix/pnp.png ././img/pulsonix/flex.png ././img/pulsonix/pencil-drawing.png ././img/pulsonix/bluegreen.jpg ././img/eremex/logo.gif ././img/eremex/flag_uk.gif ././img/eremex/flag_ru.gif ././img/eremex/flag_jp.gif ././img/eremex/topor/whytopor2.gif ././img/eremex/topor/whytopor4.gif ././img/eremex/topor/whytopor1.gif ././img/eremex/topor/whytopor3.gif ././img/eremex/fxrtos/logo_rtos.png ././img/eremex/banner/banner_topor.jpg ././img/eremex/banner/banner_simone.jpg ././img/eremex/banner/banner_rtos.jpg ././img/eremex/logo/logo_simone.png ././img/eremex/logo/logo_topor.png ././src/ui/NivoSlider/nivo-loading.gif ././src/ui/NivoSlider/nivo-bullets.png ././src/ui/NivoSlider/nivo-arrows.png
./src/static/StaticImg.urp: ./src/static/StaticImg.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f StaticImg.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
./src/static/StaticJS.mk: ././src/thirdparty/jquery-1.9.1.js ././src/thirdparty/jquery-ui.js ././src/ui/MegaMenu2/MegaMenu2.js ././src/ui/MegaMenu2/jquery.megamenu.js ././src/ui/MenuUI/menu_jq.js ././src/ui/NivoSlider/NivoSlider.js ././src/ui/NivoSlider/jquery.nivo.slider.pack.js ././src/ui/PikaChoose/PikaChoose.js ././src/ui/PikaChoose/jquery.jcarousel.min.js ././src/ui/PikaChoose/jquery.pikachoose.min.js ././src/ui/RespTabs/RespTabs.js ././src/ui/RespTabs/easyResponsiveTabs.js ././src/ui/TinyMCE/TinyMCE.js Makefile
	mkdir -pv ./src/static
	urembed -o ./src/static/StaticJS.urp ././src/thirdparty/jquery-1.9.1.js ././src/thirdparty/jquery-ui.js ././src/ui/PikaChoose/PikaChoose.js ././src/ui/PikaChoose/jquery.pikachoose.min.js ././src/ui/PikaChoose/jquery.jcarousel.min.js ././src/ui/NivoSlider/jquery.nivo.slider.pack.js ././src/ui/NivoSlider/NivoSlider.js ././src/ui/MegaMenu2/jquery.megamenu.js ././src/ui/MegaMenu2/MegaMenu2.js ././src/ui/TinyMCE/TinyMCE.js ././src/ui/RespTabs/RespTabs.js ././src/ui/RespTabs/easyResponsiveTabs.js ././src/ui/MenuUI/menu_jq.js
./src/static/StaticJS.urp: ./src/static/StaticJS.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f StaticJS.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
$(call GUARD,CC):
	rm -f .GUARD_CC_*
	touch $@
$(call GUARD,LD):
	rm -f .GUARD_LD_*
	touch $@
$(call GUARD,MAKE):
	rm -f .GUARD_MAKE_*
	touch $@
$(call GUARD,URCC):
	rm -f .GUARD_URCC_*
	touch $@
$(call GUARD,URFLAGS):
	rm -f .GUARD_URFLAGS_*
	touch $@
$(call GUARD,URINCL):
	rm -f .GUARD_URINCL_*
	touch $@

