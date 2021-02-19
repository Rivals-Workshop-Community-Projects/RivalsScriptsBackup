if !instance_exists(other_player_id) exit;
with (other_player_id) {
	var d = sprite_get("launchdir_active");
}
if amarelle_effect[0] > 0 && amarelle_timer > 0 && amarelle_player == other_player_id {
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
shader_end();
}

if other_player_id.enemykirby == id {
	if amarelle_bake_mode {
		draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,image_yscale,0,c_orange,1)
	}
}
