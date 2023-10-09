//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var torchwood_exists = false;

with (obj_article1){
    if (player_id == other.id){
        var torchwood_exists = true;
    }
}

if (attack == AT_JAB){
	if (window == 3){
        if (((attack_pressed && left_down) || (left_stick_pressed && !left_strong_pressed)) && spr_dir = 1){
		    set_attack( AT_EXTRA_1 );
		}
        if (((attack_pressed && right_down) || (right_stick_pressed && !right_strong_pressed) ) && spr_dir = -1){
		    set_attack( AT_EXTRA_1 );
	    }
	}
}

if (attack == AT_FTILT){
	if (window == 2 || window == 5) && (window_timer == 1){
		move_cooldown[AT_FTILT] = 30
	}
}

if (attack == AT_EXTRA_1){
	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
}

if (has_rune("A")){
	if (attack == AT_DATTACK){
		if (window < 3){
			can_ustrong = true
		}
	}
}

if (attack == AT_FAIR){
	if (has_rune("N")){
		if (window == 2){
			hsp = clamp(hsp, -3, 3);
			vsp -= gravity_speed * 2 / 3;
			vsp = min(vsp, 5);
			if (window_timer == 4){
				create_hitbox( AT_FAIR, 1, x+8*spr_dir, y-24 );
				create_hitbox( AT_FAIR, 2, x+8*spr_dir, y-24 );
				create_hitbox( AT_FAIR, 3, x+8*spr_dir, y-24 );
				sound_play (sound_get ("throw"));
			}
			if (window_timer == 8){
				create_hitbox( AT_FAIR, 1, x+8*spr_dir, y-24 );
				create_hitbox( AT_FAIR, 2, x+8*spr_dir, y-24 );
				create_hitbox( AT_FAIR, 3, x+8*spr_dir, y-24 );
				sound_play (sound_get ("throw"));
			}
			if (window_timer == 12){
				create_hitbox( AT_FAIR, 1, x+8*spr_dir, y-24 );
				create_hitbox( AT_FAIR, 2, x+8*spr_dir, y-24 );
				create_hitbox( AT_FAIR, 3, x+8*spr_dir, y-24 );
				sound_play (sound_get ("throw"));
			}
		}
	}
}

if (attack == AT_BAIR){
    if (window == 1 && window_timer == 12){
        spr_dir = spr_dir*-1
	}
}

if (attack == AT_DAIR){
	if !(has_rune("C")){
		if (window == 1 && window_timer == 1){
			hover_used = true;
			hover_pratfall = true;
			hover_store_jump = djumps;
			djumps = max_djumps;
		}
	}
	if (window == 1 || window >= 4){
        can_fast_fall = true;
    }else{
	    can_fast_fall = false;
		hsp = clamp(hsp, -4, 4);
	}
	if (window == 2){
        can_wall_jump = true
		/*
		if (left_down && !right_down){
            spr_dir = -1
        }
		if (right_down && !left_down){
            spr_dir = 1
        }
		*/
		if (attack_pressed){
			sound_stop(asset_get("sfx_spin_longer"));
			window = 3;
			window_timer = 0;
		}
		if (window_timer == 72){
			window = 5;
			window_timer = 0;
		}
		if (shield_pressed){
			if (has_airdodge){
				sound_stop(asset_get("sfx_spin_longer"));
				set_state( PS_AIR_DODGE );
				state_timer = 0;
			} else {
				window = 5;
				window_timer = 0;
			}
		}
	}
	if (window == 2 || window == 3){
		vsp = -0.5;
	}
}

if (attack == AT_NSPECIAL){
    if (window == 2){
		if free{
            hsp = clamp(hsp, -3, 3);
			vsp -= gravity_speed * 2 / 3;
			vsp = min(vsp, 4);
		}
		//releases
	    if (window_timer >= 8 && window_timer < 12){
			nspecial_charge = 0
		    if (!special_down){
			    window = 3
				window_timer = 0
			}
		}
		if (window_timer >= 16 && window_timer < 28){
			nspecial_charge = 1
		    if (!special_down){
			    window = 5
				window_timer = 0
			}
		}
		if (window_timer >= 32 && window_timer < 44){
			nspecial_charge = 2
		    if (!special_down){
			    window = 7
				window_timer = 0
			}
		}
		if (window_timer >= 48 && window_timer < 60){
			nspecial_charge = 3
		    if (!special_down){
			    window = 9
				window_timer = 0
			}
		}
		if (window_timer >= 64){
			nspecial_charge = 4
		    if (!special_down){
			    window = 11
				window_timer = 0
			}
		}
		//window loop
		if (window_timer == 96 && special_down){
		    window_timer = 64
	    }
		//cancel
		if (shield_pressed){
		    window = 14
		    window_timer = 0
			clear_button_buffer( PC_SHIELD_PRESSED )
			move_cooldown[AT_NSPECIAL] = 0
	    }
	}
	if (window == 1){
		if (window_timer == 9){
			//stored charges
			if (nspecial_charge == 1){
				window = 2
			    window_timer = 16
			}
		    if (nspecial_charge == 2){
				window = 2
			    window_timer = 32
			}
		    if (nspecial_charge == 3){
				window = 2
			    window_timer = 48
			}
		    if (nspecial_charge >= 4){
			    window = 11
			    window_timer = 0
			}
		}
	}
	if (window == 5 || window == 7 || window == 9 || window == 11){
		if (!has_rune("H")){
			nspecial_charge = 0
		}
	}
	//projectile creation
	if (window == 4){
	    if (window_timer == 1){
	        create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-15 );
			sound_play (sound_get ("throw"));
			move_cooldown[AT_NSPECIAL] = 60
		}
	    if (window_timer == 12){
            window = 13
			window_timer = 0
		}
	}
	if (window == 6){
	    if (window_timer == 1){
		    create_hitbox( AT_NSPECIAL, 1, x-8*spr_dir, y-23 );
			sound_play (sound_get ("throw"));
			move_cooldown[AT_NSPECIAL] = 60
		}
	    if (window_timer == 5){
	        create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-15 );
			sound_play (sound_get ("throw"));
		}
	    if (window_timer == 12){
            window = 13
			window_timer = 0
		}
	}
	if (window == 8){
	    if (window_timer == 9){
		    create_hitbox( AT_NSPECIAL, 1, x+28*spr_dir, y-19 );
			sound_play (sound_get ("throw"));
			move_cooldown[AT_NSPECIAL] = 60
		}
		if (window_timer == 1){
		    create_hitbox( AT_NSPECIAL, 1, x-8*spr_dir, y-23 );
			sound_play (sound_get ("throw"));
		}
	    if (window_timer == 5){
	        create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-15 );
			sound_play (sound_get ("throw"));
		}
	    if (window_timer == 12){
            window = 13
			window_timer = 0
		}
	}
	if (window == 10){
	    if (window_timer == 5){
	    	create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-33 );
			sound_play (sound_get ("throw"));
			move_cooldown[AT_NSPECIAL] = 60
		}
		if (window_timer == 2){
		    create_hitbox( AT_NSPECIAL, 1, x+28*spr_dir, y-19 );
			sound_play (sound_get ("throw"));
		}
		if (window_timer == 1){
		    create_hitbox( AT_NSPECIAL, 1, x-8*spr_dir, y-23 );
			sound_play (sound_get ("throw"));
		}
	    if (window_timer == 8){
	        create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-15 );
			sound_play (sound_get ("throw"));
		}
	    if (window_timer == 12){
            window = 13
			window_timer = 0
		}
	}
	if (window == 12){
	    if (window_timer == 1){
		    create_hitbox( AT_NSPECIAL, 1, x+12*spr_dir, y-51 );
			sound_play (sound_get ("throw"));
			move_cooldown[AT_NSPECIAL] = 60
		}
		if (window_timer == 3){
	    	create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-33 );
			sound_play (sound_get ("throw"));
		}
		if (window_timer == 10){
		    create_hitbox( AT_NSPECIAL, 1, x+28*spr_dir, y-19 );
			sound_play (sound_get ("throw"));
		}
		if (window_timer == 4){
		    create_hitbox( AT_NSPECIAL, 1, x-8*spr_dir, y-23 );
			sound_play (sound_get ("throw"));
		}
	    if (window_timer == 7){
	        create_hitbox( AT_NSPECIAL, 1, x+8*spr_dir, y-15 );
			sound_play (sound_get ("throw"));
		}
	}
	//endlag skips cancel window
	if (window == 13){
	    if (window_timer == 8){
            set_state( PS_IDLE );
		}
	}
}

if (attack == AT_FSPECIAL){
    if (window == 2){
		if free{
            hsp = clamp(hsp, -3, 3);
			vsp -= gravity_speed * 2 / 3;
			vsp = min(vsp, 5);
		}
	    if (window_timer == 1){
            if (bean_bomb_recharge >= 450){
                create_hitbox( AT_FSPECIAL, 1, x+12*spr_dir, y-36 );
				sound_play (sound_get("bean_fire"));
		        bean_bomb_recharge = 0
	        } else if (bean_bomb_recharge < 450){
	        	sound_play (sound_get ("buzzer"));
			}
        }
	}
}

if (attack == AT_USPECIAL){
	if (window == 1){
		if free{
            hsp = clamp(hsp, -2, 2);
		}
	}
	if (window == 2){
	    with (obj_article1){
		    if player_id = other.id{
	            if place_meeting(x, y, other) && (state != 2){
				    with player_id{
						set_attack( AT_USPECIAL_2 );
						take_damage (player, -1, 3)
						sound_play (sound_get ("wakeup"));
					}
					state = 2
					state_timer = 0
				}
			}
		}
	}
	if (window = 4){
        can_wall_jump = true
	}
	if (window != 1){
	    if (!free){
	        window = 4
            window_timer = 24
		}
	}
}

if (attack == AT_USPECIAL_2){
	hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
	if (window == 1){
	    can_fast_fall = false
		soft_armor = 12
		if (window_timer mod 4 == 0){
			spawn_hit_fx(x - 18,y,4)
		}
	}
	if (window != 1){
        can_wall_jump = true
	    can_fast_fall = true
		soft_armor = 0
		if (!free){
	        window = 3
            window_timer = 8
		}
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2){
		if free{
			hsp = clamp(hsp, -2, 2);
			vsp -= gravity_speed * 2 / 3;
			vsp = clamp(vsp, -4, 1.5);
		}
        if (window_timer == 1){
			if (torchwood_exists){
				with (obj_article1){
					if (player_id == other.id){
						shovel = true
					}
				}
			}
			if (torchwood_recharge >= 450){
				if (!free){
                    instance_create(x + (spr_dir*60),y - 0,"obj_article1");
				} else if (free){
				    instance_create(x + (spr_dir*30),y - 0,"obj_article1");
				}
				sound_play (sound_get ("plant"));
				torchwood_recharge = 0
			} else if (!torchwood_exists){
			    sound_play (sound_get ("buzzer"));
			}
        }
    }
}

if (attack == AT_FSTRONG){
	if (has_rune("I")){
		airraid_used = true
		can_fast_fall = false
		fall_through = true
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 4;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
	}
	if (has_rune("O")){
		if (strong_charge == 60) {
			attack = 49;
			window = 0;
			window_timer = 0;
			state_timer = 0;
		}
	}
}

if (attack == AT_DSTRONG && window < 5){
	if (window == 3 && window_timer >= 3){
        with oPlayer if id != other.id && split_grabbed1 == other.id {
            x = lerp(x + 30*other.spr_dir, other.x + 30*other.spr_dir, 0.5)
            y = lerp(y - 2, other.y - 2, 0.5)
        }
    }
	if (window == 4 && window_timer >= 3){
        with oPlayer if id != other.id && split_grabbed2 == other.id {
            x = lerp(x - 30*other.spr_dir, other.x - 30*other.spr_dir, 0.5)
            y = lerp(y - 2, other.y - 2, 0.5)
			split_grabbed1 = false;
        }
    }
	if (window == 5){
        with oPlayer if id != other.id && split_grabbed2 == other.id {
			split_grabbed2 = false;
        }
    }
}

if (attack == AT_TAUNT){
	if (window == 4 && window_timer >= 16) || window == 5{
		iasa_script();
	}
}

if (attack == AT_TAUNT_2){
	if (window > 1){
		can_jump = true;
	}
	if (window > 2){
		if (!taunt_down){
			set_state( PS_IDLE );
		}
	}
	/*
	if (window == 4){
		if (left_down && !right_down){
			hsp = -1;
		}
		if (!left_down && right_down){
			hsp = 1;
		}
	}
	*/
}

if (attack == 49){
	super_armor = true;
	hurtboxID.sprite_index = get_attack_value(49, AG_HURTBOX_SPRITE);
	if (free){
		fall_through = true;
		if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 1;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
	}
	if (window == 2 || window == 3 || window == 4){
		if (window_timer mod 2 == 0){
			create_hitbox( 49, 1, x+16*spr_dir, y-(19 + random_func(0, 33, true)) );
		}
		if (window_timer mod 2 == 1){
			create_hitbox( 49, 2, x+16*spr_dir, y-(19 + random_func(0, 33, true)) );
		}
		if (window_timer mod 5 == 0){
			sound_play (asset_get ("sfx_bubblepop"));
		}
	}
}