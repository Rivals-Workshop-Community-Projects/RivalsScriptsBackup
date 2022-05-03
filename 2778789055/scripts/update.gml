// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(move_cooldown[AT_FSPECIAL] == 1){
    if(shrimp_in_pot = false){
        has_shrimp = true;
        //dspecial_spr_var = false;
    }
}

/*
if(dspecial_spr_var = false){
	set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_var"));
	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_var"));
}if(dspecial_spr_var){
	set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
}
*/
if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN){
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_2] = 0;
}

//scalding
if(other_is_scalding && hit_player_obj.other_scalding = true && hit_player_obj.other_scalding_timer != 0){
    hit_player_obj.other_scalding_timer--;
}
if(other_is_scalding && hit_player_obj.other_scalding_timer == 1 && hit_player_obj.other_scalding = true){
    sound_play(asset_get("sfx_hod_steam_level1"));
    hit_player_obj.other_scalding = false;
    other_is_scalding = false;
}
if(other_is_scalding && hit_player_obj.other_scalding_timer == 0 && hit_player_obj.other_scalding = true){
    sound_play(asset_get("sfx_hod_steam_level1"));
    hit_player_obj.other_scalding = false;
    other_is_scalding = false;
}
if(other_is_scalding && hit_player_obj.other_scalding = true){
	if(hit_player_obj.state = PS_DEAD || hit_player_obj.state = PS_RESPAWN){
    hit_player_obj.other_scalding = false;
    other_is_scalding = false;
	}
}

if(other_is_scalding && hit_player_obj.other_scalding = true && hit_player_obj.other_scalding_timer != 0){
    if(get_gameplay_time() % 20 == 0){
        snd_rng = random_func(0, 9, true);
        if (snd_rng == 0) {
        spawn_hit_fx(hit_player_obj.x , hit_player_obj.y - 75, steam_effect);	
        }if (snd_rng == 1) {
        spawn_hit_fx(hit_player_obj.x + 20, hit_player_obj.y - 70, steam_effect);	
        }if (snd_rng == 2) {
        spawn_hit_fx(hit_player_obj.x + 10, hit_player_obj.y - 90, steam_effect);	
        }if (snd_rng == 3) {
        spawn_hit_fx(hit_player_obj.x + 25, hit_player_obj.y - 50, steam_effect);	
        }if (snd_rng == 4) {
        spawn_hit_fx(hit_player_obj.x + -25, hit_player_obj.y - 70, steam_effect);	
        }if (snd_rng == 5) {
        spawn_hit_fx(hit_player_obj.x + -20, hit_player_obj.y - 65, steam_effect);	
        }if (snd_rng == 6) {
        spawn_hit_fx(hit_player_obj.x + -5, hit_player_obj.y - 85, steam_effect);	
        }if (snd_rng == 7) {
        spawn_hit_fx(hit_player_obj.x + 10, hit_player_obj.y - 80, steam_effect);	
        }if (snd_rng == 8) {
        spawn_hit_fx(hit_player_obj.x + -15, hit_player_obj.y - 45, steam_effect);	
        }
    }
}

if (get_gameplay_time() < 120){
		if(get_player_color(player) = 13){
			//Avocado
		if(michigan == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
		sound_play(sound_get("sfx_michigan"), false, noone, 1.5, 1);
    set_color_profile_slot( 13, 0, 226, 189, 166 );
    set_color_profile_slot( 13, 1, 208, 153, 137 );
    set_color_profile_slot( 13, 2, 92, 92, 92 );
    set_color_profile_slot( 13, 3, 204, 30, 30 ); 
    set_color_profile_slot( 13, 4, 255, 255, 255 );
    set_color_profile_slot( 13, 5, 145, 85, 59 );
    set_color_profile_slot( 13, 6, 145, 85, 59 );
    set_color_profile_slot( 13, 7, 212, 40, 40 ); 
		avocado = true;
		init_shader();
		michigan = true;
			}
		}
	}		if(get_player_color(player) = 14){
		//TAG
		if(michigan == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
    set_color_profile_slot( 14, 0, 0, 158, 76 ); //Gumbo Skin 1
    set_color_profile_slot( 14, 1, 214, 171, 26 ); //Gumb Skin 2
    set_color_profile_slot( 14, 2, 84, 84, 84 ); //Jeans
    set_color_profile_slot( 14, 3, 110, 81, 60 ); //Hoodie
    set_color_profile_slot( 14, 4, 255, 223, 112 ); //Eyes
    set_color_profile_slot( 14, 5, 0, 158, 76 ); //Po Skin 1
    set_color_profile_slot( 14, 6, 214, 171, 26 ); //Po Skin 2
    set_color_profile_slot( 14, 7, 234, 224, 255 ); //Apron
		avocado = true;
		init_shader();
		michigan = true;
			}
		}
	}		if(get_player_color(player) = 22){
		//MC-Zom-B
		if(michigan == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
		sound_play(sound_get("sfx_record"), false, noone, 1.5, 1);
		set_victory_portrait(sprite_get("portrait"));
            set_color_profile_slot( 22, 0, 119, 145, 121 ); //Gumbo Skin 1
            set_color_profile_slot( 22, 1, 102, 93, 73 ); //Gumb Skin 2
            set_color_profile_slot( 22, 2, 54, 58, 122 ); //Jeans
            set_color_profile_slot( 22, 3, 51, 58, 171 ); //Hoodie
            set_color_profile_slot( 22, 4, 255, 238, 181 ); //Eyes
            set_color_profile_slot( 22, 5, 101, 100, 112 ); //Po Skin 1
            set_color_profile_slot( 22, 6, 64, 61, 92 ); //Po Skin 2
            set_color_profile_slot( 22, 7, 255, 255, 255 ); //Apron
		avocado = true;
		init_shader();
		michigan = true;
			}
		}
	}		if(get_player_color(player) = 15){
		//BLW Champ
		if(michigan == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
    set_color_profile_slot( 15, 0, 133, 70, 171 ); //Gumbo Skin 1
    set_color_profile_slot( 15, 1, 77, 77, 77 ); //Gumb Skin 2
    set_color_profile_slot( 15, 2, 77, 77, 77 ); //Jeans
    set_color_profile_slot( 15, 3, 153, 153, 153 ); //Hoodie
    set_color_profile_slot( 15, 4, 122, 255, 122 ); //Eyes
    set_color_profile_slot( 15, 5, 74, 74, 74 ); //Po Skin 1
    set_color_profile_slot( 15, 6, 230, 182, 52 ); //Po Skin 2
    set_color_profile_slot( 15, 7, 255, 219, 245 ); //Apron
		avocado = true;
		init_shader();
		michigan = true;
			}
		}
	}
}


/*
//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
    practice_mode = true;
}

if(!practice_mode){
	phone_lightweight = true;
}if(practice_mode){
	phone_lightweight = false;
}
*/
//gumbo scalding lol

if(gumbo_scalding){
	is_scalding = true;
}if(!gumbo_scalding){
	is_scalding = false;
}


if(gumbo_is_scalding && gumbo_scalding = true && gumbo_scalding_timer != 0){
    gumbo_scalding_timer--;
}
if(gumbo_is_scalding && gumbo_scalding_timer == 1 && gumbo_scalding = true){
    sound_play(asset_get("sfx_hod_steam_level1"));
    gumbo_scalding = false;
    gumbo_is_scalding = false;
}
if(gumbo_is_scalding && state = PS_RESPAWN && gumbo_scalding = true){
    gumbo_scalding = false;
    gumbo_is_scalding = false;
}
if(gumbo_is_scalding && gumbo_scalding = true && gumbo_scalding_timer != 0){
    if(get_gameplay_time() % 20 == 0){
        snd_rng = random_func(0, 9, true);
        if (snd_rng == 0) {
        spawn_hit_fx(x , y - 75, steam_effect);	
        }if (snd_rng == 1) {
        spawn_hit_fx(x + 20, y - 70, steam_effect);	
        }if (snd_rng == 2) {
        spawn_hit_fx(x + 10, y - 90, steam_effect);	
        }if (snd_rng == 3) {
        spawn_hit_fx(x + 25, y - 50, steam_effect);	
        }if (snd_rng == 4) {
        spawn_hit_fx(x + -25, y - 70, steam_effect);	
        }if (snd_rng == 5) {
        spawn_hit_fx(x + -20, y - 65, steam_effect);	
        }if (snd_rng == 6) {
        spawn_hit_fx(x + -5, y - 85, steam_effect);	
        }if (snd_rng == 7) {
        spawn_hit_fx(x + 10, y - 80, steam_effect);	
        }if (snd_rng == 8) {
        spawn_hit_fx(x + -15, y - 45, steam_effect);	
        }
    }
}

if(gumbo_ditto){
if(other_scalding){
	is_scalding = true;
}
if(!gumbo_scalding && !other_scalding){
	is_scalding = false;
}
}
