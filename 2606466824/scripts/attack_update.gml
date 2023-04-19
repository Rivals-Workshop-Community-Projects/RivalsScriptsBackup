//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (window == 1 && window_timer == 2) {
	for (i = 0; i < 10; i++) {
		reset_hitbox_value( attack, i, HG_BASE_KNOCKBACK );
		reset_hitbox_value( attack, i, HG_KNOCKBACK_SCALING );
		if (revengeMult > 1 && get_hitbox_value(attack, i, HG_REVENGE_KB_MULTIPLIER) != 0 && false) {
			set_hitbox_value(attack, i, HG_BASE_KNOCKBACK, get_hitbox_value(attack, i, HG_BASE_KNOCKBACK) * get_hitbox_value(attack, i, HG_REVENGE_KB_MULTIPLIER));
			if (shield_down || true) {
				set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) * get_hitbox_value(attack, i, HG_REVENGE_KB_MULTIPLIER));
			} else {
				set_hitbox_value(attack, i, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, i, HG_KNOCKBACK_SCALING) * power(get_hitbox_value(attack, i, HG_REVENGE_KB_MULTIPLIER), 1.5));
			}
		}
	}
}

if (attack == AT_PHONE) {
	if (window == 1 && window_timer == 2) {
		sound_play(asset_get("sfx_fishing_rod_catch"));
		sound_play(asset_get("sfx_swipe_medium2"));
	}
	if (window == 1 && window_timer == 14) {
		sound_play(asset_get("sfx_land_med"));
	}
}

if (attack == AT_TAUNT) {
	hsp = 0;			
	vsp = 0;		
	if (window == 1) {
		if (window_timer == 1) {
			sound_play(asset_get("sfx_swipe_weak2"));
		}
		if (window_timer == 3) {
			sound_play(asset_get("sfx_blow_medium1"));
		}
		if (window_timer == 5) {
			if (!hitpause) {
				take_damage(player, player, 1 + round(2 * (revengeMult - 1)));
				if (revengeMult > 1) {
					if (phone_cheats[CHEAT_PERSIST] < 2) {
						revengeMult = 1;
					}
					hitpause = true;
					hitstop = 10;
					sound_play(sound_get("hit_supereffective"));
					revengeHitShakeFrames = hitstop;
				}
			}
		}
		if (window_timer == 17) {
			sound_play(asset_get("sfx_land_heavy"));
			array_push(phone_dust_query, [x + 10*spr_dir, y, "land", spr_dir]);
		}
		if (window_timer == 20) {
			sound_play(asset_get("sfx_swipe_medium2"));
		}
	}
}

if (attack == AT_DATTACK){
	if (window == 1 && window_timer == phone_window_end) {
		array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
	}
	if (window == 1 && window_timer == 1) {
		dattackBounce = 0;
		set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
		set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 13.5);
		set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 3);
	}
	if (dattackBounce > 0 && dattackBounce < 10) {
		destroy_hitboxes();
		window = 1;
		window_timer = 6;
		set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 16.5);
		set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 10);
		set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 30);
		if (dattackBounce == 1) {
			sound_play(sound_get("nspec_grab"));
		}
		if (dattackBounce == 9) {
			sound_play(sound_get("nspec_launch"));
		}
		dattackBounce++;
	}
	
	if (window == 2 && free) {
		vsp = 0;
	}

    if (window == 3){
		if (has_hit) {
			window = 4;
			window_timer = 0;
			sound_play(sound_get("popoff_dattack"));
		} else if (window_timer == 12) {
			sound_play(asset_get("sfx_land_med"));
			array_push(phone_dust_query, [x, y, "land", spr_dir]);
		}
    }
	
	if (window == 4 && window_timer == 4) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
	}
}

if (attack == AT_JAB){
	if (window == 1) {didFullJab = 0;}
    if (window == 9 && has_hit){
		didFullJab = 1;
		window = 10;
		sound_play(sound_get("popoff_jab"));
    }
	if (window == 7 && window_timer == 1) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x + 10*spr_dir, y, "walk", spr_dir]);
	}
	
	if (window == 6 && (has_hit && window_timer == 17 || !has_hit && window_timer == 25)) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x + 10*spr_dir, y, "walk", spr_dir]);		
	}
	
	if (window == 2 && window_timer == 1) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x + 10*spr_dir, y, "walk", spr_dir]);		
	}
	
	////
	//thank you supersonic
    if (sign(right_down-left_down) == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player) {
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time {
            set_state(PS_IDLE);
            was_parried = false; 
            //if you get ftilt frame-perfectly on parry you can carry the parry lag over
            //that doesn't happen in base cast so this fixes that
        }
    } else {
        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
    }
	////
}

if (attack == AT_UTILT){
	
	if (window == 1 && window_timer == 2) {
		array_push(phone_dust_query, [x, y, "jump", spr_dir]);		
	}
	
	if (window == 3 && (has_hit && window_timer == 4 || !has_hit && window_timer == 10)) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x, y, "land", spr_dir]);		
	}
}

if (attack == AT_FTILT){
	if (window == 1 && window_timer == 7) {
		sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.65, 1);		
	}
	
	if (window == 1 && window_timer == phone_window_end) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x + 30*spr_dir, y, "walk", spr_dir]);		
	}
}

if (attack == AT_DTILT){	
	if (window == 3 && (has_hit && window_timer == 7 || !has_hit && window_timer == 10)) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x, y, "land", spr_dir]);		
	}
}

if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 1) {
		array_push(phone_dust_query, [x + 20*spr_dir, y, "dash_start", spr_dir]);	
	}
    if (window == 4 && has_hit){
		window = 7;
    }
	if (window == 5 && window_timer == 1) {
		sound_play(asset_get("sfx_land_heavy"));
		array_push(phone_dust_query, [x - 5*spr_dir, y, "land", spr_dir]);
		array_push(phone_dust_query, [x + 35*spr_dir, y, "land", -1 * spr_dir]);
	}
	if (window == 7 && window_timer == 10) {
		sound_play(asset_get("sfx_land_med"));
		array_push(phone_dust_query, [x, y, "land", spr_dir]);	
	}
	if (window == 7 && window_timer == 20) {sound_play(sound_get("popoff_dsmash"));}
}

if (attack == AT_USTRONG){
	if (window == 2 && window_timer == 1) {
		array_push(phone_dust_query, [x + 15 * spr_dir, y, "dash_start", -1 * spr_dir]);	
	}
    if (window == 4 && has_hit){
		window = 5;
    }
	if (window == 5 && window_timer == 15) {
		sound_play(sound_get("popoff_usmash"));
	}
}

if (attack == AT_DSTRONG){
	if (strong_charge > 0) {
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_HSPEED, 0);
	} else {
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_HSPEED, -3);
	}
	
	if (window == 2 && window_timer == 1) {
		sound_play(asset_get("sfx_spin"), false, noone, 0.65, 1);	
		target = noone;
	}
    if (window == 3) {
		if (window_timer == 3 || window_timer == 10) {
			sound_play(asset_get("sfx_swipe_medium2"));
		}
		if (window_timer == 17) {
			sound_play(asset_get("sfx_burnapplied"));
		}
		
		if (window_timer % 4 == 0 && right_down - left_down != 90) {
			array_push(phone_dust_query, [x + 5 * spr_dir, y, "walk", spr_dir]);					
		}
		
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, (5 * spr_dir * (right_down - left_down) * ((24 - window_timer) / 21)) + 1);
		
		if (instance_exists(target) && target != noone && target.hitpause == false) {
			target.x = ((1*target.x) + x - (40 * target.spr_dir))/2;
			target.y = ((1*target.y) + y - 10)/2;
		}
	}
}

if (attack == AT_FAIR){
	if (window == 1 && window_timer == 1) {
		if (vsp < 0) {vsp += 0.5};
	}
}

if (attack == AT_NSPECIAL){

	if (window == 1) {
		if (window_timer < 3) {
			custom_up_held = 0;
		}
		strong_down = special_down;
		if (strong_down == 1) {
			strong_charge++;
			vsp -= 0.15;
		}
		if (strong_charge > 0 && up_down) {
			custom_up_held+=2;
		}
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
		set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 30);
	}
	if (window == 2 && window_timer == 1) {
		fx = spawn_hit_fx(x + ((4*strong_charge) + 40)*spr_dir, y - 20 - (3*custom_up_held), ropeSmoke);	
		fx.depth = depth + 1;
		if (strong_charge > 6) {
			set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 10);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 30);
			set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 3);
		}
	}
    if (window == 3 && window_timer == 1 && !hitpause) {
		instance_create(x + ((4*strong_charge) + 40)*spr_dir, y - (3*custom_up_held), "obj_article1");
    }
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 999999;
	can_wall_jump = true;
	can_fast_fall = false;
    if (window == 1) {
		if (window_timer == 1) {
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
			set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
			dattackBounce = 0;
		}
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 3);
		fspecmode = 0;
		target = noone;
		grabHeightOffset = 0;
		if (window_timer == phone_window_end) {
			array_push(phone_dust_query, [x - 5*spr_dir, y, "dash_start", spr_dir]);
		}
	}
	
	if (dattackBounce > 0 && dattackBounce < 10) {
		destroy_hitboxes();
		window = 1;
		window_timer = 11;
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 16);
		if (dattackBounce == 1) {
			sound_play(sound_get("nspec_grab"));
		}
		if (dattackBounce == 9) {
			sound_play(sound_get("nspec_launch"));
		}
		dattackBounce++;
		move_cooldown[AT_USPECIAL] = 0;
	}
	
	if (window == 3) {
		if (window_timer == 1 && !free) {
			array_push(phone_dust_query, [x + 15*spr_dir, y, "dash", spr_dir * -1]);			
		}
		if (dattackBounce > 5) {
			vsp = clamp (vsp, -3, 3);
		} else {
			vsp = vsp * 0.95;
		}
	}
	
	if (window == 4) {
		soft_armor = 8;
	} else {
		soft_armor = 0;
	}
	
	if (!instance_exists(target) || target == noone) {
		if (window > 3) {
			print("failsafe time");
			window = 3;
			window_timer = 0;
			target = noone;
		}
	} else {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			target.state = PS_HITSTUN;
			
			if (window == 4) {
				target.x = ease_linear(target.x, x + (42 * spr_dir), window_timer, 4);
				target.y = ease_linear(target.y, y - 10 + grabHeightOffset, window_timer, 4);
				target.hsp = 0;
				target.vsp = -2;
				target.state = PS_HITSTUN;
			}
			if (window == 5 && window_timer == 20) {
				if (phone_cheats[CHEAT_HUG] == 2) {
					window_timer = 1;
					attack_end();
					create_hitbox(AT_FSPECIAL, 2, target.x, target.y);
				}
				if (phone_cheats[CHEAT_HUG] == 1 && move_cooldown[AT_FSPECIAL_2] < 100) {
					window_timer = 1;
					move_cooldown[AT_FSPECIAL_2] += 99;
					attack_end();
					create_hitbox(AT_FSPECIAL, 2, target.x, target.y);
				}
			}
			if (window == 5) {
				target.x = x + (42 * spr_dir);
				target.y = y - 10 + grabHeightOffset;
				target.hsp = 0;
				target.vsp = -2;
				target.state = PS_HITSTUN;
				
				if (up_pressed) {
					attack_end();
					set_attack(AT_UTHROW);
				} else if (down_pressed) {
					attack_end();
					set_attack(AT_DTHROW);
				} else if((left_pressed && spr_dir == -1) || (right_pressed && spr_dir == 1)) {
					attack_end();
					set_attack(AT_FTHROW);
				} else if((left_pressed && spr_dir == 1) || (right_pressed && spr_dir == -1)) {
					attack_end();
					set_attack(AT_NTHROW);
				}
			}
			
			if (window == 5 && window_timer == 58) {
				attack_end();
				if (up_down - down_down > 0) {
					set_attack(AT_UTHROW);
				} else if (up_down - down_down < 0) {
					set_attack(AT_DTHROW);
				} else if (right_down - left_down == 0 || (right_down - left_down) - spr_dir == 0) {
					set_attack(AT_FTHROW);
				} else {
					set_attack(AT_NTHROW);
				}
			}
		}
	}
	
	if(window == 2){
        //ledge snap
        if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
            for (var i = 1; i < 20; i++){
                if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
                    y -= i;
					break;
                }
            }      
        }
    }
	
	if (revengeMult > 1 && window == 2 && !has_hit && !has_hit_player) {
		if (jump_pressed) {
			revengeMult = 1;
			state = PS_DOUBLE_JUMP;
			state_timer = 0;
			fx = spawn_hit_fx(x, y, firehfx);
			fx.depth = depth - 1;
			hsp *= (0.8 - (window_timer * 0.012));
			vsp = -9.5;
			destroy_hitboxes();
		}
	}
} else {
	move_cooldown[AT_FSPECIAL_2] = 0;
}

if (attack == AT_FTHROW) {
	hsp = 0;
	vsp = clamp (vsp, -1, 4);
	vsp *= 0.8;
	if (window == 1 && target != noone) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			target.state = PS_HITSTUN;
			
			if (window_timer == 1) {attack_end();} 
			if (window_timer < 5) {
				target.x = x + 20 * spr_dir;
				target.y = y - 10 + grabHeightOffset;
				target.spr_dir = spr_dir * -1;
			} else if (window_timer < 10) {
				target.x = x - 4 * spr_dir;
				target.y = y - 10 + grabHeightOffset;
				target.spr_dir = spr_dir;
			} else if (window_timer < 15) {
				target.x = x - 16 * spr_dir;
				target.y = y - 10 + grabHeightOffset;
				target.spr_dir = spr_dir;
			} else if (window_timer < 20){
				target.x = x + 2 * spr_dir;
				target.y = y - 10 + grabHeightOffset;
				target.spr_dir = spr_dir * -1;
			}	else {
				target.x = x + 24 * spr_dir;
				target.y = y - 20 + grabHeightOffset;
				target.spr_dir = spr_dir * -1;
			}
		}
		
		if (window_timer == 6) {
			array_push(phone_dust_query, [x - 5*spr_dir, y, "dash", spr_dir * -1]);
		}
		if (window_timer == 16) {
			array_push(phone_dust_query, [x + 5*spr_dir, y, "dash", spr_dir]);
		}
		if (window_timer >= 20) {
			array_push(phone_dust_query, [x + 25*spr_dir, y, "dash_start", spr_dir * -1]);
		}
		
		if (free) {
			set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .8);		
		} else {
			set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .8);
		}
		if (revengeMult > 1 && get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER) != 0) {
			set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, get_hitbox_value(attack, 2, HG_BASE_KNOCKBACK) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
			set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
		}
	} else if (window == 2 && target != noone) {
		target.x = x + 24 * spr_dir;
		target.y = y - 20 + grabHeightOffset;
	}
	if (window != 3) {soft_armor = 999;}
}

if (attack == AT_UTHROW) {
	hsp = 0;
	vsp = clamp (vsp, -1, 4);
	vsp *= 0.8;
	if (window == 1 && target != noone) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			target.state = PS_HITSTUN;
			
			if (window_timer == 1) {attack_end();} 
			if (window_timer < 4) {
				target.x = x + 20 * spr_dir;
				target.y = y - 30 + grabHeightOffset;
				char_height = 62;
			} else if (window_timer < 8) {
				target.x = x + 2 * spr_dir;
				target.y = y - 40 + grabHeightOffset;
				char_height = 58;
			} else if (window_timer < 12) {
				target.x = x + 2 * spr_dir;
				target.y = y - 74 + grabHeightOffset;
				char_height = 82;
			} else if (window_timer < 16){
				target.x = x + 2 * spr_dir;
				target.y = y - 80 + grabHeightOffset;
				char_height = 86;
			} else if (window_timer < 20){
				target.x = x + 2 * spr_dir;
				target.y = y - 54 + grabHeightOffset;
				char_height = 62;
			} else {
				target.x = x + 2 * spr_dir;
				target.y = y - 30 + grabHeightOffset;
				char_height = 52;
			}
		}
		
		if (window_timer == 1) {
			array_push(phone_dust_query, [x + 15*spr_dir, y, "dash", spr_dir * -1]);
		}
		if (window_timer == 9) {
			array_push(phone_dust_query, [x, y, "jump", spr_dir]);
		}
		if (window_timer >= 20) {
			array_push(phone_dust_query, [x - 15*spr_dir, y, "land", spr_dir]);
			array_push(phone_dust_query, [x + 20*spr_dir, y, "land", -1 * spr_dir]);
		}
		
		if (free) {
			set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, .8);			
		} else {
			set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 1);		
		}
		if (revengeMult > 1 && get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER) != 0) {
			set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, get_hitbox_value(attack, 2, HG_BASE_KNOCKBACK) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
			set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
		}
	}
	if (window != 3) {soft_armor = 999;} else {
		char_height = 62;
	}
}

if (attack == AT_DTHROW) {
	hsp = 0;
	vsp = clamp (vsp, -1, 4);
	vsp *= 0.8;
	if (window == 1 && target != noone) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			target.state = PS_HITSTUN;
			
			if (window_timer == 1) {attack_end();} 
			if (window_timer < 4) {
				target.x = x + 20 * spr_dir;
				target.y = y - 42 + grabHeightOffset;
			} else if (window_timer < 8) {
				target.x = x - 20 * spr_dir;
				target.y = y - 56 + grabHeightOffset;
			} else if (window_timer < 12) {
				target.x = x - 18 * spr_dir;
				target.y = y - 66 + grabHeightOffset;
			} else if (window_timer < 16){
				target.x = x - 10 * spr_dir;
				target.y = y - 80 + grabHeightOffset;
			} else {
				target.x = x + 10 * spr_dir;
				target.y = y - 20 + grabHeightOffset;
			}
		}
		
		if (window_timer == 1) {
			array_push(phone_dust_query, [x + 15*spr_dir, y, "dash", spr_dir * -1]);
		}
		if (window_timer >= 16) {
			array_push(phone_dust_query, [x, y, "land", spr_dir]);
			array_push(phone_dust_query, [x + 25 *spr_dir, y, "land", -1 * spr_dir]);
		}
		
		if (free) {
			set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, .6);		
			set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 270);	
		} else {
			set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, .5);
			set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 85);		
		}
		if (revengeMult > 1 && get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER) != 0) {
			set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, get_hitbox_value(attack, 2, HG_BASE_KNOCKBACK) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
			set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
		}
	}
	if (window != 3) {soft_armor = 999;} else {
		char_height = 62;
	}
}

if (attack == AT_NTHROW) {
	hsp = 0;
	vsp = clamp (vsp, -1, 4);
	vsp *= 0.8;
	if (window == 1 && target != noone) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			target.state = PS_HITSTUN;
			
			if (window_timer == 1) {attack_end();} 
			if (window_timer < 4) {
				target.x = x + 20 * spr_dir;
				target.y = y - 16 + grabHeightOffset;
			} else if (window_timer < 8) {
				target.x = x + 18 * spr_dir;
				target.y = y - 8 + grabHeightOffset;
			} else if (window_timer < 12) {
				target.x = x + 6 * spr_dir;
				target.y = y - 12 + grabHeightOffset;
			} else if (window_timer < 16){
				target.x = x - 0 * spr_dir;
				target.y = y - 20 + grabHeightOffset;
			} else if (window_timer < 20){
				target.x = x - 10 * spr_dir;
				target.y = y - 24 + grabHeightOffset;
			} else {
				target.x = x - 60 * spr_dir;
				target.y = y - 6 + grabHeightOffset;
			}
		}
		
		if (window_timer == 1) {
			array_push(phone_dust_query, [x + 15*spr_dir, y, "dash", spr_dir * -1]);
		}
		if (window_timer >= 20) {
			array_push(phone_dust_query, [x - 80 *spr_dir, y, "land", spr_dir]);
			array_push(phone_dust_query, [x  -40 *spr_dir, y, "land", -1 * spr_dir]);
		}
		
		if (free) {
			set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, .9);
		} else {
			set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 1);	
		}
		if (revengeMult > 1 && get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER) != 0) {
			set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, get_hitbox_value(attack, 2, HG_BASE_KNOCKBACK) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
			set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING) * get_hitbox_value(attack, 2, HG_REVENGE_KB_MULTIPLIER));
		}
	}
	if (window != 3) {soft_armor = 999;} else {
		char_height = 62;
	}
}

if (attack == AT_USPECIAL){
	uspecCancel--;
	if (window == 1) {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 8);
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
		target = noone;
		uspecCancel = -600;
		if (window_timer == phone_window_end) {
			array_push(phone_dust_query, [x, y, "jump", spr_dir]);		
		}
	}
	
	if (window == 2 && window_timer < 6) {
		soft_armor = 8;
	} else {
		soft_armor = 0;
	}
	
	if (window == 2) {
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-14 + (window_timer * .66)));	
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 1.2 * (right_down - left_down) * spr_dir);	
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, get_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED));	
		if (window_timer % 4 == 0) {
			array_push(phone_dust_query, [x, y, "walk", spr_dir]);	
		}
	}
	
	if (window == 2 || window == 3) {
		if (special_pressed) {
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 4);
			move_cooldown[AT_USPECIAL] = 999999;
		}
	}
	
	if (window == 3) {
		if (get_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO) != 8) {
			window = 4;
			window_timer = 0;
		}
		if (window_timer == 11 && get_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO) == 8) {
			set_state(PS_PRATFALL);
			target = noone;	
		}
		vsp *= 0.97;
	}
	if (window == 4) {
		set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 7 + (3*(right_down - left_down)*spr_dir));
		uspecHSP = 7 + (3*(right_down - left_down)*spr_dir);
	}
	if (window == 5) {
		set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, uspecHSP * clamp(((30-window_timer) / 15), 0.5, 1.2));
		set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, clamp(20 - (window_timer), 8, 15));
		if (free) {
			if (!hitpause && window_timer % 5 == 2) {
				if (get_player_color(player) == 24) {
					myFX = spawn_hit_fx(x, y-30, trailR);					
				} else {
					myFX = spawn_hit_fx(x, y-30, trail);
				}
				if (spr_dir == -1) {
					myFX.draw_angle = 90;
				} else {
					myFX.draw_angle = 270;
				}
				myFX.depth = depth + 1;
			}
		} else {
			if (shield_down) {
				destroy_hitboxes();
				window = 9;
				window_timer = 0;
				hsp *= 0.4;	
				array_push(phone_dust_query, [x + 10*spr_dir, y, "land", spr_dir]);	
			} else {
				destroy_hitboxes();
				window = 7;
				window_timer = 0;
				vsp = -5;
				hsp *= 0.3;
				if (get_player_color(player) == 24) {
					myFX = spawn_hit_fx( x, y-25, burstR);				
				} else {
					myFX = spawn_hit_fx( x, y-25, burst);
				}
				revengeHitShakeFrames = 2;
				myFX.depth = depth + 1;
				move_cooldown[AT_USPECIAL_2] = 50;
				sound_play(asset_get("sfx_blow_heavy1"));
				array_push(phone_dust_query, [x - 5*spr_dir, y, "land", spr_dir]);
				array_push(phone_dust_query, [x + 35*spr_dir, y, "land", -1 * spr_dir]);
			}
		}
	}
	if (window == 6) {
		can_jump = true;
		can_attack = has_hit;
		if (window_timer >= phone_window_end) {
			set_state(PS_PRATFALL);
		}
		if (special_down && move_cooldown[AT_FSPECIAL] < 1) {
			if (right_down - left_down != 0) {
				spr_dir = sign(right_down - left_down);
			}
			set_attack(AT_FSPECIAL);
		}
		if (!free) {
			destroy_hitboxes();
			window = 9;
			window_timer = 0;
			hsp *= 0.4;	
			array_push(phone_dust_query, [x + 10*spr_dir, y, "land", spr_dir]);	
		}
	}
	if (window == 7) {
		vsp += 0.3;
		hsp = clamp (hsp, -5, 5);
		hsp *= 0.92;
		if (window_timer > 20) {
			set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
			//set_state(PS_PRATFALL);
		}
	}
	can_wall_jump = true;
	
	if (target != noone && !hitpause) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			if (window == 2) {	
				target.y = (target.y + (y - 20)) / 2;
				target.x = (target.x + (x + (30 * spr_dir))) / 2;
				if (window_timer == 15) {
					target.vsp = -4;
				}
			} else if (window == 4) {
				target.y = ((4*target.y) + (y + 40)) / 5;
				target.x = ((4*target.x) + (x + (35 * spr_dir))) / 5;
			} else {
				//target = noone;			
			}
		}
	}
	
	can_fast_fall = false;
	if (down_down) {
		fall_through = true;
	} else {
		fall_through = false;
	}

	if (uspecCancel < 0 && uspecCancel > -500) {
		can_attack = true;
		can_jump = true;
	}
} 

if (attack == AT_DSPECIAL){	
	 if (window == 1) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
	 }
    if ((window == 2 && window_timer < 15) || (window == 1 && window_timer == 5)) {
		super_armor = true;
		if (hitpause == true ||(phone_cheats[CHEAT_BUFF] == 1 && (attack_pressed || special_pressed || taunt_pressed))) {
			window = 4;
			window_timer = 0;
			super_armor = false;
			invincible = true;
		} else if (window_timer == 1) {
			myGleam = spawn_hit_fx (x, y+5, gleam);
			myGleam.depth = -10;
		}
		
		if (phone_cheats[CHEAT_BUFF] > 0 && move_cooldown[AT_DSPECIAL_2] < 1) {
			if (attack_pressed) {
				revengeMult += 1;
				revengeMult = clamp(revengeMult, 1, 3);
				revengeBuffer = 120;
				move_cooldown[AT_DSPECIAL_2] = 60;
				sound_play(asset_get("sfx_burnapplied"));
				if (get_player_color(player) == 24) {
					myFX = spawn_hit_fx(x, y-30, firehfxR);					
				} else {
					myFX = spawn_hit_fx(x, y-30, firehfx);
				}
			} else if (special_pressed) {
				revengeMult += 1.6;
				revengeMult = clamp(revengeMult, 1, 3);
				revengeBuffer = 120;
				move_cooldown[AT_DSPECIAL_2] = 60;
				sound_play(asset_get("sfx_burnapplied"));
				if (get_player_color(player) == 24) {
					myFX = spawn_hit_fx(x, y-30, firehfxR);					
				} else {
					myFX = spawn_hit_fx(x, y-30, firehfx);
				}
			} else if (taunt_pressed) {
				revengeMult += 0.4;
				revengeMult = clamp(revengeMult, 1, 3);
				revengeBuffer = 120;
				move_cooldown[AT_DSPECIAL_2] = 60;
				sound_play(asset_get("sfx_burnapplied"));
				if (get_player_color(player) == 24) {
					myFX = spawn_hit_fx(x, y-30, firehfxR);					
				} else {
					myFX = spawn_hit_fx(x, y-30, firehfx);
				}
			}
		}
    }
	
	if (window > 2) {
		move_cooldown[AT_DSPECIAL_2] = 0;
	}
	
    if (window == 3 || (window == 2 && window_timer == 15)) {
		super_armor = false;
    } else {
		vsp = clamp(vsp, -1, 4);
	}
    if (window > 3 && window < 7) {
		invincible = true;
    }
	
	if (window == 4) {
		suppress_stage_music(0, 0.1);		
	}
	
	if (window == 4 && window_timer == 1) {
		attack_end();
		
		if (get_player_color(player) == 24) {
			myBurst = spawn_hit_fx (x, y, RburstMain);	
			myBurst.depth = -12;
			myBurst = spawn_hit_fx (x, y, RburstRingsA);	
			myBurst.depth = 12;
			myBurst = spawn_hit_fx (x, y, RburstRingsB);	
			myBurst.depth = -10;			
		} else {
			myBurst = spawn_hit_fx (x, y, burstMain);	
			myBurst.depth = -12;
			myBurst = spawn_hit_fx (x, y, burstRingsA);	
			myBurst.depth = 12;
			myBurst = spawn_hit_fx (x, y, burstRingsB);	
			myBurst.depth = -10;	
		}	
	}
	
	if (window == 5 && window_timer == 1 && !hitpause) {
		myBurst = create_hitbox (AT_DSPECIAL, 1, x, y);
		with (myBurst) {
			with (oPlayer) {
				if (player != other.player_id.revengeTarget) {
					other.can_hit[player] = false;
				}
			}
		}
	}
			
	can_fast_fall = false;
	if (free) {
		hsp = clamp(hsp, -2, 2);
	}
}

if (get_player_color(player) == 24) {
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, firehfxR);
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, firehfxR);
	set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, firehfxR);
	set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, firehfxR);
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, firehfxR);
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, firehfxR);		
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, firehfxR);		
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, burstR);		
} else {
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, firehfx);
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, burst);
}	