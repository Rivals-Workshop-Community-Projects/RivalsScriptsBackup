//ORCANE PUDDLE
if state == 0 and coolindex != 6 {
	coolindex += 0.5
}

if state == 1 {
	coolindex += 0.7
	coolsprite = sprite_get("puddle_dis_spr");
	if coolindex = 7 {
		instance_destroy();
	}
}

if state == 2 {
	coolindex += 0.7
	coolsprite = sprite_get("puddle_dis_spr");
	create_hitbox( AT_NSPECIAL_ORCA, 2, x+spr_dir*random_func(0,64,true)-32, y )
	create_hitbox( AT_NSPECIAL_ORCA, 2, x+spr_dir*random_func(1,64,true)-32, y )
	if coolindex = 7 {
		instance_destroy();
	}
}

if state == 3 {
	ignores_walls = true;
	sprite_index = sprite_get("slipstream_mask");
	image_xscale = room_width/sprite_width
	lifetime -= 1
	if lifetime = 0 {
		instance_destroy();
	}
	if ysize != 1 {
	ysize += 0.1
	}
	if 10 > lifetime {
	ysize -= 0.1
	}
}