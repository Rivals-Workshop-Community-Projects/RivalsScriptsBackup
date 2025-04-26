//hit_player

if (my_hitboxID.attack == AT_DSPECIAL) {
	if my_hitboxID.hbox_num != 5 {
		if free {
			old_vsp = clamp(vsp, -12, 0);
		}
		if my_hitboxID.damage > 0 {
			set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 10);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	window = 9;
	window_timer = 2;
	old_hsp = (spr_dir)*-2;
	old_vsp = -7;
	destroy_hitboxes();
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if my_hitboxID.hbox_num == 1 {
		destroy_hitboxes();
		window = 4;
		window_timer = 1;
	}
}
	
if (my_hitboxID.attack == AT_DAIR) {
	window = 5;
	window_timer = 1;
	old_hsp = (spr_dir)*-2;
	old_vsp = -7;
	move_cooldown[AT_DAIR] = 30;
}

if (my_hitboxID.attack == AT_USPECIAL) {
	sound_play(sound_get("sfx-mariohit"));
	my_hitboxID.hsp = 3*spr_dir;
	my_hitboxID.grav = .45;
	my_hitboxID.hittimer = 30;
	my_hitboxID.air_friction = .01;
	my_hitboxID.damage = 2;
	my_hitboxID.hitbox_timer -= 15;
	
	if my_hitboxID.kb_value > 3 {
		my_hitboxID.kb_value--; 
	}
	if 5 > my_hitboxID.damage {	
		spawn_hit_fx(my_hitboxID.x+2*spr_dir,my_hitboxID.y, 301);
	}
	my_hitboxID.vsp = -.5-my_hitboxID.kb_value;
}