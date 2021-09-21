//post_draw.gml

if (is_in_playtest && does_exist_in_playtest_SleepKirby < 300){//>
	draw_debug_text(x - 100, y - 140, string(" FSPECIAL and DSPECIAL do"));
	draw_debug_text(x - 100, y - 120, string(" not inflict Sleep status in"));
	draw_debug_text(x - 100, y - 100, string(" playtest to prevent the"));
	draw_debug_text(x - 100, y - 80, string("    the game crashing."));
}









/*

	//oh my god this is gonna be fun to fight :)
	if (NotSleepKirby_IsSleeping){
		if (state_timer == -1){
			state_timer = 1
			NotSleepKirby_SleepTick = 1
		}
		NotSleepKirby_hat_timer++;
		if (NotSleepKirby_hat_timer == 4 && NotSleepKirby_hat_timer2 != 6){
			NotSleepKirby_hat_timer = 0
			NotSleepKirby_hat_timer2++;
		}
		if (spr_dir == 1){
			if (NotSleepKirby_hat_timer2 != 6){
				draw_sprite( IsSleepKirby_enemy_hat, NotSleepKirby_hat_timer2, x, y - char_height + 34)
			} else {
				draw_sprite( IsSleepKirby_enemy_hat, 6, x, y - char_height + 34)
			}
		} else {
			if (NotSleepKirby_hat_timer2 != 6){
				draw_sprite( IsSleepKirby_enemy_hat_otherdir, NotSleepKirby_hat_timer2, x, y - char_height + 34)
			} else {
				draw_sprite( IsSleepKirby_enemy_hat_otherdir, 6, x, y - char_height + 34)
			}
		}
		if (!free){
			if (state_timer == 12){
				if (NotSleepKirby_SleepTimer != NotSleepKirby_SleepTimerRelease){
					state_timer = 11
					NotSleepKirby_SleepTimer++;				
				} else {
					NotSleepKirby_SleepTick = 0
					NotSleepKirby_IsSleeping = false
					sound_play(asset_get("mfx_unstar"));
				}
			}
		} else { //free
			if (state_timer == -1){
				NotSleepKirby_SleepTick = 1
			}
			if (state_timer == 1){
				NotSleepKirby_SleepTick = 1
			}
			if (state_timer == 21){
				if (NotSleepKirby_SleepTimer != NotSleepKirby_SleepTimerRelease){
					state_timer = 20
					NotSleepKirby_SleepTimer++;				
				} else {
					vsp = -6
					NotSleepKirby_IsSleeping = false
					NotSleepKirby_SleepTick = 0
					sound_play(asset_get("mfx_unstar"));
					djumps = 0
					has_airdodge = true
					has_walljump = true
					set_state(PS_IDLE_AIR);
				}
			}
			if (y > blastzone_b && NotSleepKirby_WasHitBySleepRune == false){
				vsp = -42
				NotSleepKirby_SleepTick = 0
				NotSleepKirby_IsSleeping = false
				sound_play(asset_get("mfx_unstar"));
				djumps = 0
				has_airdodge = true
				has_walljump = true
				set_state(PS_IDLE_AIR);
			}
		}
		if (NotSleepKirby_SleepTimer > (NotSleepKirby_SleepTimer + 12)){
			NotSleepKirby_SleepTimer = 0
			NotSleepKirby_IsSleeping = false
			NotSleepKirby_SleepTick = 0
			sound_play(oPlayer.sfx_ability_star_break);
		}
	} else {
		NotSleepKirby_hat_timer = 0
	}
	with (NotSleepKirbyID){
		with (oPlayer){
			var SleepKirby_enemy_hat = sprite_get("fspecial_enemy_hat");
			var SleepKirby_enemy_hat_otherdir = sprite_get("fspecial_enemy_hat_otherdir");
			//var SleepKirby_enemy_sleep_bar = sprite_get("fspecial_enemy_sleep_bar");
			var sfx_ability_star_break = sound_get("sfx_ability_star_break");
		}
	}

if (state == PS_RESPAWN && NotSleepKirby_IsSleeping == true){
	NotSleepKirby_WasHitBySleepRune = false
	NotSleepKirby_IsSleeping = false
	state_timer = 2
	can_move = true
	can_jump = true
	NotSleepKirby_SleepTick = 0
}

if (state == PS_HITSTUN){
	if (state_timer == 0){
		if (NotSleepKirby_SleepTick == 1){
			NotSleepKirby_SleepTick = 0
			NotSleepKirby_IsSleeping = false
			sound_play(asset_get("mfx_unstar"));
		}
	}
	if (state_timer == -19){
		NotSleepKirby_SleepTick = 0
		NotSleepKirby_IsSleeping = false
		sound_play(asset_get("mfx_unstar"));
		state = PS_IDLE
	}
}

if (get_player_damage( player ) > 80){
	NotSleepKirby_SleepTimerRelease = 80
} else {
	NotSleepKirby_SleepTimerRelease = get_player_damage( player ) - 0
}

*/

//MunoPhone Touch
muno_event_type = 4;
user_event(14);