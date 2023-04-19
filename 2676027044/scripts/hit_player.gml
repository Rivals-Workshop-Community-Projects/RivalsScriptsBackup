// hit_player.gml
// calle when you hit a player
// Use hit_player_obj to reference the player object that was hit. 
// Use hit_player to reference which player you hit
// Use my_hitboxID to reference the hitbox you hit them with
// To change the knockback given, edit hit_player_obj.orig_knock

switch(my_hitboxID.attack){
	
	case AT_DSPECIAL:
		if (my_hitboxID.orig_player == player){
			if ( my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
				hit_player_obj.mimikyu_curse = true;
			}
			if (my_hitboxID.hbox_num == 1){
				hit_player_obj.mimikyu_curse_tick = clamp(hit_player_obj.mimikyu_curse_tick + 1, 0, 3);
			}
		}
	break;
	
	case AT_DSPECIAL_AIR:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
				hit_player_obj.mimikyu_curse = true;
			}
		}
	break;
	
	case AT_FTILT:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num > 1){
				hit_player_obj.mimikyu_curse_tick = clamp(hit_player_obj.mimikyu_curse_tick + 1, 0, 3);
			}
		}
	break;
	
	case AT_USPECIAL:
		if (my_hitboxID.orig_player == player){
			hit_player_obj.mimikyu_curse_tick = clamp(hit_player_obj.mimikyu_curse_tick + 1, 0, 3);
		}
	break;
	
	case AT_DAIR:

		if (hit_player_obj.mimikyu_curse && my_hitboxID.hbox_num == 1){
			
			// Play Sound
			sound_play( sound_get("getboosted"));

			with(hit_player_obj){
				take_damage(player, other, 5);
			}

			var nail_hfx = spawn_hit_fx( my_hitboxID.x, my_hitboxID.y + 20, hfx_nail) 
			nail_hfx.depth = -20;
						
			// Change KB
			if (my_hitboxID.hbox_num == 1){
				with (hit_player_obj){
					orig_knock = 6 + get_player_damage(player) * 0.8 * 0.12 * other.hit_player_obj.knockback_adj;
				}
			}
			
			hit_player_obj.mimikyu_curse_tick = 0;
			hit_player_obj.mimikyu_curse = false;
		}
		if (my_hitboxID.hbox_num == 1){ //remove this line if you want it to play on every hitbox, otherwise find the hitbox in the atk file you want and replace 1 with it
            //So if you want to do the sweetspot which in this unnamed example is hitbox 3, do my_hitboxID.hbox_num == 3
            sound_play(sound_get("sharp"), 0, noone, 1, 1)
            sound_play(sound_get("slam"), 0, noone, 1, 1)
            //the extra variables mean: looping (0 false 1 true), panning (noone defaults to where the character is), volume and pitch. u can mess with them, pitch and volume are between 0 and 2.
        }
	break;
	
	case AT_NSPECIAL:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 1){
				hit_player_obj.mimikyu_curse_tick = clamp(hit_player_obj.mimikyu_curse_tick + 1, 0, 3);
			}
			if (my_hitboxID.hbox_num == 2){
				hit_player_obj.mimikyu_curse_tick = clamp(hit_player_obj.mimikyu_curse_tick + 2, 0, 3);
			}
			if (my_hitboxID.hbox_num == 3){
				hit_player_obj.mimikyu_curse_tick = clamp(hit_player_obj.mimikyu_curse_tick + 3, 0, 3);
			}
		}
	break;
	
	case AT_USTRONG:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 1){
				landed_curse_tipper = true;
					
				if (hit_player_obj.mimikyu_curse = true){
					hit_player_obj.hitstop = hit_player_obj.hitstop + 10;
					
					hit_player_obj.mimikyu_curse_tick = 0;
					hit_player_obj.mimikyu_curse = false;
					
					// Play Sound
					sound_play( sound_get("getboosted"));

					with(hit_player_obj){
						take_damage(player, other, 5);
					}
					var nail_hfx = spawn_hit_fx( my_hitboxID.x, my_hitboxID.y + 20, hfx_nail) 
					nail_hfx.depth = -20;

					// Change KB
					if (my_hitboxID.hbox_num == 1){
						with (hit_player_obj){
							orig_knock = 9 + get_player_damage(player) * 0.9 * 0.12 * other.hit_player_obj.knockback_adj;
						}
					}
				}
					
			}	
			if (my_hitboxID.hbox_num == 2){ 
				sound_play(asset_get("sfx_blow_heavy1"), 0, noone, 1, 1)  	
			}
		}
	break;
	
	case AT_DSTRONG:
		if (my_hitboxID.orig_player == player){
			if (hit_player_obj.mimikyu_curse){
				
				// Play Sound
				sound_play( sound_get("getboosted"));
				// Play Heal VFX
				set_player_damage(player, clamp(get_player_damage(player) - 12, 0, 999) )

				with(hit_player_obj){
					take_damage(player, other, 6);
				}
				
				// Change KB
				if (my_hitboxID.hbox_num == 1){
					with (hit_player_obj){
						orig_knock = 8 + get_player_damage(player) * 1.1 * 0.12 * other.hit_player_obj.knockback_adj;
					}

				}
				if (my_hitboxID.hbox_num == 2){
					with (hit_player_obj){
						orig_knock = 9 + get_player_damage(player) * 1.2 * 0.12 * other.hit_player_obj.knockback_adj;		
					}
				}
				
				hit_player_obj.mimikyu_curse_tick = 0;
				hit_player_obj.mimikyu_curse = false;
			}
		}
	break;
	
	case AT_FSPECIAL:
		if (my_hitboxID.orig_player == player){
			if (hit_player_obj.has_hit_player && hit_player_obj.hit_player_obj == self){
				hit_player_obj.hitpause = false;
				hit_player_obj.hitstop = 0;
				exit;
			}
		
			hit_player_obj.can_wall_tech = false;
			if (my_hitboxID.hbox_num == 1 && my_hitboxID.orig_player == player){
				set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
				
				if (!hit_player_obj.super_armor){
						
					attack_end();
					window = 1;
					window_timer = 1;
					state_timer = 1;

					if (hit_player_obj.mimikyu_curse){
						hit_player_obj.x = x;
						hit_player_obj.y = y;
						hit_player_obj.mimikyu_curse_tick = 0;
						hit_player_obj.mimikyu_curse = false;
						
						attack = AT_FSPECIAL_AIR;			
						hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE);
					}
					else {
						if (attack != AT_FSPECIAL_AIR){
							hit_player_obj.x = x + (spr_dir * 30);
							hit_player_obj.y = y;
							attack = AT_FSPECIAL_2;
							hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
						}
					}
				my_hitboxID.hitbox_timer = 100;

				}			
			}
		}
	break;
	
	case AT_FSPECIAL_2:
	
		if (my_hitboxID.orig_player == player){
			hit_player_obj.can_wall_tech = false;
			if (my_hitboxID.hbox_num < 5){
				hit_player_obj.visible = false;
				hit_player_obj.x = x + (spr_dir * 30);
				hit_player_obj.y = y;
			}
			
			if (my_hitboxID.hbox_num == 5){
				hit_player_obj.visible = true;
			}
		}
		
	break;
	case AT_FSPECIAL_AIR:

		if (my_hitboxID.orig_player == player){
			hit_player_obj.can_wall_tech = false;
			if (my_hitboxID.hbox_num < 5 || my_hitboxID.hbox_num == 6){
				hit_player_obj.visible = false;
				hit_player_obj.x = x;
				hit_player_obj.y = y;
			}
			
			if (my_hitboxID.hbox_num == 5){
				hit_player_obj.visible = true;
			}
				if (my_hitboxID.hbox_num == 5){ 
				sound_play(sound_get("slash"), 0, noone, 1, 1)
				sound_play(sound_get("cut"), 0, noone, 1, 1)
			}
		}
	break;
	case AT_BAIR:
		if (my_hitboxID.orig_player == player){
			if (my_hitboxID.hbox_num == 1){ 
				sound_play(asset_get("sfx_blow_medium3"), 0, noone, 1, 1)
			}
			
			if (hit_player_obj.mimikyu_curse && my_hitboxID.hbox_num == 1){
				
				// Play Sound
				sound_play( sound_get("getboosted"));
				
				var nail_hfx = spawn_hit_fx( my_hitboxID.x - 32 * spr_dir, my_hitboxID.y - 10, hfx_nail) 
				nail_hfx.depth = -20;
				
				with(hit_player_obj){
					take_damage(player, other, 7);
				}
				
				// Change KB
				if (my_hitboxID.hbox_num == 1){
					with (hit_player_obj){
						orig_knock = 9 + get_player_damage(player) * 1.0 * 0.12 * other.hit_player_obj.knockback_adj;
					}

				}
				
				hit_player_obj.mimikyu_curse_tick = 0;
				hit_player_obj.mimikyu_curse = false;
			}
		}
    break;

}
