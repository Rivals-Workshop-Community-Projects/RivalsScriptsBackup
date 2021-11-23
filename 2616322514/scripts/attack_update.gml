//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_FSTRONG_2){
	if (window == 1){
		with (terrain){
		hsp = lengthdir_x(16, point_direction(x,y,player_id.x + 40*player_id.spr_dir,player_id.y-40));
        vsp = lengthdir_y(16, point_direction(x,y,player_id.x + 40*player_id.spr_dir,player_id.y-40));
        if (state != 2){
        state = 2;
        state_timer = 0;
        }
    }
	}
	if (window == 2 && window_timer == 4){
		
			spawn_hit_fx( x + 40*spr_dir, y - 40, electric_hit );
	}
	if (window == 3 && window_timer > 6){
		force_discharge = true;
	}
}

if (attack == AT_USTRONG_2){
	if (window == 1){
		with (terrain){
		hsp = lengthdir_x(16, point_direction(x,y,player_id.x + 40*player_id.spr_dir,player_id.y-40));
        vsp = lengthdir_y(16, point_direction(x,y,player_id.x + 40*player_id.spr_dir,player_id.y-40));
        if (state != 2){
        state = 2;
        state_timer = 0;
        }
    }
	}
	if (window == 4){
		force_discharge = true;
	}
}
if (attack == AT_NSPECIAL){
    with (terrain){
		hsp = lengthdir_x(16, point_direction(x,y,player_id.x,player_id.y-40));
        vsp = lengthdir_y(16, point_direction(x,y,player_id.x,player_id.y-40));
        if (state != 2){
        state = 2;
        state_timer = 0;
        }
    }
    if (window == 1){
    	if (vsp < -5){
    		vsp += 3;
    	}
    	if hsp > 0 && spr_dir == 1{
	    	hsp -= 1;
    	}
    	if hsp < 0 && spr_dir == -1{
	    	hsp += 1;
    	}
    }
    if (window == 3){
        can_fast_fall = false;
        if (window_timer == 4 or window_timer == 8 or window_timer == 12 or window_timer == 16 or window_timer == 20 or window_timer == 24 or window_timer == 28 or window_timer == 32){
            create_hitbox( AT_NSPECIAL, 1, x-20*spr_dir, y - 48 );
        }
    }
}

if (attack == AT_FSPECIAL && window == 3 or attack == AT_NSPECIAL && window == 4){
	force_discharge = true;
}

if (attack == AT_DSPECIAL && window == 4){
if (instance_exists(counter_id)){
	var koko = id;
	with (counter_id){
		if (x != koko.x && y != koko.y + 10){
	    x += lengthdir_x(6, point_direction(x,y,koko.x,koko.y + 10));
	    y += lengthdir_y(6, point_direction(x,y,koko.x,koko.y + 10));
		}
	}
}
}
if (attack == 49){
	if (window == 1){
		if (window_timer == 5){
			spawn_hit_fx( x, y - 40, zmove );
			sound_play(asset_get("sfx_frog_fspecial_charge_full"));
		}
	}
	if (window == 4 && window_timer == get_window_value(attack, 4, AG_WINDOW_LENGTH)){
		window = 5;
		window_timer = 0;
	}
}
if (attack == 49 && window == 4){
	if (window_timer == 30){
		sound_play(asset_get("sfx_absa_concentrate"));
	}
	if (window_timer == 43){
		sound_play(asset_get("sfx_swipe_heavy2"));
	}
	if (instance_exists(counter_id)){
	var koko = id;
	with (counter_id){
			if (x != koko.x && y != koko.y + 10){
		    x += lengthdir_x(6, point_direction(x,y,koko.x - 190*spr_dir,koko.y - 50));
		    y += lengthdir_y(6, point_direction(x,y,koko.x - 190*spr_dir,koko.y - 50));
			}
		}
	}
}
if (attack == AT_FSPECIAL){
	 with (terrain){
		hsp = lengthdir_x(16, point_direction(x,y,player_id.x,player_id.y-40));
        vsp = lengthdir_y(16, point_direction(x,y,player_id.x,player_id.y-40));
        if (state != 2){
        state = 2;
        state_timer = 0;
        }
    }
    
    	if (window == 1 && window_timer == 19){
    		sound_play(asset_get("sfx_absa_new_whip2"));
			sound_play(sound_get("sfx_shock_large"), false, noone, .8, 1);
    	}
    if (window == 2){
    	if (has_hit && !hitstop or hsp = 0){
    		if (hsp == 0 && !has_hit){
			sound_play(sound_get("sfx_electro_hit_heavy"));
			spawn_hit_fx( x + 10*spr_dir, y - 40, electric_hit );
    		}
    		window = 3;
    		window_timer = 0;
    		destroy_hitboxes();
    	}
    }
    
    	if (window_timer == 23 && has_hit == false && window == 3 && electro_charged == false){
    		set_state(PS_PRATFALL);
    	}
    
    		if (window == 3 && window_timer == 1 && !has_hit){
    		}
}

if (attack == AT_FSPECIAL or attack == AT_FSPECIAL_2){
	if (window == 1){
		vsp = -2;
	}
}

if (attack == AT_FSPECIAL_2){
    if (window == 2){
    	if (has_hit && !hitstop or hsp = 0){
    		if (hsp == 0 && !has_hit){
			sound_play(sound_get("sfx_charge_hit_med"));
			spawn_hit_fx( x + 10*spr_dir, y - 40, 304 );
    		}
    		window = 3;
    		vsp -= 8;
    		window_timer = 0;
    		destroy_hitboxes();
    	}
    }
    if (window == 3){
    	if (has_hit && window_timer > 8){
    		can_attack = true;
    	}
    	move_cooldown[AT_FSPECIAL_2] = 1000;
    	if (window_timer == 23 && has_hit == false){
    		set_state(PS_PRATFALL);
    	}
    	/*if (has_hit){
    		can_attack = true;
    		if (attack_pressed){
    			if (window_timer < 5){
    				x += 6*spr_dir;
    				y -= 8;
    			}
    			if (window_timer >= 5 && window_timer < 9){
    				y -= 20;
    			}
    		}
    	}*/
    }
}

if (attack == AT_NAIR){
	if (window == 1 && window_timer == 5){
		sound_play( sound_get("sfx_shield_swing"));
	}
}

if (attack == AT_JAB){
        was_parried = false;
}

if (attack == AT_TAUNT){
	if (window == 1 && window_timer == 17){
		sound_play(sound_get("sfx_shock_large"), false, noone, 1.6, 1);
	}
	if (window == 2){
	shake_camera( 8, 6 );
	}
}
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, counter_dmg);
if (attack == AT_NSPECIAL_2){
    if (window == 3){
        can_fast_fall = false;
        if (window_timer == 4 or window_timer == 8 or window_timer == 12 or window_timer == 16){
            create_hitbox( AT_NSPECIAL_2, 1, x-20*spr_dir, y - 48 );
        }
    }
    if (window == 4){
        move_cooldown[AT_NSPECIAL_2] = 60;
    }
}
if (attack == AT_UTILT){
    if (window == 1){
    	if (electro_charged){
			electro_start = true;
    	}
        if (window_timer == 1){
        sound_play(asset_get("sfx_absa_new_whip2"));
        }
    }
    if (electro_start == true && has_hit){
        can_strong = true;
        can_special = true;
    }
}

if (attack == AT_FTILT){
    if (window == 1){
    	if (electro_charged){
			electro_start = true;
    	}
        if (window_timer == 1){
        sound_play(asset_get("sfx_absa_whip"));
        }
    }
    if (electro_start == true && has_hit){
        can_strong = true;
        can_special = true;
    }
}

if (attack == AT_DAIR){
        if (window_timer == 1 && window == 1){
        sound_play(asset_get("sfx_absa_whip"));
        }
	
}

if (attack == AT_DTILT){
    if (window == 1){
    	if (electro_charged){
			electro_start = true;
    	}
        if (window_timer == 1){
        sound_play(asset_get("sfx_absa_singlezap1"));
        }
    }
    if (electro_start == true && has_hit){
        can_strong = true;
        can_special = true;
    }
}

if (attack == AT_UAIR){
    if (window == 1){
    	if (electro_charged){
			electro_start = true;
    	}
        if (window_timer == 1){
        sound_play(asset_get("sfx_absa_singlezap1"));
        }
        if (window_timer == 8){
        sound_play(asset_get("sfx_absa_singlezap2"));
        }
    }
    if (electro_start == true && has_hit){
        can_strong = true;
        can_special = true;
    }
}

if (attack == AT_FAIR){
    if (window == 1){
    	if (electro_charged){
			electro_start = true;
    	}
        if (window_timer == 11){
        sound_play(asset_get("sfx_absa_new_whip1"));
        }
    }
    if (electro_start == true && has_hit){
        can_strong = true;
        can_special = true;
    }
}

if (attack == AT_NSPECIAL_2){
	fs_force_fs = true;
} else fs_force_fs = false;

if (electro_charged == true){
    //stuns
    set_hitbox_value(AT_FTILT, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DTILT, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DAIR, 3, HG_EFFECT, 11);
    //buffs
    set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
    set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8.5);
    set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 11);
    set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
    set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 11);
    set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
    set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8.5);
    set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 11);
    set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .8);
} else {
    reset_hitbox_value(AT_FTILT, 2, HG_EFFECT);
    reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FTILT, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DTILT, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DTILT, 2, HG_EFFECT);
    reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_UTILT, 1, HG_EFFECT);
    reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FAIR, 2, HG_EFFECT);
    reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_UAIR, 2, HG_EFFECT);
    reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DAIR, 3, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DAIR, 3, HG_EFFECT);
}

if (attack == AT_TAUNT && get_match_setting( SET_PRACTICE )){
    if window == 2 && window_timer = 1 && taunt_down{
        
    terrain = instance_create(x, y - 40, "obj_article1");
    }
    if (window == 1 && window_timer == 10 && taunt_down &&  instance_exists(terrain)){
        terrain.state = 2;
        terrain.state_timer = 0;
    }
}

if (attack == AT_JAB){
	if (window == 2){
		if (window_timer == 6 or window_timer == 12){
            create_hitbox( AT_JAB, 1, x+52*spr_dir, y - 35 );
		}
		
		if (window_timer == 1 or window_timer == 6 or window_timer == 12){
			sound_play(asset_get("sfx_swipe_weak1"));
		}
		
	if (right_strong_pressed){
		spr_dir = 1;
		set_attack(AT_FTILT);
	}
	if (left_strong_pressed){
		spr_dir = -1;
		set_attack(AT_FTILT);
	}
	if (up_strong_pressed){
		set_attack(AT_UTILT);
	}
	if (down_strong_pressed){
		set_attack(AT_DTILT);
	}
	if (attack_down == false or was_parried){
		window = 3;
		window_timer = 0;
		destroy_hitboxes();
	}
	}
	}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
        uspecial_frame = 0;
    }
    if (window_timer == 16 && window == 1){
    	vsp -= (electro_charged ? 24 : 20)
    }
    if (window_timer > 15 && window == 1){
    	instance_create(x + 16, y - 30, "obj_article3");
    }
    if (window_timer < 16 && window == 1){
    	if (vsp > 0){
    		vsp --;
    	}
    }
    if (window == 2){
    	
    instance_create(x + 16, y - 30, "obj_article3");
    	if (left_down){
    		spr_dir = -1;
    	}
    	if (right_down){
    		spr_dir = 1;
    	}
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 2){
                times_through++;
                window_timer = 0;
            }
            else {
			spawn_hit_fx( x, y - 24, uspecial_cancel );
			
    sound_play(sound_get("sfx_terrain_disappear"));
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1.3, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= 1;
            vsp *= 1;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = (electro_charged ? 22 : 16);
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (times_through < 2){
        	left_down = false;
        	right_down = false;
        	down_down = false;
        }
        if (special_pressed && times_through > 0 && electro_charged == false or shield_pressed or free == false or vsp > 2){
			spawn_hit_fx( x, y - 24, uspecial_cancel );
    sound_play(sound_get("sfx_terrain_disappear"));
            window = 3;
            window_timer = 0;
        }
        if (special_pressed && times_through > 0 && electro_charged == true){
			spawn_hit_fx( x, y - 24, uspecial_cancel );
    sound_play(sound_get("sfx_terrain_disappear"));
        	set_attack(AT_NSPECIAL);
        }
    }
    if (electro_charged == true && !place_meeting(x, y, terrain)){
    	force_discharge = true;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1){
    	counter_dmg = 0;
    }
    if (window == 2){
    	super_armor = true;
    } else super_armor = false;
    if (window == 3){
    	move_cooldown[AT_DSPECIAL] = 40;
    }
    if (window == 3 && attack_pressed && get_match_setting( SET_PRACTICE )){
    	window = 4;
    	window_timer = 0;
    }
    can_fast_fall = false;
    can_move = false
    if (window == 4){
    	if (window_timer == 35){
    		sound_stop(sound_get("sfx_natures_madness"));
    		sound_play(sound_get("sfx_natures_madness2"));
    		window = 5;
    		window_timer = 0;
    	}
    }
    if (window == 5 && instance_exists(counter_id)){
    	counter_id.countered = false;
    	counter_id = noone;
    }
}

if (attack == AT_DSTRONG_2){
	if window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH){
		sound_play(sound_get("sfx_shock_large"));
	}
	if (window == 1){
		with (terrain){
		hsp = lengthdir_x(16, point_direction(x,y,player_id.x + 40*player_id.spr_dir,player_id.y-40));
	    vsp = lengthdir_y(16, point_direction(x,y,player_id.x + 40*player_id.spr_dir,player_id.y-40));
		    if (state != 2){
			    state = 2;
			    state_timer = 0;
		    }
	    }
	}
	if (window == 4){
		force_discharge = true;
	}
}