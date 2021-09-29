//other_post_draw.gml

with (oPlayer){
	//draw_debug_text( x, y - 60, "fpsec immunity?" + string(NotSleepKirby_FspecialImmunity))
	//draw_debug_text( x, y - 30, "is sleeping?" + string(NotSleepKirby_IsSleeping))
	//draw_debug_text( x, y , "state timer" + string(state_timer))
	//draw_debug_text( x, y + 30, "sleep timer release" + string(NotSleepKirby_SleepTimerRelease))
	//draw_debug_text( x, y + 60, "sleep timer" + string(NotSleepKirby_SleepTimer))
	//draw_debug_text( x, y + 90, "sleep tick" + string(NotSleepKirby_SleepTick))
	//draw_debug_text( x, y + 120, "flash" + string(NotSleepKirby_Sleep_Hat_Flash))
	//draw_debug_text( x, y + 20, "a" + string(NotSleepKirby_Hat_Offset_X))
	//draw_debug_text( x, y + 40, "b" + string(sleep_kirby_hat_offset_y))
	if (NotSleepKirby_IsSleeping == true && is_in_playtest == false){
		//draw_sprite( oPlayer.Sleep_Meter, (NotSleepKirby_SleepTimerRelease/NotSleepKirby_SleepTimer), x, y - 60)
		if (NotSleepKirby_Sleep_Hat_Flash == false){
			if (spr_dir == 1){
				if (NotSleepKirby_hat_timer2 != 6){
					draw_sprite( SleepKirby_enemy_hat, NotSleepKirby_hat_timer2, x + sleep_kirby_hat_offset_x, y - char_height + 40 + sleep_kirby_hat_offset_y)
				} else {
					draw_sprite( SleepKirby_enemy_hat, 6, x + sleep_kirby_hat_offset_x, y - char_height + 40 + sleep_kirby_hat_offset_y)
				}
			} else if (spr_dir == -1){
				if (NotSleepKirby_hat_timer2 != 6){
					draw_sprite( SleepKirby_enemy_hat_otherdir, NotSleepKirby_hat_timer2, x + sleep_kirby_hat_offset_x, y - char_height + 40 + sleep_kirby_hat_offset_y)
				} else {
					draw_sprite( SleepKirby_enemy_hat_otherdir, 6, x + sleep_kirby_hat_offset_x, y - char_height + 40 + sleep_kirby_hat_offset_y)
				}
			}
		}
	}
}

/*
if (other_player_id == NotSleepKirbyID){
	can_shield = false
	//oh my god this is gonna be fun to fight :)
	if (NotSleepKirby_IsSleeping){
		if (state_timer == -1){
			state_timer = 1
			NotSleepKirby_SleepTick = 1
			NotSleepKirby_Sleep_Hat_Flash = false;
		}
		NotSleepKirby_hat_timer++;
		if (NotSleepKirby_hat_timer == 4 && NotSleepKirby_hat_timer2 != 6){
			NotSleepKirby_hat_timer = 0
			NotSleepKirby_hat_timer2++;
		}
		if (spr_dir == 1){
			if (NotSleepKirby_hat_timer2 != 6){
				draw_sprite( oPlayer.SleepKirby_enemy_hat, NotSleepKirby_hat_timer2, x, y - char_height + 34)
			} else {
				draw_sprite( oPlayer.SleepKirby_enemy_hat, 6, x, y - char_height + 34)
			}
		} else {
			if (NotSleepKirby_hat_timer2 != 6){
				draw_sprite( oPlayer.SleepKirby_enemy_hat_otherdir, NotSleepKirby_hat_timer2, x, y - char_height + 34)
			} else {
				draw_sprite( oPlayer.SleepKirby_enemy_hat_otherdir, 6, x, y - char_height + 34)
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
					set_state(PS_FIRST_JUMP);
				}
				if ((NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 10
				|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 8
				|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 6
				|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 4
				|| (NotSleepKirby_SleepTimerRelease - NotSleepKirby_SleepTimer) == 2){
					NotSleepKirby_Sleep_Hat_Flash = true;
				} else {
					NotSleepKirby_Sleep_Hat_Flash = false
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
				set_state(PS_FIRST_JUMP);
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

//if (NotSleepKirby_IsSleeping == false){
	if (get_player_damage( player ) > 80){
		NotSleepKirby_SleepTimerRelease = 80
	} else {
		NotSleepKirby_SleepTimerRelease = get_player_damage( player ) - 0
	}
//}
*/