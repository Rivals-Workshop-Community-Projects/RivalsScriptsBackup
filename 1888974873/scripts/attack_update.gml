//reverting attacks to be normal
if (attack == AT_USPECIAL && window == 1){
    reset_window_value( AT_USPECIAL, 6, AG_WINDOW_VSPEED );
    reset_window_value( AT_USPECIAL, 6, AG_WINDOW_SFX );
    reset_window_value( AT_USPECIAL, 7, AG_WINDOW_TYPE );
    
    reset_attack_value( AT_USPECIAL, AG_NUM_WINDOWS );
    reset_attack_value( AT_USPECIAL, AG_SPRITE );
    reset_attack_value( AT_USPECIAL, AG_AIR_SPRITE );
}

if (attack == AT_NSPECIAL && window == 1 && window_timer == 1){
	
	clear_button_buffer( PC_SPECIAL_PRESSED );
	
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
	
	can_time_nspecial = true;
	
    reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
    reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE);
    reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK);
    reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX);
    reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
    
    reset_window_value( AT_NSPECIAL, 2, AG_WINDOW_SFX );
}

if (attack == AT_NSPECIAL && window == 5){
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
	set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 1){
    reset_attack_value( AT_FSPECIAL, AG_NUM_WINDOWS );
}

if (attack == AT_DSPECIAL && window == 1){
    reset_window_value( AT_DSPECIAL, 5, AG_WINDOW_HSPEED );
    reset_window_value( AT_DSPECIAL, 5, AG_WINDOW_SFX );
    
    reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK);
    
    reset_attack_value( AT_DSPECIAL, AG_NUM_WINDOWS );
}

if (attack == AT_USPECIAL_2 && window == 1){
    reset_attack_value( AT_USPECIAL_2, AG_NUM_WINDOWS );
}


//everything else

if (attack == AT_FSPECIAL && window == 1 && window_timer == 1){
    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("samuraiAttack"));
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 35);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 5);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 22);
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	if (!has_rune("B")){
	    move_cooldown[AT_NSPECIAL] = 20;
	}
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
}

//failed uspecial
if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 99999;
    if (window == 2 || window == 3 || window == 4) && (window_timer >= 0){
        if (special_pressed){
        	if (!hitpause){
	        	spawn_hit_fx( x, y + 32, 13 );
        	}
        	sound_play(sound_get("doink"));
        	if (old_cancel){
	            set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
	            set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
	            set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 2);
	            set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 5);
	            set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, -8.5);
	            set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
	            set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);
	            window = 8;
        	}
        	else{
        		attack = AT_EXTRA_3;
        		window = 1;
        		window_timer = 0;
        		vsp = -7.5;
        	}
        }
    }
}

if (attack == AT_USPECIAL_2){
    if (window == 2 || window == 3 || window == 4) && (window_timer >= 0){
        if (special_pressed){
            set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 8);
            set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_TYPE, 1);
            set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_LENGTH, 2);
            set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 5);
            set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED, -8.5);
            set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 1);
            set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_TYPE, 7);
            window = 8;
            sound_play(sound_get("doink"));
        }
    }
}

//failed fspecial
if (attack == AT_FSPECIAL){
    if ((window == 2 && window_timer < 14) || (window == 2 && window_timer > 23 && window_timer < 28)){
        if (special_pressed){
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 2);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 2);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, -4);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
            set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
            window = 5;
            sound_play(sound_get("doink"));
        }
    }
    
    var fspec_window_thing = get_window_value( AT_FSPECIAL, 4, AG_WINDOW_LENGTH );
    if (window == 4 && window_timer == fspec_window_thing - 1){
        window = 6;
        window_timer = 0;
    }
}

//smol fspecial boost
if (attack == AT_FSPECIAL){
    if (window == 1){
    	can_turn = true;
        can_time = true;
        can_time_short = true;
        sfx_thingy = false;
    }
    if (window == 2 && window_timer >= 14 && window_timer <= 23 && can_time_short){
        if (special_pressed){
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 27);
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 1);
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
            window = 2;
            window_timer = get_window_value( AT_FSPECIAL, 2, AG_WINDOW_LENGTH ) - 5;
            can_time = false;
            if (sfx_thingy == false){
                spawn_hit_fx( x + 6*spr_dir, y - 14, 194 );
                sound_play(asset_get("mfx_star"));
                sfx_thingy = true;
            }
            set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 22);
        }
    }
    if (can_time == false && has_hit){
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
    }
    if (can_time && has_hit){
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
    }
    
    if (window == 2 && (window_timer == 14 || window_timer == 15)){
    	if (spr_dir == 1){
    		if (left_down && can_turn){
	    		can_time_short = false;
	    		spr_dir = -1;
	    		can_turn = false;
    		}
    	}
    	else{
    		if (right_down &&can_turn){
    			can_time_short = false;
    			spr_dir = 1;
    			can_turn = false;
    		}
    	}
    }
}
	

//failed dspecial
if (attack == AT_DSPECIAL){
    if (window == 4) && (window_timer < 9){
        if (special_pressed){
            set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 10);
            set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 7);
            set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 2);
            set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 2);
            set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED, -4);
            set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
            window = 10;
            window_timer = 0;
            sound_play(sound_get("doink"));
        }
    }
}

//uspecial directionss
if (attack == AT_USPECIAL && spr_dir == -1){
	if (get_player_color(player) == 13){
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_rainbow_left"));
    	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_rainbow_left"));
	}
	else{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_left"));
    	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_left"));
	}
    
}

if (attack == AT_USPECIAL && spr_dir == 1){
	if (get_player_color(player) == 13){
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_rainbow"));
    	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_rainbow"));
	}
	else{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
    	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
	}
}

if (attack == AT_USPECIAL_2 && spr_dir == -1){
    set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_left"));
    set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_left"));
}

if (attack == AT_USPECIAL_2 && spr_dir == 1){
    set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
}


//secret taunt directionss
if (attack == AT_TAUNT_2 && spr_dir == -1){
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2reverse"));
}

if (attack == AT_TAUNT_2 && spr_dir == 1){
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
}


var boost_vfx = 109;

//uspecial boost
if (attack == AT_USPECIAL){
    if (window == 5 && window_timer >= 3){
        if (special_pressed){
        	clear_button_buffer( PC_SPECIAL_PRESSED );
        	spawn_hit_fx( x + 5*spr_dir, y - 14, boost_vfx );
            set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -17);
            set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("skillStar"));
            //uspecialgood = 1;
        }
    }
}

if (uspecialgood == 1 && attack == AT_USPECIAL){
    set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
    if (window == 6){
        can_shield = true;
        can_attack = true;
    }
}

if (window == 6 && attack == AT_USPECIAL){
    can_wall_jump = true;
}

if (attack == AT_USPECIAL && window == 1 && window_timer == 1){
    uspecialgood = 0;
}

//nspecial boost
if (attack == AT_NSPECIAL){
    if (window == 1 && window_timer >= 19 && can_time_nspecial){
        if (special_pressed){
        	clear_button_buffer( PC_SPECIAL_PRESSED );
        	spawn_hit_fx( x + 5*spr_dir, y - 14, boost_vfx );
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("skillStarKarate"));
            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial2_proj"));
            set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
            window = 2;
            window_timer = 0;
        }
    }
    if (window == 1 && window_timer < 19){
    	if (special_pressed && can_time_nspecial){
    		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_owie"));
    		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_owie"));
    		can_time_nspecial = false;
    		sound_play (sound_get ("doink"));
    	}
    }
}

//fspecial boost
if (attack == AT_FSPECIAL && can_time){
    if (window == 2 && window_timer >= 28){
        if (special_pressed){
        	clear_button_buffer( PC_SPECIAL_PRESSED );
        	spawn_hit_fx( x + 5*spr_dir, y - 14, boost_vfx );
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("skillStarSamurai"));
            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 14);
            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 25);
        }
    }
}

//dspecial boost
if (attack == AT_DSPECIAL){
    if (window == 4 && window_timer >= 9){
        if (special_pressed){
        	clear_button_buffer( PC_SPECIAL_PRESSED );
        	spawn_hit_fx( x + 5*spr_dir, y - 14, boost_vfx );
            set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("donkDonkSkillStar"));
            set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 11);
            set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
        }
    }
}

if (attack == AT_DSPECIAL){
    if (window > 4){
        can_wall_jump = true;
    }
}

//dspecial reset on ground/hit
if (window == 1 && window_timer == 1 && attack == AT_DSPECIAL) {
    move_cooldown[AT_DSPECIAL] = 99999;
}

//fspecial reset on ground/hit
if (window == 1 && window_timer == 1 && attack == AT_FSPECIAL) {
    move_cooldown[AT_FSPECIAL] = 99999;
}

//uspecial reset on ground/hit
if (window == 6 && window_timer == 1 && attack == AT_USPECIAL) {
    move_cooldown[AT_USPECIAL] = 99999;
}

//dspecial prompt
if (attack = AT_DSPECIAL && window = 4 && window_timer >= 11 && practice_mode){
    shouldprompt = 1;
}

if (attack = AT_DSPECIAL && window = 4 && window_timer < 11 && practice_mode){
    shouldprompt = 2;
}

if (attack = AT_DSPECIAL && window >= 1 && window_timer >= 0 && window < 4 && practice_mode){
    shouldprompt = 2;
}

//uspecial prompt
if (attack = AT_USPECIAL && window = 5 && window_timer >= 3 && practice_mode){
    shouldprompt = 1;
}

if (attack = AT_USPECIAL && window = 5 && window_timer < 3 && practice_mode){
    shouldprompt = 2;
}

if (attack = AT_USPECIAL && window >= 1 && window_timer >= 0 && window < 5 && practice_mode){
    shouldprompt = 2;
}

//fspecial prompt
if (attack = AT_FSPECIAL && window = 2 && window_timer >= 28 && practice_mode){
    shouldprompt = 1;
}

if (attack = AT_FSPECIAL && window = 2 && window_timer < 28 && practice_mode){
    shouldprompt = 2;
}

if (attack = AT_FSPECIAL && window >= 1 && window_timer >= 0 && window < 2 && practice_mode){
    shouldprompt = 2;
}

//nspecial prompt
if (attack = AT_NSPECIAL && window = 1 && window_timer >= 15 && practice_mode){
    shouldprompt = 1;
}

if (attack = AT_NSPECIAL && window = 1 && window_timer < 15 && practice_mode){
    shouldprompt = 2;
}

//set prompts in practice_mode
if (timer1 == timer2 && timer1 != 0){
    practice_mode = true;
}
else{
    practice_mode = false;
}

if (attack == AT_USPECIAL && window >= 1 && window < 6){
    can_move = false;
}

if (attack == AT_USPECIAL && window == 6){
    can_move = true;
}

if (attack == AT_USPECIAL_2 && window >= 1 && window < 6){
    can_move = false;
}

if (attack == AT_USPECIAL_2 && window == 6){
    can_move = true;
}


//Anti-Jab Parry
if (attack == AT_JAB && window == 4 && window_timer == 14){
    if(was_parried){
    was_parried = false;
    }
}

if (!hitpause){
    //stuff i moved from update.gml
    if (attack == AT_USPECIAL && window == 6 && window_timer == 1){
        spawn_hit_fx( x, y + 32, 13 );
    }
    
    if (attack == AT_USPECIAL_2 && window == 6 && window_timer == 1){
        spawn_hit_fx( x, y + 32, 13 );
    }
    
    if (attack == AT_TAUNT && window == 1 && window_timer == 1 && spr_dir == 1){
        spawn_hit_fx( x + 5, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT && window == 10 && window_timer == 29 && spr_dir == 1){
        spawn_hit_fx( x + 5, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT && window == 1 && window_timer == 1 && spr_dir == -1){
        spawn_hit_fx( x - 6, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT && window == 10 && window_timer == 29 && spr_dir == -1){
        spawn_hit_fx( x - 6, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT_2 && window == 1 && window_timer == 1 && spr_dir == 1){
        spawn_hit_fx( x + 5, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT_2 && window == 6 && window_timer == 8 && spr_dir == 1){
        spawn_hit_fx( x + 5, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT_2 && window == 1 && window_timer == 1 && spr_dir == -1){
        spawn_hit_fx( x - 6, y - 14, 13 );
    }
    
    if (attack == AT_TAUNT_2 && window == 6 && window_timer == 8 && spr_dir == -1){
        spawn_hit_fx( x - 6, y - 14, 13 );
    }
}

if (attack == AT_USTRONG && (window == 2 || window == 3)){
    hud_offset = 40;
}

if (attack == AT_UAIR && window < 4){
    hud_offset = 20;
}

if (attack == AT_UAIR && (window == 4 || window == 5)){
    hud_offset = 50;
}

if (attack == AT_UTILT || attack == AT_FTILT){
    sfx_rng = random_func(0, 2, true);
    if (sfx_rng == 1){
        set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("love_lab"));
    }
    else{
        set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("love_lab_two"));
    }
}

if (window == 6 && window_timer == 1 && attack == AT_USPECIAL_2) {
    move_cooldown[AT_USPECIAL] = 99999;
}
if (taunt_pressed && up_pressed && state == PS_IDLE && !free){
	state = PS_ATTACK_GROUND;
    attack = AT_EXTRA_1;
}

if (attack == AT_EXTRA_2 && window_timer == 48){
    if (window_timer == 44){
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
    if (taunt_pressed){
        window_timer = 0;
    }
}

if (attack == AT_EXTRA_2){
    can_fast_fall = false;
}

if (attack == AT_DTILT){
	if (window == 2){
		if (has_hit && dtilt_cancel_on){
			if (window_timer > 3){
				can_jump = true;
			}
		}
	}
}

if (attack == AT_FSPECIAL){
	if (window > 3){
		can_wall_jump = true;
	}
}

//if (attack == AT_DAIR){
//	if (window == 1){
//		if (window_timer == 1){
//			clear_button_buffer(PC_DOWN_HARD_PRESSED);
//		}
//	}
//}

//////////directional ftilt stuff
//if (attack == AT_FTILT){
//    if (spr_dir == 1){
//        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("lockstep_hai"));
//    }
//    else{
//        set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("lockstep"));
//    }
//}

var sound_youknow = sound_get("applause")
//yeh
if (attack == AT_TAUNT && window == 10 && window_timer >= 17 && window_timer <= 30){
    with (oPlayer){
        if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
            if (attack == AT_TAUNT && state_timer < 1){
                sound_play(sound_youknow);
            }
        }
    }
}




//runes... 2!
if (has_rune("B")){
	if (attack == AT_NSPECIAL){
		if (window > 2){
			can_jump = true;
			can_special = true;
			can_attack = true;
			can_shield = true;
		}
	}
}