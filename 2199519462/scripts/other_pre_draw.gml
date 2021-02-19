with (other_player_id) {
	var d = sprite_get("launchdir");
}
if amarelle_player == other_player_id {

with (other_player_id) {shader_start()}
var p = 0;
repeat(2) {
if amarelle_timer > 0 && !p {p++; continue}
	switch(amarelle_effect[p]) {
		default: case 1:
			draw_sprite(d, 0, x, y-char_height-20-p*30)
		break;
		case 2:
			draw_sprite(d, 1, x, y+10+p*30)
		break;
		case 3:
			var xx;
			if spr_dir > 0 xx = bbox_right+20+p*30; else xx = bbox_left-20-p*30;
			draw_sprite_ext(d, 2, xx, y-char_height/2, -spr_dir, 1, 0, c_white, 1)
		break;
		case 4:
			var xx;
			if spr_dir < 0 xx = bbox_right+20+p*30; else xx = bbox_left-20-p*30;
			draw_sprite_ext(d, 3, xx, y-char_height/2, -spr_dir, 1, 0, c_white, 1)
		break;
	}
	p++;
}
shader_end();
}