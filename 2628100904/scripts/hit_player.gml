//Wow!

//fair gun firing if sweetspot hits, referencing one of nades moves
if(my_hitboxID.attack == AT_FAIR){
    if (my_hitboxID.hbox_num == 2) {
        window = 4;
        window_timer = 0;
        old_vsp = -6;
		old_hsp = -2 * spr_dir;
		destroy_hitboxes();
		can_fast_fall = false;
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
		move_cooldown[AT_USPECIAL] = 100;
	}
}

if(my_hitboxID.attack == AT_USTRONG){
	if(my_hitboxID.hbox_num == 2){
		create_hitbox(AT_USTRONG, 4, my_hitboxID.x, my_hitboxID.y);
		sound_stop(sound_get("thinkfast"))
		sound_play(sound_get("thinkfast"))
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_MOL_BOOM_FLASH);
	}
}

if(my_hitboxID.attack == AT_NSPECIAL){
	switch(my_hitboxID.hbox_num){
		case 1:
		sound_play(asset_get("sfx_absa_orb_hit"));
		break;
		case 2:
		sound_play(asset_get("sfx_absa_singlezap1"));
		break;
		case 3:
		sound_play(asset_get("sfx_absa_kickhit"));
		break;
	}
	// sound_play(sound_get("orchhit"));
}

if(hit_player_obj == self && my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 7){
	can_wall_tech = false;
	can_tech = false;
}
