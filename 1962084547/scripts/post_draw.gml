/*
* Power Indicator
*/
// Variables
var POWER_ICON_X = -30
var POWER_ICON_Y = (char_height+20)


POWER_ICON_X -= sin(icon_shake)*icon_shake

//draw_debug_text(x, y, string(icon_shake));

// Icons

/*if power_state != POWER_STATE_OFF {
	var cur_icon = power_state == POWER_STATE_UP ? spr_power_icon_up_1 : spr_power_icon_down_1;
		draw_sprite_ext(cur_icon, 1, x + POWER_ICON_X * spr_dir, y - POWER_ICON_Y, spr_dir*2, 2, 0, c_white, image_alpha)
}*/

if statboost_time > 0 {
	draw_sprite(statboost_sprite, 19 - (statboost_time/statboost_maxtime)*19, x, y)
	//sound_play(asset_get("sfx_birdflap"));
}
//	draw_debug_text(x,y+16,string(statboost_time))

/*
up_icon = power_state == POWER_STATE_UP ? spr_power_icon_up_1 : spr_power_icon_up_0;
down_icon = power_state == POWER_STATE_DOWN ? spr_power_icon_down_1 : spr_power_icon_down_0;

draw_sprite_ext(up_icon, 1, POWER_ICON_UP_X, POWER_ICON_UP_Y, 2, 2, 0, c_white, 1);
draw_sprite_ext(down_icon, 1, POWER_ICON_DOWN_X, POWER_ICON_DOWN_Y, 2, 2, 0, c_white, 1);


with (pHitBox) {
	if (player_id != other || orig_player != other.player || attack != AT_USPECIAL) continue;
	draw_debug_text(x - 40, y - 60, string(hit_by_fspecial));
	
}
*/