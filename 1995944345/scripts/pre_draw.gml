shader_start();


if reflects_left > 0 {
		
	var s = sprite_get("sporering")
	
	
	
	var a, c;
	var w = ((bbox_right-bbox_left)+20)
	var yy = y - char_height/2
	for (var i = 0; i < reflects_left; i++) {
		a = dcos((reflect_spin)+(i*(360/max_reflects)))
		c = dsin((reflect_spin)+(i*(360/max_reflects)))

		if c <= 0 draw_sprite_ext(s, i, x + a*w, yy+c*20, 1, 1, 0, c_white, 1)
	}
	
	
}



if attack == AT_FSTRONG && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && image_index >= 4 && image_index <= 6 {
	draw_sprite_ext(sprite_get("fstrong_stalk"),ceil(abs(x-atstart_x)/20),atstart_x,atstart_y,spr_dir,1,0,c_white,1)
}
if attack == AT_USTRONG && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && image_index >= 4 && image_index <= 6 {
	draw_sprite_ext(sprite_get("ustrong_stalk"),ceil(abs(y-atstart_y)/20)-1,atstart_x,atstart_y,spr_dir,1,0,c_white,1)
}

if selfstab {
	
	if selfstab_target or instance_exists(selfstab_hbox) {
	draw_sprite_ext(sprite_get("sporemote_A"), selfstab_image*2, selfstab_x, selfstab_y, 1, 1, selfstab_angle + 90, c_white, 1)
	} else {
	draw_sprite_ext(sprite_get("sporemote"), selfstab_image, selfstab_x, selfstab_y, 1, 1, selfstab_angle + 90, c_white, 1)
	}
	
}





shader_end();