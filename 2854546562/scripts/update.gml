if(get_gameplay_time() <= 120){
	if(taunt_pressed && !bigiron){
		bigiron = true;
		sound_play(sfx_alleyoop);
	}
    if(special_pressed && !voices){
		voices = true;
		sound_play(sfx_voice_taunt1);
	}
}

if (move_cooldown[AT_FSPECIAL_2] == 0 && hitstop && voices) {
    with (oPlayer) {
        if last_player_hit_me == other.player && activated_kill_effect {
            with (other) {
                var rand_choice = random_func(0, 3, true);
                if (rand_choice == 0) sound_play(sfx_voice_taunt2);
                if (rand_choice == 1) sound_play(sfx_voice_taunt3);
                if (rand_choice == 2) sound_play(sfx_voice_taunt4);
                move_cooldown[AT_FSPECIAL_2] = 120;
            }
            
        }
    }
}


if (grabbed_id != noone) {
    grabbed_id.ungrab++;
    if (extended_ungrab > 0) extended_ungrab -= 1;
    if (grabbed_id.ungrab - extended_ungrab == ungrab_timer) {
        grabbed_id.state = PS_TUMBLE;
        grabbed_id.ungrab = 0;
        grabbed_id = noone;
    }
    else {
        grabbed_id.hitstop = 2;
        grabbed_id.hitpause = true;
        grabbed_id.state = PS_HITSTUN;
        grabbed_id.hsp = 0;
        grabbed_id.vsp = 0;
    }
}


