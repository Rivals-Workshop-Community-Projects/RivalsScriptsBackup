

// pre-draw

var col_right = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 2 ), get_color_profile_slot_g( get_player_color(player), 2 ), get_color_profile_slot_b( get_player_color(player), 2 ));
var col_left = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 3 ), get_color_profile_slot_g( get_player_color(player), 3 ), get_color_profile_slot_b( get_player_color(player), 3 ));
for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        if (joycon_drift_dir == "left")
        	gpu_set_fog(true,col_left,0,1);
        if (joycon_drift_dir == "right")
        	gpu_set_fog(true,col_right,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/5 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}

if (joycon_drift == "on" && joycon_drift_dir == "left")
	switchOutline(col_left, 1, 0); // pink
	gpu_set_fog(0, c_white, 0, 0);
if (joycon_drift == "on" && joycon_drift_dir == "right")
	switchOutline(col_right, 1, 0); // pink
	gpu_set_fog(0, c_white, 0, 0);


shader_start()
if (joycon_drift_anim>0){
	var anim_dur = joycon_drift_anim_duration;
	if (joycon_drift_anim_type = 1){
		var tmp_ii = 4 + joycon_drift_anim * 3 / anim_dur;
		var tmp_a = clamp(ease_quartIn( 100, 0, joycon_drift_anim, anim_dur ),0,100)/100
	}
	if (joycon_drift_anim_type = 0){
		var tmp_ii = 0 + joycon_drift_anim * 3 / anim_dur;
		var tmp_a = clamp(ease_quartOut( 0, 100, joycon_drift_anim, anim_dur ),0,100)/100
	}
	//draw_sprite_ext( sprite_get("strap_ui"), tmp_ii, x, y, 1, 1, 0, -1, tmp_a )
}
//else if (joycon_drift == "on"){
//	draw_sprite_ext( sprite_get("strap_ui"), 3, x, y, 1, 1, 0, -1, 1 )
//}
if (joycon_drift == "on"){
	if (joycon_drift_dir == "left"){
		draw_sprite_ext( sprite_get("driftarrow_left"), 0, x-52, y-48, 1, 1, 0, -1, 1 );
	}
	if (joycon_drift_dir == "right") {
		draw_sprite_ext( sprite_get("driftarrow_right"), 0, x+48, y-48, 1, 1, 0, -1, 1 );
	}
	
	var anim_dur = joycon_drift_anim_duration;
	if (joycon_drift_anim_type = 1){
		var tmp_a = clamp(ease_quartIn( 100, 0, joycon_drift_anim, anim_dur ),0,100)/100
	}
	if (joycon_drift_anim_type = 0){
		var tmp_a = clamp(ease_quartOut( 0, 100, joycon_drift_anim, anim_dur ),0,100)/100
	}
	if (joycon_drift_dir == "left"){
		var tmp_ii = ease_linear( 0, 23, joycon_drift_timer, drift_on_duration )
		draw_sprite_ext( sprite_get("strap_meter"), tmp_ii, x, y, 1, 1, 0, -1, tmp_a )
	}
	if (joycon_drift_dir == "right"){
		var tmp_ii = ease_linear( 0, 23, joycon_drift_timer, drift_on_duration )
		draw_sprite_ext( sprite_get("strap_meter_right"), tmp_ii, x, y, 1, 1, 0, -1, tmp_a )
	}
}
shader_end()

with (asset_get("obj_article1")){
	if (player_id==other.id){
	var tmp_col = get_player_hud_color(other.player);
	draw_sprite_ext( sprite_get("arrow"), 0, x, y-72, 1, 1, -1, tmp_col, 1 );
	}
}


#define switchOutline(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}