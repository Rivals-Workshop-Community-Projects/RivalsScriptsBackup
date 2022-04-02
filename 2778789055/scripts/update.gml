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
if(other_is_scalding && hit_player_obj.state = PS_RESPAWN && hit_player_obj.other_scalding = true){
    hit_player_obj.other_scalding = false;
    other_is_scalding = false;
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
		if(michigan == false){
			if(attack_down && taunt_down){
		sound_play(asset_get("mfx_levelup"));
		sound_play(sound_get("sfx_michigan"), false, noone, 1.5, 1);
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
