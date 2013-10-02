# This Makefile was generated by the ThirdCake
# https://github.com/grwlf/cake3

GUARD = .GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)
CC = $(shell $(URCC) -print-prog-name=gcc)
LD = $(shell $(URCC) -print-prog-name=ld)
URCC = $(shell urweb -print-ccompiler)
URFLAGS = 
URINCL = $(HOME)/local/include/urweb
.PHONY: all
all: ./AppMM.exe Makefile
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
stamp1: ./AppMM.ur ./AppMM.urp ./AppMM.urs ./src/Page.ur ./src/Page.urs ./src/Xmllike.ur ./src/Xmllike.urs ./src/static/StaticCSS.urp ./src/static/StaticImg.urp ./src/static/StaticJS.urp ./src/ui/MegaMenu2/MegaMenu2.ur ./src/ui/MegaMenu2/MegaMenu2.urs Makefile $(call GUARD,URFLAGS)
	urweb -dbms sqlite $(URFLAGS) AppMM
	-rm -rf ./App.db
	sqlite3 ./App.db < ./App.sql
./src/static/StaticCSS.mk: AppMM.css Makefile src/thirdparty/jquery-ui.css src/ui/MegaMenu2/MegaMenu2.css src/ui/menu_jq/menu_jq.css
	mkdir -pv ./src/static
	urembed -o ./src/static/StaticCSS.urp AppMM.css src/thirdparty/jquery-ui.css src/ui/menu_jq/menu_jq.css src/ui/MegaMenu2/MegaMenu2.css
./src/static/StaticCSS.urp: ./src/static/StaticCSS.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f StaticCSS.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
./src/static/StaticImg.mk: Makefile img1.jpg img2.jpg img3.jpg img4.jpg img5.jpg
	mkdir -pv ./src/static
	urembed -o ./src/static/StaticImg.urp img1.jpg img5.jpg img3.jpg img4.jpg img2.jpg
./src/static/StaticImg.urp: ./src/static/StaticImg.mk Makefile $(call GUARD,CC) $(call GUARD,LD) $(call GUARD,MAKE) $(call GUARD,URCC) $(call GUARD,URINCL)
	$(MAKE) -C ./src/static -f StaticImg.mk CC=$(CC) LD=$(LD) UR_INCLUDE_DIR=$(URINCL) urp
./src/static/StaticJS.mk: Makefile src/Menu.js src/thirdparty/jquery-1.9.1.js src/thirdparty/jquery-ui.js src/ui/MegaMenu2/MegaMenu2.js src/ui/MegaMenu2/jquery.megamenu.js src/ui/PikaChoose/PikaChoose.js src/ui/PikaChoose/jquery.pikachoose.js src/ui/menu_jq/menu_jq.js
	mkdir -pv ./src/static
	urembed -o ./src/static/StaticJS.urp src/Menu.js src/thirdparty/jquery-1.9.1.js src/thirdparty/jquery-ui.js src/ui/menu_jq/menu_jq.js src/ui/PikaChoose/PikaChoose.js src/ui/PikaChoose/jquery.pikachoose.js src/ui/MegaMenu2/jquery.megamenu.js src/ui/MegaMenu2/MegaMenu2.js
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

