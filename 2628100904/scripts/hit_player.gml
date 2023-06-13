//Wow!

//fair gun firing if sweetspot hits, referencing one of nades moves
if(my_hitboxID.attack == AT_FAIR){
    if (my_hitboxID.hbox_num == 2) {
        window = 4;
        window_timer = 0;
		destroy_hitboxes();
		can_fast_fall = false;
    } else if (my_hitboxID.hbox_num == 3) {
        old_vsp = -6;
		old_hsp = -2 * spr_dir;
    }
}

//funny goomber noise :P
if(my_hitboxID.attack == AT_DAIR){
    if (my_hitboxID.hbox_num == 1) {
        old_vsp = -4; //this doesnt work but i dont care
        sound_play(sound_get("goomba"));
    }
}

if(my_hitboxID.attack == AT_USPECIAL){
	if(my_hitboxID.hbox_num == 2){
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
		move_cooldown[AT_USPECIAL] = 60;
		
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
	} else if(my_hitboxID.hbox_num == 1){
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
		move_cooldown[AT_USPECIAL] = 60;
		
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
	}
	if(my_hitboxID.hbox_num < 3){
		old_vsp = -11;
		window = 3;
		window_timer = 0;
	}
}

if(my_hitboxID.attack == AT_USTRONG){
	if(my_hitboxID.hbox_num == 2){
		var hbox = create_hitbox(AT_USTRONG_2, 2, my_hitboxID.x, my_hitboxID.y);
		
		hbox.kb_value = hbox.kb_value * (1 + my_hitboxID.strong_charge/240);
		hbox.kb_scale = hbox.kb_scale * (1 + my_hitboxID.strong_charge/240);
		hbox.damage = hbox.damage * (1 + my_hitboxID.strong_charge/100);
		
		sound_stop(sound_get("thinkfast"))
		sound_play(sound_get("thinkfast"))
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_MOL_BOOM_FLASH);
	}
}

if(my_hitboxID.attack == AT_JAB){
	if(my_hitboxID.hbox_num == 1){
		hit_player_obj.hitstun = 17;
		hit_player_obj.hitstun_full = 17;
	}
}

if(my_hitboxID.attack == AT_NSPECIAL){
	switch(my_hitboxID.hbox_num){
		case 1:
		sound_play(asset_get("sfx_absa_orb_hit"));
		hit_player_obj.hitstun = 36;
		hit_player_obj.hitstun_full = 36;
		break;
		case 2:
		sound_play(asset_get("sfx_absa_singlezap1"));
		hit_player_obj.hitstun = 45;
		hit_player_obj.hitstun_full = 45;
		break;
		case 3:
		sound_play(asset_get("sfx_absa_kickhit"));
		hit_player_obj.hitstun = 50;
		hit_player_obj.hitstun_full = 50;
		break;
	}
	// sound_play(sound_get("orchhit"));
}

if(hit_player_obj == self && my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 7){
	can_wall_tech = false;
	can_tech = false;
}

if(my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1 && hit_player_obj.state == PS_HITSTUN){
	hit_player_obj.gang_grab_id = self;
} else {
	hit_player_obj.gang_grab_id = noone;
}
