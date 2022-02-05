//update

if (attack == AT_TAUNT_2){
	
	if (window == 2){
		image_index = note_visual;
	}
		
		
}

if (!free){
	move_cooldown[AT_NSPECIAL_AIR] = 0;	
}

if (state = PS_CROUCH){
    if (state_timer == 1 && down_down){
        sound_play(sound_get("move"));
}
}

if !(state = PS_WALK){
walk_speed = 2;
}

if (state = PS_WALK){
    if (state_timer >= 12){
        walk_speed = 10;
        if (state_timer >= 24){
walk_speed = 0;
        if (state_timer >= 36){
 state_timer = 1;
        }
        }
    }
    
    if (state_timer == 1){
        walk_speed = 2;
        snd_rng = random_func(0, 3, true);
        
        if (snd_rng == 0){
            sound_play(sound_get("walk1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("walk2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("walk3"));            
        }
    }
    
    if (state_timer == 18){
        shake_camera( 3, 3 ); 
        snd_rng = random_func(0, 4, true);
        
        if (snd_rng == 0){
            sound_play(sound_get("step1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("step2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("step3"));            
        } else if (snd_rng == 3){
            sound_play(sound_get("step4"));            
        }
}
}

if (state = PS_LAND){
   shake_camera( 2, 2 );
}

if (state == PS_WAVELAND){
   shake_camera( 1, 1 ); 
}

if (state = PS_LANDING_LAG){
   shake_camera( 3, 3 );
}

if (state == PS_DASH && state_timer == 60){
    state_timer = 0;
}
    
    if (state == PS_DASH && state_timer == 2){
                snd_rng = random_func(0, 10, true);
        
        if (snd_rng == 0){
            sound_play(sound_get("dash1"));
        } else if (snd_rng == 1){
            sound_play(sound_get("dash2"));            
        } else if (snd_rng == 2){
            sound_play(sound_get("dash3"));            
        } else if (snd_rng == 3){
            sound_play(sound_get("dash4"));            
        } else if (snd_rng == 4){
            sound_play(sound_get("dash5"));            
        } else if (snd_rng == 5){
            sound_play(sound_get("dash6"));            
        } else if (snd_rng == 6){
            sound_play(sound_get("dash7"));            
        } else if (snd_rng == 7){
            sound_play(sound_get("dash8"));            
        } else if (snd_rng == 8){
            sound_play(sound_get("dash9"));            
        } else if (snd_rng == 9){
            sound_play(sound_get("dash10"));            
        }
}

       if (state != PS_DASH){
       	with (self){
            sound_stop(sound_get("dash1"));
            sound_stop(sound_get("dash2"));
            sound_stop(sound_get("dash3"));
            sound_stop(sound_get("dash4"));
            sound_stop(sound_get("dash5"));
            sound_stop(sound_get("dash6"));
            sound_stop(sound_get("dash7"));
            sound_stop(sound_get("dash8"));
            sound_stop(sound_get("dash9"));
            sound_stop(sound_get("dash10"));
            }
       }

    

if (state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP){
    if (state_timer == 1){
    sound_play(sound_get("jump"));   
}
}

if (state == PS_IDLE || state == PS_JUMPSQUAT){
       bb_consecutive_cancelled_attacks = 0;
}

if (!free){
    dair_float = true;
    dair_timer = 0;
}

if (state == 34 || state == 33){
	    if (state_timer == 1){
        snd_rng = random_func(0, 2, true);
            
        if (snd_rng == 0){
            sound_play(sound_get("move"));
        } else if (snd_rng == 1){
            sound_play(sound_get("move2"));            
        }
    }
    if (!cancelled_voice) {
	if (easter_egg_set == true){
			    if (state_timer == 1){
			    	        snd_rng = random_func(0, 3, true);
			    	        
		    if (snd_rng == 0) {
        sound_play(sound_get("voice_djump1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_djump2"));
    }
	}
    }
    }
}

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
		
		 if  !(oPlayer.url == 2135192216
		 || oPlayer.url == 2407716024
		 || oPlayer.url == 2605435443
		 || get_player_color(player) == 19
		 || get_player_color(player) == 20
		 || get_player_color(player) == 21){
    snd_rng = random_func(0, 4, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_intro3"));
    } else if (snd_rng == 3){
        sound_play(sound_get("voice_intro4"));
    }
		 	}
    
  if (oPlayer.url == 2135192216 && get_player_color(player) != 19 && get_player_color(player) != 20 && get_player_color(player) != 21 && (oPlayer.url != "2605435443")){
    snd_rng = random_func(0, 5, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_intro3"));
    } else if (snd_rng == 3){
        sound_play(sound_get("voice_intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("voice_intro_filia"));
    }
}

    if (oPlayer.url == 2407716024 && get_player_color(player) != 19 && get_player_color(player) != 20 && get_player_color(player) != 21 && (oPlayer.url != "2605435443")){
	    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_intro3"));
    } else if (snd_rng == 3){
        sound_play(sound_get("voice_intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("voice_intro_peacock"));
    }
}   

if ((oPlayer.url == "2605435443") && get_player_color(player) != 19 && get_player_color(player) != 20 && get_player_color(player) != 21){
	    snd_rng = random_func(0, 6, true);
    if (snd_rng == 0) {
        sound_play(sound_get("voice_intro1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_intro2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_intro3"));
    } else if (snd_rng == 3){
        sound_play(sound_get("voice_intro4"));
    } else if (snd_rng == 4){
        sound_play(sound_get("voice_intro_bb"));
    } else if (snd_rng == 5){
        sound_play(sound_get("voice_intro_bb2"));
    }
}
if (get_player_color(player) == 19){
	        sound_play(sound_get("voice_intro_sans"));
}
if (get_player_color(player) == 20){
        sound_play(sound_get("voice_intro_ena"));
    }

if (get_player_color(player) == 21){
        sound_play(sound_get("voice_intro_tankman"));
    }
} 
}

if easter_egg_set == true {
	if (state == PS_TECH_GROUND && state_timer == 1){
    snd_rng = random_func(0, 6, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_tech6"));
    }
}
	if (state == PS_WALL_TECH && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_tech6"));
    }
}

	if (state == PS_TECH_FORWARD && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_tech6"));
    }
}

	if (state == PS_TECH_BACKWARD && state_timer == 1){
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_tech1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_tech2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_tech3"));
    } else if (snd_rng == 3) {
        sound_play(sound_get("voice_tech4"));
    } else if (snd_rng == 4) {
        sound_play(sound_get("voice_tech5"));
    } else if (snd_rng == 5) {
        sound_play(sound_get("voice_tech6"));
    }
}

if(attack != AT_UTILT){
	    	voice_utilt_chain1 = false;
    	voice_utilt_chain2 = false;
    	voice_utilt_chain3 = false;
}

	if (state == PS_FIRST_JUMP && state_timer == 1 || state == PS_WALL_JUMP && state_timer == 1){
    snd_rng = random_func(0, 2, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_jump1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_jump2"));
    }
}

	if (state == PS_DOUBLE_JUMP && state_timer == 1){
    snd_rng = random_func(0, 2, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_djump1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_djump2"));
    }
}

if (got_hit_num == 1){
	    got_hit_ticks++;
}
if (state_cat == SC_HITSTUN && got_hit_ticks == 16){
	got_hit_num = 2;
if easter_egg_set = true && got_hit_num = 2 {
    snd_rng = random_func(0, 3, true);
    
    if (snd_rng == 0) {
        sound_play(sound_get("voice_hurt1"));
    } else if (snd_rng == 1) {
        sound_play(sound_get("voice_hurt2"));
    } else if (snd_rng == 2) {
        sound_play(sound_get("voice_hurt3"));
    }
    got_hit_ticks = 0;
got_hit_num = 0;
}
}
}

//TAUNT 2
if (state == PS_PARRY_START && taunt_pressed){
   set_attack = AT_UTHROW;
}

//Sound Stun Cycle
sound_stun_timer--;
if(sound_stun_timer <= 1){
         sound_stun_timer = 0;
}
if(sound_stun_timer == 0){
	sound_stun = true;
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
	
//execute noise cancel code
user_event(0);
