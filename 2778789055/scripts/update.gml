// MunoPhone Touch code - don't touch
// should be at TOP of file
/*
muno_event_type = 1;
user_event(14);
*/

galaxy_timer = max(galaxy_timer-1,0)

if(move_cooldown[AT_FSPECIAL] == 1){
    if(shrimp_in_pot = false){
        has_shrimp = true;
        mamizou_transform_spr = sprite_get("mamizou_pumbo"); 
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

with(oPlayer){
	if(other_scalding && other_scalding_timer != 0){
		/*
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
    switch(hit_player_obj.other_scalding_timer){
    	case 302:
    	case 242:
    	case 182:
    	case 122:
    	case 62:
    	case 2:
    	take_damage(hit_player_obj.player, -1, 1);	
    	break;
    }
}
*/

if(other_scalding_timer > 0){
	if(get_gameplay_time() % 1 == 0){
	other_scalding_timer -= 1/num_pumbos;
	}
}
if(other_scalding_timer == 1 || other_scalding_timer == 0 || other_scalding_timer < 0){
    sound_play(asset_get("sfx_hod_steam_level1"));
    other_scalding = false;
    zaza_baba_booboo = false;
    //other_is_scalding = false;
}
if(other_scalding = true){
	if(state = PS_DEAD || state = PS_RESPAWN){
    other_scalding = false;
    zaza_baba_booboo = false;
    //other_is_scalding = false;
	}
}

if(other_scalding_timer != 0){
    switch(other_scalding_timer){
    	case 302:
    	case 242:
    	case 182:
    	case 122:
    	case 62:
    	case 2:
    	take_damage(player, -1, 1);	
    	break;
    }
}
}
}

if (get_gameplay_time() < 120){
		if(get_player_color(player) = 14){
			//Avocado
		if(secret_alt_on == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
		sound_play(sound_get("sfx_michigan"), false, noone, 2, 1);
    set_color_profile_slot( 14, 0, 226, 189, 166 );
    set_color_profile_slot( 14, 1, 208, 153, 137 );
    set_color_profile_slot( 14, 2, 92, 92, 92 );
    set_color_profile_slot( 14, 3, 204, 30, 30 ); 
    set_color_profile_slot( 14, 4, 255, 255, 255 );
    set_color_profile_slot( 14, 5, 145, 85, 59 );
    set_color_profile_slot( 14, 6, 145, 85, 59 );
    set_color_profile_slot( 14, 7, 212, 40, 40 ); 
    	pot_skin = 3;
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_kfc"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_kfc"));
		avocado = true;
		secret_alt_num = 2;
		init_shader();
		secret_alt_on = true;
			}
		}else{
				if(!avocado){
		white_flash_timer = 24;
		sound_play(sound_get("sfx_michigan"), false, noone, 2, 1);
    set_color_profile_slot( 14, 0, 226, 189, 166 );
    set_color_profile_slot( 14, 1, 208, 153, 137 );
    set_color_profile_slot( 14, 2, 92, 92, 92 );
    set_color_profile_slot( 14, 3, 204, 30, 30 ); 
    set_color_profile_slot( 14, 4, 255, 255, 255 );
    set_color_profile_slot( 14, 5, 145, 85, 59 );
    set_color_profile_slot( 14, 6, 145, 85, 59 );
    set_color_profile_slot( 14, 7, 212, 40, 40 ); 
    	pot_skin = 3;
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_kfc"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_kfc"));
		secret_alt_num = 2;
		init_shader();            
		avocado = true;					
				}
		}
	}
	
	if(get_player_color(player) = 15){
		//TAG
		if(secret_alt_on == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
    set_color_profile_slot( 15, 0, 0, 158, 76 ); //Gumbo Skin 1
    set_color_profile_slot( 15, 1, 214, 171, 26 ); //Gumb Skin 2
    set_color_profile_slot( 15, 2, 84, 84, 84 ); //Jeans
    set_color_profile_slot( 15, 3, 110, 81, 60 ); //Hoodie
    set_color_profile_slot( 15, 4, 255, 223, 112 ); //Eyes
    set_color_profile_slot( 15, 5, 0, 158, 76 ); //Po Skin 1
    set_color_profile_slot( 15, 6, 214, 171, 26 ); //Po Skin 2
    set_color_profile_slot( 15, 7, 234, 224, 255 ); //Apron
		avocado = true;
		secret_alt_num = 3;
		init_shader();
		secret_alt_on = true;
			}
		}else{
				if(!avocado){
		white_flash_timer = 24;
    set_color_profile_slot( 15, 0, 0, 158, 76 ); //Gumbo Skin 1
    set_color_profile_slot( 15, 1, 214, 171, 26 ); //Gumb Skin 2
    set_color_profile_slot( 15, 2, 84, 84, 84 ); //Jeans
    set_color_profile_slot( 15, 3, 110, 81, 60 ); //Hoodie
    set_color_profile_slot( 15, 4, 255, 223, 112 ); //Eyes
    set_color_profile_slot( 15, 5, 0, 158, 76 ); //Po Skin 1
    set_color_profile_slot( 15, 6, 214, 171, 26 ); //Po Skin 2
    set_color_profile_slot( 15, 7, 234, 224, 255 ); //Apron
		secret_alt_num = 3;
		init_shader();            
		avocado = true;					
				}
		}
	}		
	
	if(get_player_color(player) = 22){
		//MC-Zom-B
		if(secret_alt_on == false){
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
		secret_alt_num = 5;
		init_shader();
		secret_alt_on = true;
			}
		}else{
				if(!avocado){
		white_flash_timer = 24;
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
		secret_alt_num = 5;
		init_shader();            
		avocado = true;					
				}
		}
	}
	
	if(get_player_color(player) = 16){
		//BLW Champ
		if(secret_alt_on == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));
    set_color_profile_slot( 16, 0, 133, 70, 171 ); //Gumbo Skin 1
    set_color_profile_slot( 16, 1, 77, 77, 77 ); //Gumb Skin 2
    set_color_profile_slot( 16, 2, 77, 77, 77 ); //Jeans
    set_color_profile_slot( 16, 3, 153, 153, 153 ); //Hoodie
    set_color_profile_slot( 16, 4, 122, 255, 122 ); //Eyes
    set_color_profile_slot( 16, 5, 74, 74, 74 ); //Po Skin 1
    set_color_profile_slot( 16, 6, 230, 182, 52 ); //Po Skin 2
    set_color_profile_slot( 16, 7, 255, 219, 245 ); //Apron
		avocado = true;
		secret_alt_num = 4;
		init_shader();
		secret_alt_on = true;
			}
		}else{
				if(!avocado){
		white_flash_timer = 24;
    set_color_profile_slot( 16, 0, 133, 70, 171 ); //Gumbo Skin 1
    set_color_profile_slot( 16, 1, 77, 77, 77 ); //Gumb Skin 2
    set_color_profile_slot( 16, 2, 77, 77, 77 ); //Jeans
    set_color_profile_slot( 16, 3, 153, 153, 153 ); //Hoodie
    set_color_profile_slot( 16, 4, 122, 255, 122 ); //Eyes
    set_color_profile_slot( 16, 5, 74, 74, 74 ); //Po Skin 1
    set_color_profile_slot( 16, 6, 230, 182, 52 ); //Po Skin 2
    set_color_profile_slot( 16, 7, 255, 219, 245 ); //Apron
		secret_alt_num = 4;
		init_shader();            
		avocado = true;					
				}
		}
	}
	
	if(get_player_color(player) = 12){
		//Kazuya Mishima
		if(secret_alt_on == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));  
		sound_play(sound_get("SmashLeakInnerRealVineBoomPoo"), false, noone, 3.5, 1);
	set_color_profile_slot( 12, 0, 166, 121, 181 ); //Gumbo Skin 1
    set_color_profile_slot( 12, 1, 73, 42, 82 ); //Gumb Skin 2
    set_color_profile_slot( 12, 2, 232, 232, 232 ); //Jeans
    set_color_profile_slot( 12, 3, 232, 232, 232 ); //Hoodie
    set_color_profile_slot( 12, 4, 255, 87, 87 ); //Eyes
    set_color_profile_slot( 12, 5, 212, 212, 212 ); //Po Skin 1
    set_color_profile_slot( 12, 6, 135, 135, 135 ); //Po Skin 2
    set_color_profile_slot( 12, 7, 199, 74, 52 ); //Apron
    custom_food = 29;
		avocado = true;
		secret_alt_num = 1;
		init_shader();
		secret_alt_on = true;
			}
		}else{
				if(!avocado){
		white_flash_timer = 24;
		sound_play(sound_get("SmashLeakInnerRealVineBoomPoo"), false, noone, 3.5, 1);
	set_color_profile_slot( 12, 0, 166, 121, 181 ); //Gumbo Skin 1
    set_color_profile_slot( 12, 1, 73, 42, 82 ); //Gumb Skin 2
    set_color_profile_slot( 12, 2, 232, 232, 232 ); //Jeans
    set_color_profile_slot( 12, 3, 232, 232, 232 ); //Hoodie
    set_color_profile_slot( 12, 4, 255, 87, 87 ); //Eyes
    set_color_profile_slot( 12, 5, 212, 212, 212 ); //Po Skin 1
    set_color_profile_slot( 12, 6, 135, 135, 135 ); //Po Skin 2
    set_color_profile_slot( 12, 7, 199, 74, 52 ); //Apron
    custom_food = 29;
		secret_alt_num = 1;
		init_shader();            
		avocado = true;					
				}
		}
	}	
	if(get_player_color(player) = 21){
		//Investigator Azuma
		if(secret_alt_on == false){
			if(attack_down && taunt_down){
		white_flash_timer = 18;
		sound_play(asset_get("mfx_levelup"));  
	set_color_profile_slot( 21, 0, 27, 156, 18 ); //Gumbo Skin 1
	set_color_profile_slot( 21, 1, 27, 156, 18 ); //Gumb Skin 2
	set_color_profile_slot( 21, 2, 78, 94, 0 ); //Jeans
	set_color_profile_slot( 21, 3, 128, 150, 0 ); //Hoodie
	set_color_profile_slot( 21, 4, 246, 245, 251 ); //Eyes
	set_color_profile_slot( 21, 5, 97, 95, 98 ); //Po Skin 1
	set_color_profile_slot( 21, 6, 153, 0, 0 ); //Po Skin 2
	set_color_profile_slot( 21, 7, 246, 245, 251 ); //Apron
		avocado = true;
		secret_alt_num = 6;
		init_shader();
		secret_alt_on = true;
			}
		}else{
				if(!avocado){
		white_flash_timer = 24;
	set_color_profile_slot( 21, 0, 27, 156, 18 ); //Gumbo Skin 1
	set_color_profile_slot( 21, 1, 27, 156, 18 ); //Gumb Skin 2
	set_color_profile_slot( 21, 2, 78, 94, 0 ); //Jeans
	set_color_profile_slot( 21, 3, 128, 150, 0 ); //Hoodie
	set_color_profile_slot( 21, 4, 246, 245, 251 ); //Eyes
	set_color_profile_slot( 21, 5, 97, 95, 98 ); //Po Skin 1
	set_color_profile_slot( 21, 6, 153, 0, 0 ); //Po Skin 2
	set_color_profile_slot( 21, 7, 246, 245, 251 ); //Apron
		secret_alt_num = 6;
		init_shader();            
		avocado = true;					
				}
		}
	}
	
	if(get_player_color(player) = 25){
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_summer"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_summer"));	
	}if(get_player_color(player) = 26){
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ball_proj"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("ball_proj"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("ballhurt"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("ballhurt"));
	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("ball_fspecial"));
	set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("ball_fspecial"));
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_ball"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_ball"));
	}
}if(get_player_color(player) = 27){
	genesis_alt	= true;
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
    }    switch(gumbo_scalding_timer){
    	case 302:
    	case 242:
    	case 182:
    	case 122:
    	case 62:
    	case 2:
    	take_damage(player, -1, 1);	
    	break;
    }
}


if(gumbo_ditto){
	gumbo_ditto();
}

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
    practice_mode = true;
    practicetutorial = 1;
}

if(tutorialcooldown > 0){
tutorialcooldown--;
}if(menu_select_cooldown > 0){
menu_select_cooldown--;
}

#define gumbo_ditto

if(other_scalding){
	is_scalding = true;
	}
if(!gumbo_scalding && !other_scalding){
	is_scalding = false;
		}