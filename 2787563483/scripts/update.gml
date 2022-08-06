// with owner{
// 	if get_player_damage(player)
// }
with oPlayer{
	// if recheck_copy_ability{
	// 	abilityCheck()
		
	// }
	if !clone{
	if "kf_buddy_set_up" not in self or ( temp_level == 0 && player >= 5) or other.duplicate_buddy exit

		var calc_damage = get_player_damage(player)
		var diff_damage = kf_init_damage - calc_damage
		
		if !kf_done_in && state != PS_DEAD{
			if calc_damage != kf_init_damage{
				kf_health_points += diff_damage
				if diff_damage < 0{
				hurt_event()	
				}
				if diff_damage < -10{
					kf_hud_shake_timer = 10
				} else if diff_damage < -5{
					kf_hud_shake_timer = 5
				} else if (diff_damage < -1){
					kf_hud_shake_timer = 1
				} else if (diff_damage >= -1){
					kf_hud_shake_timer = 0
				}
				set_player_damage(player, kf_init_damage)
				//print_debug("a man")
			}
		}
		
		if bounce_SFX_played && state_cat != (SC_HITSTUN){
			bounce_SFX_played = false
		}
		
		if x < left_wall{
			x = left_wall
			if state_cat == (SC_HITSTUN){
			vsp *= 0.9;
			hsp *= -0.9;
			if !bounce_SFX_played{
				sound_play(asset_get("sfx_bounce"))
				bounce_SFX_played = true
			}
			var retribution = last_player
				with oPlayer{
					if player == retribution{
					var close_enough = spawn_hit_fx( other.x, other.y, 303)
					close_enough.spr_dir *= -1
					}
				}
			// 	invincible = 1
			// 	invince_time = 6
				
			}
		} else if x > right_wall{
			x = right_wall
			if state_cat == (SC_HITSTUN){
				vsp *= 0.9;
				hsp *= -0.9;
			if !bounce_SFX_played{
				sound_play(asset_get("sfx_bounce"))
				bounce_SFX_played = true
			}
			var retribution = last_player
				with oPlayer{
					if player == retribution{
					spawn_hit_fx( other.x, other.y - 16, 303)
					close_enough.spr_dir *= -1
					}
				}
			
			// 	invincible = 1
			// 	invince_time = 6
			}
		}
		

		if y < 0{
			y = 0
			if state_cat == (SC_HITSTUN){
				vsp *= -0.9;
				hsp *= 0.9;
				// invincible = 1
				// invince_time = 6
				// sound_stop(asset_get("sfx_bounce"))
				// sound_play(asset_get("sfx_bounce"))
				// spawn_hit_fx( x, y, 303)
			}
		}
		
		if y > bottom_wall{
			kf_health_points -= 50
			kf_hud_shake_timer = 20
			shake_camera(5, 10)
			hurt_event()
			if kf_health_points > 0{
				x = kf_last_x
				y = kf_last_y
				free = false
				set_state(PS_PRATLAND)
			}
		}
		
		//noooo mooooreee corner infinites *vineboom*
		if x <= left_wall + 48 {
			if state_cat == (SC_HITSTUN) && hitstop == hitstop_full && (enemy_hitboxID.type == 1){
				var retribution = last_player
				with oPlayer{
					if player == retribution{
					//print_debug("argh")
					x += 12
					}
				}
			}
		} else if x >= right_wall - 48 {
			if state_cat == (SC_HITSTUN) && hitstop == hitstop_full && (enemy_hitboxID.type == 1){
				var retribution = last_player
				with oPlayer{
					if player == retribution{
					//print_debug("argho")
					x -= 12
					}
				}
			}
		}
		
		knockback_scaling = 0.75
		//damage_scaling = 1
		//can_tech = false
		//can_wall_tech = false
		//dumb_di_mult = 0.2
		//sdi_mult = 0.2
		
		if kf_hud_shake_timer > 0{
			hud_shake()
			kf_hud_shake_timer -= 1
		} else if kf_hud_shake_timer == 0 {
			kf_hud_shake_x = 0
			kf_hud_shake_y = 0
		}
		
		if kf_got_hurt > 0{
			kf_got_hurt--
		}
		
		// if scale_bonus > 0 {
		// 	scale_bonus -= 1
		// } 
		// if scale_bonus < 0 {
		// 	scale_bonus += 1
		// }
		
		if kf_health_points > kf_total_health{
			kf_health_points = kf_total_health
		}
		
		
		if kf_health_points < 0 {
			kf_health_points = 0
		}
		
		if !free && ground_type == 1{
			kf_last_x = x
			kf_last_y = y
		}
		
		if state == PS_RESPAWN{
			set_player_damage(player, kf_init_damage)
			kf_done_in = false
			kf_health_points = kf_total_health
			hitstop = 0
			kf_last_x = x
			kf_last_y = y
		}
		if kf_health_points <= 0 && state != PS_DEAD{
			invincible = 1
			invince_time = 1
			if !kf_done_in{
				sound_play(other.hit_sfx)
				set_state( PS_TUMBLE )
				hitpause = 1
				hitstop = 40
				//scale_bonus = 0.5
				kf_hud_shake_timer = 20
				kf_done_in = true
				exit
			}
			if kf_done_in && !hitpause{
				invincible = 0
				invince_time = 0
				create_deathbox(x,y,120,120,player,true,0,10,2)
				//print_debug(player)
				sound_play(other.ko_sfx)
			}
		}
		
		// if state == PS_HITSTUN && !hitpause{
		// 	invincible = 1
		// 	invince_time = 2
		// }
		
		// if state == PS_HITSTUN_LAND{
		// 	invincible = 1
		// 	invince_time = 2
		// }
		
		

}
}
if get_match_setting(SET_PRACTICE) && !barrier_enabled{
	with owner{
		if down_down && taunt_pressed {
			other.barrier_enabled = true
		}
	}
} else if barrier_enabled{
	with owner{
		if up_down && taunt_pressed {
			other.barrier_enabled = false
		}
	}
}
#define hurt_event()
//fr it hurts.
kf_got_hurt = 7
#define hud_shake()
if get_local_setting(SET_HUD_SHAKE) == 1{
var random_time = get_gameplay_time() mod 5
kf_hud_shake_x = (random_func(random_time, kf_hud_shake_timer*2 + 1, true) - kf_hud_shake_timer)*2
kf_hud_shake_y = (random_func(random_time + 5, kf_hud_shake_timer*2 + 1, true) - kf_hud_shake_timer)*2
//print_debug(kf_hud_shake_y)
}