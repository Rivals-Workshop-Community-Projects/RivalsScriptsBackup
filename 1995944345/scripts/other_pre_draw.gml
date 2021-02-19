


if mycolich_type == 1 && mycolich_sporetime && mycolich_player == other_player_id.player {
	with (other_player_id) {
		shader_start();
		var s = sprite_get("sporering")
	}
	var t = mycolich_sporetime
	if hitpause && state_cat == SC_HITSTUN {
		t *= (hitstop/hitstop_full)
	}
	
	var a, c;
	var d = 8;
	var w = ((bbox_right-bbox_left)+20)+t/5
	var yy = y - char_height/2
	for (var i = 0; i < d; i++) {
		a = dcos((t*3)+(i*(360/8)))
		c = dsin((t*3)+(i*(360/8)))

		if c <= 0 draw_sprite_ext(s, i, x + a*w, yy+c*20, 1, 1, 0, c_white, t/10)
	}
	
	
	shader_end();
}


/*
if other_player_id.fspecial_target == id && other_player_id.window == 3 && other_player_id.attack == AT_FSPECIAL_2 {

	var top_sprite = -1;
	var left_sprite = -1;
	var right_sprite = -1;
	
	with (other_player_id) {
		top_sprite = sprite_get("leech_top");
		left_sprite = sprite_get("leech_left");
		right_sprite = sprite_get("leech_right");
		shader_start();
	}		
	
	
	draw_sprite_ext(top_sprite, other_player_id.image_index, x, bbox_top,spr_dir*-1,1,0,c_white,1)
	draw_sprite(left_sprite, other_player_id.image_index, bbox_left, y - char_height/2)
	draw_sprite(right_sprite, other_player_id.image_index, bbox_right, y - char_height/2)

}