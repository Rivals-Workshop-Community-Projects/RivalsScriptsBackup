// pre-draw

shader_start()
if (safety_strap_anim>0){
	var anim_dur = safety_strap_anim_duration;
	if (safety_strap_anim_type = 1){
		var tmp_ii = 4 + safety_strap_anim * 3 / anim_dur;
		var tmp_a = clamp(ease_quartIn( 100, 0, safety_strap_anim, anim_dur ),0,100)/100
	}
	if (safety_strap_anim_type = 0){
		var tmp_ii = 0 + safety_strap_anim * 3 / anim_dur;
		var tmp_a = clamp(ease_quartOut( 0, 100, safety_strap_anim, anim_dur ),0,100)/100
	}
	draw_sprite_ext( sprite_get("strap_ui"), tmp_ii, x, y, 1, 1, 0, -1, tmp_a )
}else if (safety_strap == "off"){
	draw_sprite_ext( sprite_get("strap_ui"), 3, x, y, 1, 1, 0, -1, 1 )
}
if (safety_strap == "off"){
	var anim_dur = safety_strap_anim_duration;
	if (safety_strap_anim_type = 1){
		var tmp_a = clamp(ease_quartIn( 100, 0, safety_strap_anim, anim_dur ),0,100)/100
	}
	if (safety_strap_anim_type = 0){
		var tmp_a = clamp(ease_quartOut( 0, 100, safety_strap_anim, anim_dur ),0,100)/100
	}
	var tmp_ii = ease_linear( 0, 23, safety_strap_timer, strap_off_duration )
	draw_sprite_ext( sprite_get("strap_meter"), tmp_ii, x, y, 1, 1, 0, -1, tmp_a )
}
shader_end()

with (asset_get("obj_article1")){
	if (player_id==other.id){
	var tmp_col = get_player_hud_color(other.player);
	draw_sprite_ext( sprite_get("arrow"), 0, x, y-72, 1, 1, -1, tmp_col, 1 );
	}
}