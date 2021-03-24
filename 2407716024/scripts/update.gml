//update.gml
user_event(14);

var attempt_air_dash = false;

switch (state) {
    case PS_FIRST_JUMP:
        //ranno super-jump
        //if (state_timer == 1 && vsp < -short_hop_speed && down_down) {
        //    vsp -= 2.8;
        //    sound_play(sound_get("sjump"));
        //}
        //instant air dash
        if (state_timer == 0) {
            switch (prev_prev_state) {
                case PS_DASH:
                case PS_DASH_START:
                //case PS_DASH_TURN:
                    peacock_airdash_button_main_buffer = 16 * spr_dir;
                break;
                default:
                    peacock_airdash_button_main_buffer = 16 * (right_hard_pressed - left_hard_pressed);
                break;
            }
        }
    
    case PS_WALL_JUMP:
    	move_cooldown[AT_USPECIAL] = 0;
    
    case PS_DOUBLE_JUMP:
        peacock_used_nair = 0;
        
    case PS_IDLE_AIR:
        if (!hitpause) attempt_air_dash = 1;
        
        //reset 'has_hit' variables
        has_hit = 0;
        has_hit_player = 0;
    break;
    
    case PS_ATTACK_AIR:
        if (!has_hit || hitpause || was_parried) break;
        switch (attack) {
            case AT_NAIR:
            case AT_FAIR:
            case AT_BAIR:
            case AT_UAIR:
            case AT_DAIR:
            case AT_NTHROW:
                attempt_air_dash = 2;
            break;
        }
    break;
    
    case PS_LANDING_LAG:
        //clamp movement if the last move used was FAir.
        if (attack == AT_FAIR) hsp = clamp(hsp * 0.85, -10, 10);
        
        //allow move cancels if the attack hit something
        if (has_hit_player && attack_pressed) {
            set_state(PS_IDLE);
        }
    break;
    
    case PS_ATTACK_GROUND:
        //if nspecial is on cooldown, make sure it stays on cooldown until the player stops attacking
        if (move_cooldown[AT_NSPECIAL] == 1) move_cooldown[AT_NSPECIAL] += 1;
    break;
    default:
        peacock_consecutive_cancelled_attacks = 0;
    break;
    

}

if (free) peacock_consecutive_cancelled_attacks = 0;
else { 
	peacock_used_nair = 0;
	move_cooldown[AT_USPECIAL] = min(move_cooldown[AT_USPECIAL], 5);
}

attempt_to_activate_dspecial();

//airdash
//airdash
if (attempt_air_dash > 0 && peacock_has_airdash) {
    if (peacock_airdash_forward_dash_buffer > 0 && (peacock_airdash_forward_dash_buffer <= 6 || !free) ) {
        clear_button_buffers_after_dashing();
        set_extra_variables_after_dashing();
        set_state(PS_ATTACK_AIR);
        set_attack(AT_EXTRA_1);
        
        if (attempt_air_dash == 2) {
            hsp = spr_dir * initial_dash_speed * 0.5;
        	vsp = -0.5;  
        }
       
        sound_play(sound_get("airdash"));
        spawn_hit_fx(x - 16 * spr_dir, y, peacock_fx_airdash_puff);
        
        peacock_has_airdash = 0;
        
        //skip startup if cancelled out of an attack
        if (attempt_air_dash == 2) {
            //window = 3;
            if (!free) vsp = -2.5;
            window_timer = get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH);//+ get_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH);
        }
    }
    else if (peacock_airdash_backward_dash_buffer > 0 && (peacock_airdash_backward_dash_buffer <= 6 || !free) ) {
        if (free) {
            clear_button_buffers_after_dashing();
            set_extra_variables_after_dashing();
            set_state(PS_ATTACK_AIR);
            set_attack(AT_EXTRA_2);
            
            if (attempt_air_dash == 2) {
            	hsp = -5 * spr_dir;
        		vsp = -0.5;  
        	}
            
            sound_play(sound_get("djump"));
            spawn_hit_fx(x + 16 * spr_dir, y, peacock_fx_airdash_puff).spr_dir *= -1;
        }
        else {
            set_state(PS_IDLE);
            hsp = -5 * spr_dir;
        }
        peacock_has_airdash = 0;
    }
}

if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirb_throw");
	var ability_hurt = sprite_get("kirb_throw_hurt");
	var bomb_spr = sprite_get("bomb_walk");
	var myicon = sprite_get("bomb_icon")
	
	with enemykirby{
		newicon = myicon
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 2);
                
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 250);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 55);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, -20);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, bomb_spr);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, bomb_spr);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	}
}
if enemykirby != noone { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if (attack == AT_EXTRA_3) {
            if window == 3{
                move_cooldown[AT_EXTRA_3] = 40;    
            }
        }
    }
}

if (free || (state == PS_FIRST_JUMP && state_timer == 0) ) { // (state_timer <= 1 && (state == PS_LAND || state == PS_LANDING_LAG) ) ) {
    //var dash_dir = right_hard_pressed - left_hard_pressed;//right_down - left_down;
    var dash_dir = (right_down || right_hard_pressed) - (left_down || left_hard_pressed);
    
    //if (peacock_free_on_previous_frame) {
    //    peacock_airdash_press_recorded = dash_dir;
    //}
    
    switch (dash_dir) {
        case 0:
            peacock_airdash_press_recorded = 0;
        break;
        
        default:
            //if this isn't a new input, ignore it.
            if (peacock_airdash_press_recorded != 0) break;
            
             peacock_airdash_press_recorded = dash_dir;
            
            if (dash_dir == sign(peacock_airdash_button_main_buffer)) {
                var airdash_buffer_abs = abs(peacock_airdash_button_main_buffer);

                if (spr_dir == dash_dir) {
                    peacock_airdash_forward_dash_buffer = max(7, airdash_buffer_abs);
                }
                else {
                    peacock_airdash_backward_dash_buffer = max(7, airdash_buffer_abs); // + 5
                }

            }
            else {
                peacock_airdash_button_main_buffer = dash_dir * 12;
            }
        break;
    }
    //make the main buffer tick down.
    peacock_airdash_button_main_buffer = sign(peacock_airdash_button_main_buffer) * (abs(peacock_airdash_button_main_buffer) - 1);
    //if (peacock_airdash_button_main_buffer == 0) peacock_airdash_press_recorded = 0;
    
    //if not in hitpause, make the airdash buffers tick down.
    if (!hitpause) {
        peacock_airdash_forward_dash_buffer = max(peacock_airdash_forward_dash_buffer-1, 0);
        peacock_airdash_backward_dash_buffer = max(peacock_airdash_backward_dash_buffer-1, 0);
    }
}
else {
    peacock_has_airdash = 1;
    peacock_airdash_press_recorded = right_down - left_down;
    peacock_airdash_button_main_buffer = 0;
    peacock_airdash_forward_dash_buffer = 0;
    peacock_airdash_backward_dash_buffer = 0;
}

//peacock_free_on_previous_frame = free;



// Easter Egg Timer
if (easter_egg_timer <= 90) {
	easter_egg_timer++;
	if (!cancelled_voice) {
		voiced_peacock = false;
		easter_egg_timer = 91;
		easter_egg_set = true;
		} else if (taunt_down) {
		voiced_peacock = true;
		cancelled_voice = false;
		
		 if !(oPlayer.url == 2135192216 || oPlayer.url == CH_ELLIANA || oPlayer.url == CH_ZETTERBURN || oPlayer.url == CH_CLAIREN || oPlayer.url == CH_ORI || oPlayer.url == 2229862078 || oPlayer.url == 2261916872 || oPlayer.url == 1870630263 || oPlayer.url == 1890617624 || oPlayer.url == 1871153050 || oPlayer.url == 1970731843 || oPlayer.url == 2190448871){
    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    }
}
    
  if (oPlayer.url == 2135192216){
    snd_rng = random_func(0, 5, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_filia"));
    }
}

   if (oPlayer.url == CH_ZETTERBURN){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_zet"));
}
}

   if (oPlayer.url == CH_ELLIANA){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_elli"));
    }
}	

   if (oPlayer.url == CH_CLAIREN || oPlayer.url == 2269841346){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_clar"));
    }
}

   if (oPlayer.url == CH_ORI){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_ori"));
    }
}  

   if (oPlayer.url == 2229862078){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_ori"));
    }
}   

    if (oPlayer.url == 2261916872 || oPlayer.url == 1870630263){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_peacock"));
    }
}

    if (oPlayer.url == 1890617624 || oPlayer.url == 1871153050 || oPlayer.url == 1970731843 || oPlayer.url == 2190448871){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_ronald"));
    }
}

/*
if  (oPlayer.url != 2135192216 && oPlayer.url != CH_ELLIANA && oPlayer.url != CH_CLAIREN && oPlayer.url != 2229862078 && oPlayer.url != CH_ZETTERBURN && oPlayer.url != CH_ORI && oPlayer.url != 2269841346 && oPlayer.url != 1890617624 && oPlayer.url != 1871153050 && oPlayer.url != 1970731843 && oPlayer.url != 2190448871 && oPlayer.url != 2269841346 && oPlayer.url != CH_KRAGG && oPlayer.url != CH_WRASTOR && oPlayer.url != CH_MAYPUL && oPlayer.url != CH_RANNO && oPlayer.url != CH_ORCANE && oPlayer.url != CH_FORSBURN && oPlayer.url != CH_SHOVEL_KNIGHT && oPlayer.url != CH_ETALUS && oPlayer.url != CH_SYLVANOS && oPlayer.url != CH_ABSA){
	 	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
	        sound_play(sound_get("intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("intro3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("intro_workshop"));
    }
}
*/

	var peacock_player = self;
	with (oPlayer) {
		if ((attack_down) && voice_activated == true) {
			peacock_player.cancelled_voice = true;
			voice_activated = false
		}
	}
}
}

//Time freeze

time_frozen = time_freeze_ticks > 0;
time_freeze_ticks = clamp(time_freeze_ticks - 1, 0, 9999);

if (attack = 49 && window = 1){
if time_frozen{
    var articles = ["obj_article1", "obj_article2", "obj_article3", "obj_article_solid", "obj_article_platform"]
    
    with (asset_get("oPlayer")) {
        if (player != other.player) {
            //print_debug( string(hsp) + ", " + string(vsp) + " || " + string(old_hsp) + ", " + string(old_vsp))
            if (hitstop == 0 or abs(vsp) > 1 or abs(hsp) > 0){
                old_vsp = vsp;
                old_hsp = hsp;
                vsp = -1;
                hsp = -1;
                can_move = false;
            }
            vsp = -1;
            hsp = -1;
            hitstop = 2;
            hitstop_full = 2;
            hitpause = true;
            can_move = false;
        }
    }
	
	var attacks = [AT_JAB, AT_FTILT, AT_DTILT, AT_UTILT, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_DATTACK, AT_BAIR, AT_NAIR, AT_FAIR, AT_UAIR, AT_DAIR, AT_TAUNT, AT_NSPECIAL, AT_FSPECIAL, AT_USPECIAL, AT_DSPECIAL]
	
	with (asset_get("oPlayer")) {
        if (player != other.player) {
			for (var i = 0; i < array_length_1d(attacks); ++i){
				if move_cooldown[attacks[i]] < 2{
					move_cooldown[attacks[i]] = 2;
			    }
			}
        }
    }

    
    with (asset_get("oPlayer")) {
        for (var i = 0; i < array_length_1d(articles); ++i){
            with ( asset_get( string(articles[i]) ) ){
                hitstop = 2;
            }
        }
    }
}
}
	if !(free){
		if (joy_pad_idle && special_pressed && state_timer <= 1){
		fs_force_fs = true;
		}
	}

if easter_egg_set == true {
	if (state == PS_TECH_GROUND && state_timer == 1){
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("tech1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("tech6"));
    }
}
	if (state == PS_WALL_TECH && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("tech1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("tech6"));
    }
}

	if (state == PS_TECH_FORWARD && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("tech1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("tech6"));
    }
}

	if (state == PS_TECH_BACKWARD && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("tech1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("tech6"));
    }
}


	if (state == PS_FIRST_JUMP && state_timer == 1 || state == PS_DOUBLE_JUMP && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("jump1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("jump2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("jump3"));
    }
}

/*
if (oPlayer.state == PS_DEAD && instance_number(oPlayer) < 3 && window_timer <= 1){
	easter_egg_set = false;
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("victory1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("victory3"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("victory2"));
    }
} */
}

if (got_hit_num == 1){
	    got_hit_ticks++;
}
if (state_cat == SC_HITSTUN && got_hit_ticks == 16){
	got_hit_num = 2;
if easter_egg_set = true && got_hit_num = 2 {
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("hurt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("hurt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("hurt3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("hurt4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("hurt5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("hurt6"));
    }
    got_hit_ticks = 0;
got_hit_num = 0;
}
}

#define clear_button_buffers_after_dashing
clear_button_buffer(PC_LEFT_HARD_PRESSED);
clear_button_buffer(PC_RIGHT_HARD_PRESSED);
clear_button_buffer(PC_ATTACK_PRESSED);
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_STRONG_PRESSED);
return;

#define set_extra_variables_after_dashing
peacock_used_nair = 0;
vsp = -0.5;


#define attempt_to_activate_dspecial

if (state_cat != SC_HITSTUN && !was_parried && down_down && special_pressed && instance_exists(peacock_article_doom_id) && peacock_article_doom_id.state >= 5 && peacock_article_doom_id.state <= 7) {
    
    //can't activate dspecial in any of these states.
    switch (state) {
        case PS_PARRY_START:
        case PS_PARRY:
        case PS_AIR_DODGE:
        case PS_ROLL_FORWARD:
        case PS_ROLL_BACKWARD:
        case PS_RESPAWN:
        case PS_SPAWN:
        case PS_DEAD:
            //do nothing
        break;
        
        default:
            //otherwise use dspecial
            clear_button_buffer(PC_SPECIAL_PRESSED);
            peacock_article_doom_id.state = 8;
            peacock_article_doom_id.state_timer = 0;
        break;
    }
}
return;

