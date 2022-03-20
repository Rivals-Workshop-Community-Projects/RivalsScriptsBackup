// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(move_cooldown[AT_FSPECIAL] == 1){
    if(shrimp_in_pot = false){
        has_shrimp = true;
    }
}

if(phone_landing == true){
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