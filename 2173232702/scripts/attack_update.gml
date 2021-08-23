
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB && was_parried){
	was_parried = false;
}

if (attack == AT_JAB){
	move_cooldown[AT_JAB] = 10;
}

if (attack == AT_DSPECIAL_2){
	switch(selected_spell){
		case 1:
			break;
			
		case 5:

			break;
		case 6:

			break;			
		case 7:
			if (window == 1 && window_timer == 1){
				var tornado = spawn_hit_fx(x + 64*spr_dir, y-16, fx_tornado);
				tornado.depth = -20;
			}
			break;
		default:
			break;
	}
}

if (attack == AT_NSPECIAL_AIR ){
	if (window == 2 && window_timer == 9){
		spawn_hit_fx(x, y, 251 );
		sound_play(asset_get("sfx_ori_superjump_sein"));
	}
	move_cooldown[AT_NSPECIAL_AIR] = 30;
	move_cooldown[AT_NSPECIAL] = 30;
}
if (attack == AT_NSPECIAL){
	if (free){
		if (window == 1 && window_timer == 1 && move_cooldown[AT_NSPECIAL_AIR] == 0){
			window = 10;
			attack = AT_NSPECIAL_AIR;
			set_attack(AT_NSPECIAL_AIR);
		}
		
			if (menu_active){
		window = 10;
	}
	}
	

}


if (attack == AT_NSPECIAL && time_until_magic < 1){
	
	if (window == 1 && window_timer == 1){

	// }
	// INTERNET SOLUTION: SHUFFLE (see: http://yellowafterlife.blogspot.com/2011/11/gamemaker-shuffling-array.html)
	// explanation: 
	// 1. create array of all possible spells, in regular order
	// 2. use THIS array to do the shuffle algorhithm
	// 3. put the first 5 (which are now shuffled) with a new loop in menu_spell 1-5
	// 4. celebrate
	
	var i, j, k;
	for (i = 0; i < no_of_spells - 1; i += 1){
	    j = i+random_func_2(i, no_of_spells - 1 - i, true)
	    if (i != j)
	    {
	        k = spell_list[i];
	        spell_list[i] = spell_list[j];
	        spell_list[j] = k;
	    }
	}
    
    for (m = 0; m < 5; m++){
    	menu_spell[m] = spell_list[m] + 1;
    }
    
}
	
    if (window == 2){
    	if(window_timer == 1){
			menu_active = true;
    	}
    	if (right_pressed){
    		spell_activated = true;
    		selected_spell = menu_spell[1];
    		window++;
    		menu_active = false;
    		sound_play(asset_get("sfx_gem_collect"));
    		// window_timer = 1;
    	}

    	if (left_pressed){
    		spell_activated = true;
    		selected_spell = menu_spell[3];
    		window++;
    		menu_active = false;
    		sound_play(asset_get("sfx_gem_collect"));
    		// window_timer = 1;
    	}
    	if (up_pressed){
    		spell_activated = true;
    		selected_spell = menu_spell[4];
    		window++;
    		menu_active = false;
    		sound_play(asset_get("sfx_gem_collect"));
    		// window_timer = 1;
    	}
    	if (down_pressed){
    		spell_activated = true;
    		selected_spell = menu_spell[2];
    		window++;
    		menu_active = false;
    		sound_play(asset_get("sfx_gem_collect"));
    		// window_timer = 1;
    	}
    	if (special_pressed){
    		spell_activated = true;
    		selected_spell = menu_spell[0];
    		window++;
    		menu_active = false;
    		sound_play(asset_get("sfx_gem_collect"));
    		// window_timer = 1;
    	}
    	
    	if (shield_pressed){
    		window++;
    		menu_active = false;
    		sound_play(asset_get("sfx_shop_close"));
    		// window_timer = 1;
    	}
    }
    // change to 0 while testing, change to ?? for normal play
    move_cooldown[AT_NSPECIAL] = 0;
 
}

if (attack == AT_FSPECIAL){
move_cooldown[AT_FSPECIAL] = 20;
}

if (attack == AT_USPECIAL){
	if (window == 1){
	    if (!joy_pad_idle){
	    	hsp += lengthdir_x(0.15, joy_dir);
	    }
	    vsp = 0;
	}
	if (window == 2){
	    if (!joy_pad_idle){
	    	if (abs(hsp) < 4){
	    	hsp += lengthdir_x(0.2, joy_dir);
	    	}
	    }
	    // if (image_index == 0){
	    // 	image_index = 8;
	    // }
	}
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2 && window_timer == 1){
		// vsp = -5;
		// hsp = 2*spr_dir;
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}

// reset attack variables after spell has ended
if (attack == AT_DSPECIAL_2){
	if (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
// set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_loop"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_DSPECIAL_2, 0);


set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_watergun_splash"));
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
// RESET PROJECTILE STUFF TOO:
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("invisible_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 550);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 850);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 301); //
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 550);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 850);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 90);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 60);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 301); //
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 6);
	}
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 20; //40
}

if (attack == AT_NAIR){
	 //if (window == 2 /*&& window_timer > 3 && window_timer < 9*/ && attack_pressed && has_hit){
		// vsp = -5;
		// hsp = spr_dir*3;
	 //}
	move_cooldown[AT_NAIR] = 10;
}

if (attack == AT_FAIR){
	if (window == 2 && (attack_down || right_stick_down || right_strong_down || left_stick_down || left_strong_down )
	&& time_until_magic < 1){
		magic_meter++;
		create_hitbox(AT_FAIR, 2, x, y);
		if (window_timer > 20){
			window_timer = 12;
		}
	} else if (window == 2 && attack_down && time_until_magic > 0){
		// magic_overload = true;
		if (window_timer > 22){
			window++;
		}
	}
	move_cooldown[AT_FAIR] = 45;
}

if (attack == AT_DATTACK){
	if (window == 2 && window_timer > 22){
		if (jump_pressed || attack_pressed || special_pressed || shield_pressed || left_pressed || right_pressed || up_pressed || down_pressed
			|| left_down || right_down || up_down || down_down){
			window+=2;
			
		}
	}
	if (window >= 3){
		if (jump_pressed || attack_pressed || special_pressed || shield_pressed || left_pressed || right_pressed || up_pressed || down_pressed
		|| left_down || right_down || up_down || down_down){
		// can_move = true;
		// can_jump = true;
		// can_attack = true;
		// can_shield = true;
		window++;
		}
	}
}

if (attack == AT_FSTRONG){
	if (window >= 5){
		if(window_timer > 2){
			window_timer--;
		}
		if (jump_pressed || attack_pressed || special_pressed || left_pressed || right_pressed || up_pressed || down_pressed
		|| left_down || right_down || up_down || down_down){
		// can_move = true;
		// can_jump = true;
		// can_attack = true;
		// can_shield = true;
		window++;
		}
	}
}

if (attack == AT_FSTRONG ||
attack == AT_USTRONG ||
attack == AT_DSTRONG){
	if (((attack == AT_DSTRONG || attack == AT_USTRONG) && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)
	|| (attack == AT_FSTRONG && window == 3 && window_timer == 1)){
		var strong_cooldown = 35;
		move_cooldown[AT_FSTRONG] = strong_cooldown;
		move_cooldown[AT_USTRONG] = strong_cooldown;
		move_cooldown[AT_DSTRONG] = strong_cooldown;
		if (attack == AT_DSTRONG){
			move_cooldown[AT_DSTRONG] = strong_cooldown + 30; // super efficient coding right here
		}
		if (attack == AT_USTRONG){
			move_cooldown[AT_USTRONG] = strong_cooldown + 30; // super efficient coding right here
		}
		var effect_selection = random_func(3, 4, 1);
		
		switch(effect_selection){
        // NOTHING
        default:
        case 0: 
            random_effect = 11; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 15);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 115);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
            
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 15);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 115);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
            
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 15);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 115);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
        break;
        // BURN
        case 1: 
            random_effect = 1; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj_fire"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 148);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
            
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_fire"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 10);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 148);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
            
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj_fire"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 148);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
        break;
        // POISON
        case 2: 
            random_effect = 10; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj_poison"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 5);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 120);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_frog_fstrong"));
            
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_poison"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 5);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 120);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_frog_fstrong"));
            
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj_poison"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 5);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 120);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_frog_fstrong"));
        break; // effect 5 freeze crashes the game
        // ICE (custom)
        case 3: 
            random_effect = 8; 
            set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongf_proj_ice"));
            set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 45);
            set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 158);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
            
            set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongu_proj_ice"));
            set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 45);
            set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 158);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
            
            set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("strongd_proj_ice"));
            set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 45);
            set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 158);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
            // set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
            set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
        break;
    	}
		set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, random_effect);
	    set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, random_effect);
	    set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, random_effect);
	}
	   
}

