if (state == PS_WALL_JUMP){
    if (attack == AT_USPECIAL){
        sound_stop(asset_get("sfx_absa_current_pop"));
    }
}

if (url != 2297617172){
	player = -1;
	spawn_hit_fx(x,y,0);
}


//runes
if (has_rune("A")){
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 6);
}

if (has_rune("B")){
	knockback_adj = .85;
}

if (has_rune("D")){
	max_djumps = 5;
}

if (has_rune("E")){
	air_dodge_speed = 12;
	
	roll_forward_max = 11; //roll speed
	roll_backward_max = 11;
}

if (has_rune("F")){
	max_uspec_times = 3;
}



if (has_rune("G")){
	set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);

	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);

	set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
}

if (has_rune("I")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("impact"));
}

if (has_rune("J")){
	set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 1);
}

if (has_rune("H")){

		
		set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	
			//this part is edited mollo code sorry giik oops
				if state == PS_ATTACK_AIR && state_timer == 0 {
					
					
						if up_strong_pressed set_attack(AT_USTRONG);
						if left_strong_pressed {set_attack(AT_FSTRONG); spr_dir = -1}
						if right_strong_pressed {set_attack(AT_FSTRONG); spr_dir = 1}
						if down_strong_pressed set_attack(AT_DSTRONG);
					
				}

}


if (has_rune("L")){
	set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 11);
	set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 11);
	
	set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 1);
	
	set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 1);
	
	set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 1);

	set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, 11);
	
	set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 1);
	
	set_hitbox_value(AT_DAIR, 4, HG_EFFECT, 11);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 10);
	
	set_hitbox_value(AT_DATTACK, 2, HG_EFFECT, 5);
}

if (has_rune("M")){
	set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
}

if (has_rune("N")){
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_rune"));
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 54);
	set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -25);
	set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 131);
	set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 60);
	
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 120);
	set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -14);
	set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 32);
	set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 32);
	
	set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_rune"));
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 2);
	set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 2);
	set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 143);
	set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 42);
	
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 2);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 2);
	set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 143);
	set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 42);
	
	set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);
	set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 2);
	set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 143);
	set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 42);
	
	set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 11);
	set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -4);
	set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 143);
	set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 42);
}