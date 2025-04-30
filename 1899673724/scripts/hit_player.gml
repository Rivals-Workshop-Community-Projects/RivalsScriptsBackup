if (my_hitboxID.attack == AT_DAIR && window < 3 && my_hitboxID.hbox_num == 1) {
	window = 3;
    window_timer = 0;
    old_vsp = -7;
	sound_play(sound_get("sfx_bounce"))
	destroy_hitboxes();
}

if (my_hitboxID.attack == AT_UAIR){
	if (window == 4){
		window = 5
		window_timer = 0
		destroy_hitboxes();
		spawn_hit_fx( hit_player_obj.x * hit_player_obj.spr_dir, hit_player_obj.y - 40, 302 );
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && window == 2){
	hsp = 4;
	old_hsp = hsp * spr_dir;
	
	homingAttackPose = random_func( 0, 3, true ) + 1;
	
	if (homingAttackPose == 1){
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 18);

		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 20);

		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 22);
	} else if (homingAttackPose == 2){
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);

		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 26);

		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 28);
	} else if (homingAttackPose == 3){
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 30);

		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 32);

		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 38);
	}
	
	set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
	
	window = 4;
	
	sound_play(sound_get("sfx_bounce"), false, noone, 0.95, 1.3);
	
	move_cooldown[AT_NSPECIAL] = 60;
}

if (my_hitboxID.attack == AT_FSPECIAL){
	window = 3;
	window_timer = 3;
	destroy_hitboxes();
	if (my_hitboxID.hbox_num == 1){ //Strong Hitbox
		x = x + 18 * spr_dir
		spawn_hit_fx( hit_player_obj.x - 14 * hit_player_obj.spr_dir, hit_player_obj.y - 30, 304 );
		//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -10);
		lightspeed_hitwithstronghitbox = true
	} else if (my_hitboxID.hbox_num == 2){
		lightspeed_hitwithstronghitbox = false
		x = x + 10 * spr_dir
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -6.8);
	}
}