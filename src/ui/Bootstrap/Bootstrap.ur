(* Styles from http://hg.impredicative.com/bootstrap/raw-file/e2ddf4cb96cc/bootstrap.ur
 * Thanks, folks!
 *)

style container
style hero_unit
style table_
style table_striped
style table_bordered
style table_hover
style table_condensed
style well
style well_large
style well_small
style form_inline
style form_search
style form_horizontal
style control_group
style control_label
style row
style muted
style clearfix
style span1
style span2
style span3
style span4
style span5
style span6
style span7
style span8
style span9
style span10
style span11
style span12
style offset1
style offset2
style offset3
style offset4
style offset5
style offset6
style offset7
style offset8
style offset9
style offset10
style offset11
style offset12
style row_fluid
style container_fluid
style breadcrumb
style pagination
style pagination_large
style pagination_small
style pagination_mini
style pagination_centered
style pagination_right
style pager
style previous
style next
style nav
style nav_tabs
style nav_pills
style nav_stacked
style nav_collapse
style nav_list
style label
style label_success
style label_warning
style label_important
style label_info
style label_inverses
style badge
style badge_warning
style badge_important
style badge_info
style badge_inverse
style page_header
style thumbnails
style thumbnail
style close
style alert
style alert_block
style alert_error
style alert_success
style alert_info
style progress
style progress_striped
style progress_info
style progress_success
style progress_warning
style progress_danger
style bar
style bar_warning
style bar_danger
style active
style disabled
style media
style media_heading
style controls
style dropdown
style dropdown_toggle
style dropdown_menu
style tabbable
style tabs_left
style tabs_right
style tab_content
style brand
style divider_vertical
style pull_left
style pull_right
style navbar
style navbar_search
style navbar_inner
style search_query
style navbar_text
style navbar_fixed_top
style navbar_fixed_bottom
style navbar_static_top
style collapse
style btn_group
style btn_group_vertical
style btn
style btn_large
style btn_success
style btn_small
style btn_mini
style btn_toolbar
style btn_primary
style lead
style text_center
style text_right
style text_left
style text_warning
style text_error
style text_info
style text_success
style initialism
style dl_horizontal
style success
style error
style warning
style info
style help_block
style input_prepend
style input_append
style add_on
style img_rounded
style img_circle
style img_polaroid
style icon_glass
style icon_music 
style icon_search 
style icon_envelope 
style icon_heart 
style icon_star 
style icon_star_empty 
style icon_user 
style icon_film 
style icon_th_large 
style icon_th 
style icon_th_list 
style icon_ok 
style icon_remove 
style icon_zoom_in 
style icon_zoom_out 
style icon_off 
style icon_signal 
style icon_cog 
style icon_trash 
style icon_home 
style icon_file 
style icon_time 
style icon_road 
style icon_download_alt 
style icon_download 
style icon_upload 
style icon_inbox 
style icon_play_circle 
style icon_repeat 
style icon_refresh 
style icon_list_alt 
style icon_lock 
style icon_flag 
style icon_headphones 
style icon_volume_off 
style icon_volume_down 
style icon_volume_up 
style icon_qrcode
style icon_barcode 
style icon_tag 
style icon_tags 
style icon_book 
style icon_bookmark 
style icon_print 
style icon_camera 
style icon_font 
style icon_bold 
style icon_italic 
style icon_text_height 
style icon_text_width 
style icon_align_left 
style icon_align_center 
style icon_align_right 
style icon_align_justify 
style icon_list 
style icon_indent_left 
style icon_indent_right 
style icon_facetime_video 
style icon_picture 
style icon_pencil 
style icon_map_marker 
style icon_adjust 
style icon_tint 
style icon_edit 
style icon_share 
style icon_check 
style icon_move 
style icon_step_backward 
style icon_fast_backward 
style icon_backward 
style icon_play 
style icon_pause 
style icon_stop 
style icon_forward 
style icon_fast_forward 
style icon_step_forward 
style icon_eject 
style icon_chevron_left 
style icon_chevron_right 
style icon_plus_sign 
style icon_minus_sign 
style icon_remove_sign 
style icon_ok_sign 
style icon_question_sign 
style icon_info_sign 
style icon_screenshot 
style icon_remove_circle 
style icon_ok_circle 
style icon_ban_circle
style icon_arrow_left 
style icon_arrow_right 
style icon_arrow_up 
style icon_arrow_down 
style icon_share_alt 
style icon_resize_full 
style icon_resize_small 
style icon_plus 
style icon_minus 
style icon_asterisk 
style icon_exclamation_sign 
style icon_gift 
style icon_leaf 
style icon_fire 
style icon_eye_open 
style icon_eye_close 
style icon_warning_sign 
style icon_plane 
style icon_calendar 
style icon_random 
style icon_comment 
style icon_magnet 
style icon_chevron_up 
style icon_chevron_down 
style icon_retweet 
style icon_shopping_cart 
style icon_folder_close 
style icon_folder_open 
style icon_resize_vertical 
style icon_resize_horizontal 
style icon_hdd 
style icon_bullhorn 
style icon_bell 
style icon_certificate 
style icon_thumbs_up 
style icon_thumbs_down 
style icon_hand_right 
style icon_hand_left 
style icon_hand_up 
style icon_hand_down 
style icon_circle_arrow_right 
style icon_circle_arrow_left 
style icon_circle_arrow_up 
style icon_circle_arrow_down 
style icon_globe 
style icon_wrench 
style icon_tasks 
style icon_filter 
style icon_briefcase 
style icon_fullscreen

con need = [JQ=unit]
con out = need ++ [BOOTSTRAP=unit]

fun add [t] [x] [t~out] f r = 
  let
    val h = <xml>
              <link rel="stylesheet" href={Bootstrap_css.geturl}/>
            </xml> 
    val r' = Page.addHeader [#BOOTSTRAP] h (return {}) r
  in
    f r'
  end

