//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws over the article's graphics

image_index = img_ind;
draw_sprite_ext(spr_ind, image_index, x, y, spr_dir*image_xscale*2, 2, image_angle, c_white, 1);
if (player_id.hbox_view) draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);
if(player_id.debug_display){
	draw_set_font(asset_get("roaLBLFont")); 
	draw_set_color(c_white);
	draw_debug_text(x, y, string(timer_for_destruction))
}