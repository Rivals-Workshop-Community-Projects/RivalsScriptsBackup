//article1_post_draw.gml
//similarly to a player's post_draw.gml, this script draws over the article's graphics

if(expand_timer < expand_time){
	draw_sprite_ext(gold_expand_fg_spr, 5*expand_timer/expand_time, x,y, spr_dir*image_xscale*2, 2, image_angle, c_white, 1);
}

if(entry_point[0] != noone){
	draw_sprite_ext(spr_ground, point_ind, entry_point[1], entry_point[2], 2, 2, entry_point[3], c_white, 1);
}
if(exit_point[0] != noone){
	draw_sprite_ext(spr_ground, point_ind, exit_point[1], exit_point[2], 2, 2, exit_point[3], c_white, 1);
}

// if (player_id.hbox_view) draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5);
if(player_id.debug_display){
	draw_set_font(asset_get("roaLBLFont")); 
	draw_set_color(c_white);
	draw_debug_text(x, y, string(timer_for_destruction))
}