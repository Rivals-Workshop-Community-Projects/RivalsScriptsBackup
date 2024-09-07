//hit_player

if funnySound {
	funnyfish = 7;
}

if (my_hitboxID.attack == AT_DAIR) {
	if my_hitboxID.hbox_num == 1 {
			sound_play(sound_get("sfx_glassbreak"));
			create_hitbox( AT_DAIR, 2, my_hitboxID.x, my_hitboxID.y);
			create_hitbox( AT_DAIR, 3, my_hitboxID.x, my_hitboxID.y);
	}
}

if (my_hitboxID.attack == AT_UAIR) {
	if my_hitboxID.hbox_num == 6 {
		sound_play(sound_get("squeaky"));
		old_vsp = -10;
		window = 4;
		window_timer = 0;
		my_hitboxID.hitbox_timer = 9;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	if my_hitboxID.was_parried {
		my_hitboxID.hitbox_timer = my_hitboxID.length-1;
	}
	
	if my_hitboxID.hbox_num == 1 && 6 > my_hitboxID.damage || my_hitboxID.hbox_num == 2 && 8 > my_hitboxID.damage {	
		spawn_hit_fx(my_hitboxID.x+2*spr_dir,my_hitboxID.y, 301);
	}
	
	if my_hitboxID.damage > 3 {
		my_hitboxID.damage--;
		my_hitboxID.damage--;
	}
	
	if my_hitboxID.kb_value > 3 {
		my_hitboxID.kb_value--; 
		my_hitboxID.bkb_final = my_hitboxID.kb_value;
	}
	
	if !my_hitboxID.was_parried && (my_hitboxID.hitbox_timer < my_hitboxID.length-20) {
		my_hitboxID.hitbox_timer += 20;
	}
	
	if my_hitboxID.hbox_num == 1 {	
		my_hitboxID.hsp *= 1.65;
		my_hitboxID.vsp = -4-(my_hitboxID.kb_value);
	}	
	
	if my_hitboxID.hbox_num == 2 {	
		my_hitboxID.hsp *= .65;
		my_hitboxID.vsp = -6-(my_hitboxID.kb_value);
	}	
}