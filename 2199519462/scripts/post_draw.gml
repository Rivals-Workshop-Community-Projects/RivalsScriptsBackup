var h = 0;

/*
if draw_indicator {
if bake_time < -1 draw_sprite_ext(asset_get("mech_steambar_spr"), 0, x-32, y-char_height-hud_offset-30,2,2,0,c_black,1)

else if bake_time < bake_max draw_sprite_ext(asset_get("mech_steambar_spr"), min(max(bake_time, 0)/bake_max, 1)*32, x-32, y-char_height-hud_offset-30,2,2,0,c_white,1)

else draw_sprite_ext(asset_get("mech_heatbar_spr"), 32-min((bake_time-bake_max)/bake_reset, 1)*32, x-32, y-char_height-hud_offset-30,2,2,0,c_white,1)
}
*/
if bake_time > bake_max{

		gpu_set_fog(1, c_orange, -1000, -1000)

		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, 0, c_white, -0.3+abs(dcos((bake_time-bake_max)*6))*0.8)
		gpu_set_fog(0, c_orange, 0, 0)

} else if bake_max-bake_time <= 90{
		gpu_set_fog(1, c_orange, -1000, -1000)

		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, image_yscale, 0, c_white, (10-(bake_time mod 30))/10)
		gpu_set_fog(0, c_orange, 0, 0)
}


/* else if bake_draw > 0 && bake_time >= 0 {
	var drawdiv = 40;
	//print_debug("sup")
	for (var i = 0; i <= (1-(bake_draw))*(drawdiv); i++) {
		var angang = i*(360/drawdiv)+90
		draw_sprite_ext(sprite_get("tinyfire"),0,x+lengthdir_x(60,angang),(y-char_height/2)+lengthdir_y(40,angang),1,1,angang-90,c_white,1)
	}
}*/


if bake_strong && strong_charge > 0 && smash_charging && state_timer mod 4 <= 1{
	if !h {shader_start(); h = 1}
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,0.5)

}

if attack == AT_NSPECIAL && window == 3 && !bake_strong{
//	draw_sprite_ext(sprite_get("launchdir"), effect-1, x, y-char_height-20, spr_dir, 1, 0, c_white, 1)
}

if attack == AT_DSTRONG && get_window_value(attack,window,AG_WINDOW_TYPE) == 9 {
	if !h {shader_start(); h = 1}
	draw_sprite_ext(sprite_get("dstrong_leggy_outline"), dstrong_frame+dstrong_dir, x, y, spr_dir, image_yscale, image_angle, make_color_rgb(outline_color[0],outline_color[1],outline_color[2]), 1)
	draw_sprite_ext(sprite_get("dstrong_leggy"), dstrong_frame+dstrong_dir, x, y, spr_dir, image_yscale, image_angle, image_blend, 1)
}

if self_effect && self_effect_time mod 40 <= 20 {
	if !h {shader_start(); h = 1}
	draw_sprite_ext(sprite_get("hud_dir"),self_effect-1,x-spr_dir*30,y-char_height,spr_dir, 1, 0, c_white, 1)

}

if get_match_setting(SET_HITBOX_VIS) && soft_armor > 0 {
	var m = 3;
	var xx = spr_dir < 0 ? -40 : 0;
	if soft_armor >= 10 m = 4;

	draw_sprite(sprite_get("armor"),super_armor,x+xx,y+8)
	draw_debug_text(x+xx,y+12, string_format(soft_armor, 4, 2))
}

shader_end();



var d = sprite_get("launchdir_active");

if amarelle_effect[0] > 0 && amarelle_timer > 0 && amarelle_player == enemykirby {
var n;// = ((amarelle_timer/30)*60
with (other_player_id) {shader_start()}
n = ease_backOut(-40, 20, min(amarelle_timer, 30), 30, -16)
switch(amarelle_effect[0]) {
	default: case 1:
		draw_sprite(d, 0, x, y-char_height-n)
	break;
	case 2:
		draw_sprite(d, 1, x, (y-10)+n)
	break;
	case 3:
		var xx;
		if spr_dir > 0 xx = bbox_right+n; else xx = bbox_left-n;
		draw_sprite_ext(d, 2, xx, y-char_height/2, -spr_dir, 1, 0, c_white, 1)
	break;
	case 4:
		var xx;
		if spr_dir < 0 xx = bbox_right+n; else xx = bbox_left-n;
		draw_sprite_ext(d, 3, xx, y-char_height/2, -spr_dir, 1, 0, c_white, 1)
	break;
}

}
