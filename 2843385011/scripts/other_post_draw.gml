//Draws the Whirlwind Effect 
/*
var sprite_orb = noone;

with (other_player_id) {
	sprite_orb = sprite_get("dspecial_proj_orbit");
	
enemy_orb_x1 = orb_x1;
enemy_orb_y1 = orb_y1;
enemy_orb_x2 = orb_x2;
enemy_orb_y2 = orb_y2;
enemy_orb_x3 = orb_x3;
enemy_orb_y3 = orb_y3;
enemy_orb_x4 = orb_x4;
enemy_orb_y4 = orb_y4;
	
}

//need to set the color later in 'col', check Maverick's
if (enemy_dspecial_orb != 0){
	if (enemy_dspecial_orb > 0){
		draw_sprite_ext(sprite_orb, get_gameplay_time()*.3, 
		enemy_orb_x1, enemy_orb_y1, spr_dir, 1, 0, c_white, .7);
	}
	if (enemy_dspecial_orb > 1){
		draw_sprite_ext(sprite_orb, get_gameplay_time()*.3, 
		enemy_orb_x2, enemy_orb_y2, spr_dir, 1, 0, c_white, .7);
	}
	if (enemy_dspecial_orb > 2){
		draw_sprite_ext(sprite_orb, get_gameplay_time()*.3, 
		enemy_orb_x3, enemy_orb_y3, spr_dir, 1, 0, c_white, .7);
	}
	if (enemy_dspecial_orb > 3){
		draw_sprite_ext(sprite_orb, get_gameplay_time()*.3, 
		enemy_orb_x4, enemy_orb_y4, spr_dir, 1, 0, c_white, .7);
	}
}
