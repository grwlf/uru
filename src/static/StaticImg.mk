# This Makefile was generated by the ThirdCake
# https://github.com/grwlf/cake3

GUARD = .GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)
.PHONY: urp
urp: ./StaticImg.urp
./Banner_rtos_jpg_c.data.o: ./Banner_rtos_jpg_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Banner_rtos_jpg_c.data.o ./Banner_rtos_jpg_c_blob
./Banner_rtos_jpg_c.o: ./Banner_rtos_jpg_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Banner_rtos_jpg_c.o ./Banner_rtos_jpg_c.c
./Banner_simone_jpg_c.data.o: ./Banner_simone_jpg_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Banner_simone_jpg_c.data.o ./Banner_simone_jpg_c_blob
./Banner_simone_jpg_c.o: ./Banner_simone_jpg_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Banner_simone_jpg_c.o ./Banner_simone_jpg_c.c
./Banner_topor_jpg_c.data.o: ./Banner_topor_jpg_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Banner_topor_jpg_c.data.o ./Banner_topor_jpg_c_blob
./Banner_topor_jpg_c.o: ./Banner_topor_jpg_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Banner_topor_jpg_c.o ./Banner_topor_jpg_c.c
./Bluegreen_jpg_c.data.o: ./Bluegreen_jpg_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Bluegreen_jpg_c.data.o ./Bluegreen_jpg_c_blob
./Bluegreen_jpg_c.o: ./Bluegreen_jpg_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Bluegreen_jpg_c.o ./Bluegreen_jpg_c.c
./Flex_png_c.data.o: ./Flex_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Flex_png_c.data.o ./Flex_png_c_blob
./Flex_png_c.o: ./Flex_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Flex_png_c.o ./Flex_png_c.c
./Logo_gif_c.data.o: ./Logo_gif_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Logo_gif_c.data.o ./Logo_gif_c_blob
./Logo_gif_c.o: ./Logo_gif_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Logo_gif_c.o ./Logo_gif_c.c
./Logo_rtos_png_c.data.o: ./Logo_rtos_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Logo_rtos_png_c.data.o ./Logo_rtos_png_c_blob
./Logo_rtos_png_c.o: ./Logo_rtos_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Logo_rtos_png_c.o ./Logo_rtos_png_c.c
./Logo_simone_png_c.data.o: ./Logo_simone_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Logo_simone_png_c.data.o ./Logo_simone_png_c_blob
./Logo_simone_png_c.o: ./Logo_simone_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Logo_simone_png_c.o ./Logo_simone_png_c.c
./Logo_topor_png_c.data.o: ./Logo_topor_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Logo_topor_png_c.data.o ./Logo_topor_png_c_blob
./Logo_topor_png_c.o: ./Logo_topor_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Logo_topor_png_c.o ./Logo_topor_png_c.c
./Nemo_jpg_c.data.o: ./Nemo_jpg_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Nemo_jpg_c.data.o ./Nemo_jpg_c_blob
./Nemo_jpg_c.o: ./Nemo_jpg_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Nemo_jpg_c.o ./Nemo_jpg_c.c
./Nivo_arrows_png_c.data.o: ./Nivo_arrows_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Nivo_arrows_png_c.data.o ./Nivo_arrows_png_c_blob
./Nivo_arrows_png_c.o: ./Nivo_arrows_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Nivo_arrows_png_c.o ./Nivo_arrows_png_c.c
./Nivo_bullets_png_c.data.o: ./Nivo_bullets_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Nivo_bullets_png_c.data.o ./Nivo_bullets_png_c_blob
./Nivo_bullets_png_c.o: ./Nivo_bullets_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Nivo_bullets_png_c.o ./Nivo_bullets_png_c.c
./Nivo_loading_gif_c.data.o: ./Nivo_loading_gif_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Nivo_loading_gif_c.data.o ./Nivo_loading_gif_c_blob
./Nivo_loading_gif_c.o: ./Nivo_loading_gif_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Nivo_loading_gif_c.o ./Nivo_loading_gif_c.c
./Pencil_drawing_png_c.data.o: ./Pencil_drawing_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Pencil_drawing_png_c.data.o ./Pencil_drawing_png_c_blob
./Pencil_drawing_png_c.o: ./Pencil_drawing_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Pencil_drawing_png_c.o ./Pencil_drawing_png_c.c
./Pnp_png_c.data.o: ./Pnp_png_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Pnp_png_c.data.o ./Pnp_png_c_blob
./Pnp_png_c.o: ./Pnp_png_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Pnp_png_c.o ./Pnp_png_c.c
./StaticImg.urp: ./StaticImg.urp.in
	cp ./StaticImg.urp.in ./StaticImg.urp
	echo ./StaticImg.urp
./StaticImg.urp.in: ./Banner_rtos_jpg.ur ./Banner_rtos_jpg.urp ./Banner_rtos_jpg.urs ./Banner_rtos_jpg_c.data.o ./Banner_rtos_jpg_c.h ./Banner_rtos_jpg_c.o ./Banner_rtos_jpg_c.urp ./Banner_rtos_jpg_c.urs ./Banner_rtos_jpg_js.urp ./Banner_rtos_jpg_js.urs ./Banner_simone_jpg.ur ./Banner_simone_jpg.urp ./Banner_simone_jpg.urs ./Banner_simone_jpg_c.data.o ./Banner_simone_jpg_c.h ./Banner_simone_jpg_c.o ./Banner_simone_jpg_c.urp ./Banner_simone_jpg_c.urs ./Banner_simone_jpg_js.urp ./Banner_simone_jpg_js.urs ./Banner_topor_jpg.ur ./Banner_topor_jpg.urp ./Banner_topor_jpg.urs ./Banner_topor_jpg_c.data.o ./Banner_topor_jpg_c.h ./Banner_topor_jpg_c.o ./Banner_topor_jpg_c.urp ./Banner_topor_jpg_c.urs ./Banner_topor_jpg_js.urp ./Banner_topor_jpg_js.urs ./Bluegreen_jpg.ur ./Bluegreen_jpg.urp ./Bluegreen_jpg.urs ./Bluegreen_jpg_c.data.o ./Bluegreen_jpg_c.h ./Bluegreen_jpg_c.o ./Bluegreen_jpg_c.urp ./Bluegreen_jpg_c.urs ./Bluegreen_jpg_js.urp ./Bluegreen_jpg_js.urs ./Flex_png.ur ./Flex_png.urp ./Flex_png.urs ./Flex_png_c.data.o ./Flex_png_c.h ./Flex_png_c.o ./Flex_png_c.urp ./Flex_png_c.urs ./Flex_png_js.urp ./Flex_png_js.urs ./Logo_gif.ur ./Logo_gif.urp ./Logo_gif.urs ./Logo_gif_c.data.o ./Logo_gif_c.h ./Logo_gif_c.o ./Logo_gif_c.urp ./Logo_gif_c.urs ./Logo_gif_js.urp ./Logo_gif_js.urs ./Logo_rtos_png.ur ./Logo_rtos_png.urp ./Logo_rtos_png.urs ./Logo_rtos_png_c.data.o ./Logo_rtos_png_c.h ./Logo_rtos_png_c.o ./Logo_rtos_png_c.urp ./Logo_rtos_png_c.urs ./Logo_rtos_png_js.urp ./Logo_rtos_png_js.urs ./Logo_simone_png.ur ./Logo_simone_png.urp ./Logo_simone_png.urs ./Logo_simone_png_c.data.o ./Logo_simone_png_c.h ./Logo_simone_png_c.o ./Logo_simone_png_c.urp ./Logo_simone_png_c.urs ./Logo_simone_png_js.urp ./Logo_simone_png_js.urs ./Logo_topor_png.ur ./Logo_topor_png.urp ./Logo_topor_png.urs ./Logo_topor_png_c.data.o ./Logo_topor_png_c.h ./Logo_topor_png_c.o ./Logo_topor_png_c.urp ./Logo_topor_png_c.urs ./Logo_topor_png_js.urp ./Logo_topor_png_js.urs ./Nemo_jpg.ur ./Nemo_jpg.urp ./Nemo_jpg.urs ./Nemo_jpg_c.data.o ./Nemo_jpg_c.h ./Nemo_jpg_c.o ./Nemo_jpg_c.urp ./Nemo_jpg_c.urs ./Nemo_jpg_js.urp ./Nemo_jpg_js.urs ./Nivo_arrows_png.ur ./Nivo_arrows_png.urp ./Nivo_arrows_png.urs ./Nivo_arrows_png_c.data.o ./Nivo_arrows_png_c.h ./Nivo_arrows_png_c.o ./Nivo_arrows_png_c.urp ./Nivo_arrows_png_c.urs ./Nivo_arrows_png_js.urp ./Nivo_arrows_png_js.urs ./Nivo_bullets_png.ur ./Nivo_bullets_png.urp ./Nivo_bullets_png.urs ./Nivo_bullets_png_c.data.o ./Nivo_bullets_png_c.h ./Nivo_bullets_png_c.o ./Nivo_bullets_png_c.urp ./Nivo_bullets_png_c.urs ./Nivo_bullets_png_js.urp ./Nivo_bullets_png_js.urs ./Nivo_loading_gif.ur ./Nivo_loading_gif.urp ./Nivo_loading_gif.urs ./Nivo_loading_gif_c.data.o ./Nivo_loading_gif_c.h ./Nivo_loading_gif_c.o ./Nivo_loading_gif_c.urp ./Nivo_loading_gif_c.urs ./Nivo_loading_gif_js.urp ./Nivo_loading_gif_js.urs ./Pencil_drawing_png.ur ./Pencil_drawing_png.urp ./Pencil_drawing_png.urs ./Pencil_drawing_png_c.data.o ./Pencil_drawing_png_c.h ./Pencil_drawing_png_c.o ./Pencil_drawing_png_c.urp ./Pencil_drawing_png_c.urs ./Pencil_drawing_png_js.urp ./Pencil_drawing_png_js.urs ./Pnp_png.ur ./Pnp_png.urp ./Pnp_png.urs ./Pnp_png_c.data.o ./Pnp_png_c.h ./Pnp_png_c.o ./Pnp_png_c.urp ./Pnp_png_c.urs ./Pnp_png_js.urp ./Pnp_png_js.urs ./StaticImg.ur ./StaticImg.urs ./Walle_jpg.ur ./Walle_jpg.urp ./Walle_jpg.urs ./Walle_jpg_c.data.o ./Walle_jpg_c.h ./Walle_jpg_c.o ./Walle_jpg_c.urp ./Walle_jpg_c.urs ./Walle_jpg_js.urp ./Walle_jpg_js.urs ./Whytopor1_gif.ur ./Whytopor1_gif.urp ./Whytopor1_gif.urs ./Whytopor1_gif_c.data.o ./Whytopor1_gif_c.h ./Whytopor1_gif_c.o ./Whytopor1_gif_c.urp ./Whytopor1_gif_c.urs ./Whytopor1_gif_js.urp ./Whytopor1_gif_js.urs ./Whytopor2_gif.ur ./Whytopor2_gif.urp ./Whytopor2_gif.urs ./Whytopor2_gif_c.data.o ./Whytopor2_gif_c.h ./Whytopor2_gif_c.o ./Whytopor2_gif_c.urp ./Whytopor2_gif_c.urs ./Whytopor2_gif_js.urp ./Whytopor2_gif_js.urs ./Whytopor3_gif.ur ./Whytopor3_gif.urp ./Whytopor3_gif.urs ./Whytopor3_gif_c.data.o ./Whytopor3_gif_c.h ./Whytopor3_gif_c.o ./Whytopor3_gif_c.urp ./Whytopor3_gif_c.urs ./Whytopor3_gif_js.urp ./Whytopor3_gif_js.urs ./Whytopor4_gif.ur ./Whytopor4_gif.urp ./Whytopor4_gif.urs ./Whytopor4_gif_c.data.o ./Whytopor4_gif_c.h ./Whytopor4_gif_c.o ./Whytopor4_gif_c.urp ./Whytopor4_gif_c.urs ./Whytopor4_gif_js.urp ./Whytopor4_gif_js.urs
./Walle_jpg_c.data.o: ./Walle_jpg_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Walle_jpg_c.data.o ./Walle_jpg_c_blob
./Walle_jpg_c.o: ./Walle_jpg_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Walle_jpg_c.o ./Walle_jpg_c.c
./Whytopor1_gif_c.data.o: ./Whytopor1_gif_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Whytopor1_gif_c.data.o ./Whytopor1_gif_c_blob
./Whytopor1_gif_c.o: ./Whytopor1_gif_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Whytopor1_gif_c.o ./Whytopor1_gif_c.c
./Whytopor2_gif_c.data.o: ./Whytopor2_gif_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Whytopor2_gif_c.data.o ./Whytopor2_gif_c_blob
./Whytopor2_gif_c.o: ./Whytopor2_gif_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Whytopor2_gif_c.o ./Whytopor2_gif_c.c
./Whytopor3_gif_c.data.o: ./Whytopor3_gif_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Whytopor3_gif_c.data.o ./Whytopor3_gif_c_blob
./Whytopor3_gif_c.o: ./Whytopor3_gif_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Whytopor3_gif_c.o ./Whytopor3_gif_c.c
./Whytopor4_gif_c.data.o: ./Whytopor4_gif_c_blob $(call GUARD,LD)
	$(LD) -r -b binary -o ./Whytopor4_gif_c.data.o ./Whytopor4_gif_c_blob
./Whytopor4_gif_c.o: ./Whytopor4_gif_c.c $(call GUARD,CC) $(call GUARD,UR_INCLUDE_DIR)
	$(CC) -c -I $(UR_INCLUDE_DIR) -o ./Whytopor4_gif_c.o ./Whytopor4_gif_c.c
$(call GUARD,CC):
	rm -f .GUARD_CC_*
	touch $@
$(call GUARD,LD):
	rm -f .GUARD_LD_*
	touch $@
$(call GUARD,UR_INCLUDE_DIR):
	rm -f .GUARD_UR_INCLUDE_DIR_*
	touch $@
