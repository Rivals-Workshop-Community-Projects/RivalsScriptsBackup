if attack == AT_NSPECIAL{
move_cooldown[AT_NSPECIAL] = 60}

var random_laugh = random_func( 0, 2, true);

if (attack == AT_TAUNT) && window_timer == 2{
	if get_player_color(player) == 2{
}else{
	if get_player_color(player) == 3{
    sound_play(sound_get("snd_suslaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 8{
    sound_play(sound_get("snd_dadlaugh_spedup"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 13{
    sound_play(sound_get("snd_spamlaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 14{
    sound_play(sound_get("snd_manlaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 16{
    sound_play(sound_get("snd_gaslaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 18{
    sound_play(sound_get("snd_moolaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 19{
    sound_play(sound_get("snd_ballaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 22{
    sound_play(sound_get("snd_marlaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 24{
    sound_play(sound_get("snd_keflaugh"), false, false, 1.0, 1.0);
}else{
	if get_player_color(player) == 30 && get_player_name(player) == "FLOPPO"{
    sound_play(sound_get("snd_warlaugh"), false, false, 1.0, 1.0);
}else{
	if(random_laugh == 0){
    sound_play(sound_get("snd_joker_laugh0"), false, false, 1.0, 1.0)};
	if(random_laugh == 1){
    sound_play(sound_get("snd_joker_laugh1"), false, false, 0.7, 1.0)};
	//if(random_laugh == 2){
    //sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0)};
}}}}}}}}}}}}

//When adding the third back, make sure to change the random func from 0, 2, to 0, 3, or else it wont work!

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
    trigger_b_reverse();
}
//Spooky special breverse code so you can do it multiple times during uspecial
if (attack == AT_USPECIAL)
{
    if ((left_down && state_timer <= 5 && spr_dir == 1) || (right_down && state_timer <= 5 && spr_dir == -1) &&     
     (b_reversed == false)) 
     {
      hsp *= -1;
      spr_dir *= -1;
      b_reversed = true;
    } 
    else if (state_timer == 6) 
    {
        b_reversed = false;
    }
}

if (attack == AT_USPECIAL){
    if window = 4 && window_timer = 23{
        state = PS_PRATFALL
    }
    if window = 4 && window_timer = 1{
        if attack_down{
            create_hitbox(AT_USPECIAL, 1, x, y-15)
        }else if shield_down{
        }else{
            create_hitbox(AT_USPECIAL, 2, x, y) 
            create_hitbox(AT_USPECIAL, 3, x, y)
            create_hitbox(AT_USPECIAL, 4, x, y)
            create_hitbox(AT_USPECIAL, 5, x, y)
            create_hitbox(AT_USPECIAL, 6, x, y)
        }
        }
    if free = 0 && window >= 3{
        hsp = 0
        vsp = 0
    }
    can_fast_fall = 0
    if (window == 2 && window_timer <= 4) or window = 1{
        vsp = 0
    }
    
    if window == 2 && window_timer == 5{
        if up_down{
            if left_down or right_down{
            	vsp -= 17
            	}else{
            	vsp -= 22	
            	}
            }
        if down_down{	
            if left_down or right_down{
            	vsp += 17
            	}else{
            	vsp += 22
            	}
            }
		if not right_down and not left_down and not up_down and not down_down{
            vsp = 0
        }
        if left_down{
            hsp =- 16
        }else
        if right_down{
            hsp =+ 16
        }
}
}

if (attack == AT_USTRONG or attack == AT_FSPECIAL) && window == 1 && window_timer == 1{
my_grab_id = noone;
}

if (attack == AT_USPECIAL && window == 4 && special_pressed && (nspecial_ammo >= 1) && warp_count < 3){
	set_attack( AT_USPECIAL );
	nspecial_ammo -= 1
	nspecial_timer = 0
	warp_count += 1
	}
	
if attack = AT_DSPECIAL or attack = AT_DATTACK{
    can_fast_fall = 0
}

if attack = AT_BAIR{
	if window = 1{ bair_shot = 0 }
	if window = 2{
	if window_timer = 1{
		ammo_bair_starting = nspecial_ammo
	}
    if spr_dir = 1{
    if window_timer = 1 && (attack_down or ((spr_dir = -1 && right_strong_down) or (spr_dir = 1 && left_strong_down))) && nspecial_ammo > 0{
		bair_shot = 1
        create_hitbox(AT_BAIR, 2, x-30, y+15)
        nspecial_ammo -= 1
		nspecial_timer = 0
		sound_play(sound_get("snd_smallswing"), false, false, 0.9, 1.0);
    }
    
    if window_timer = 5 && (attack_down or ((spr_dir = -1 && right_strong_down) or (spr_dir = 1 && left_strong_down))) &&  bair_shot > 0{
        create_hitbox(AT_BAIR, 3, x-45, y-15)
        //nspecial_ammo -= 1
		//nspecial_timer = 0
		sound_play(sound_get("snd_smallswing"), false, false, 0.9, 1.0);
    }
    
    if window_timer = 8 && (attack_down or ((spr_dir = -1 && right_strong_down) or (spr_dir = 1 && left_strong_down))) &&  bair_shot > 0 {
        create_hitbox(AT_BAIR, 1, x-30, y-45)
        //nspecial_ammo -= 1
		//nspecial_timer = 0
		sound_play(sound_get("snd_smallswing"), false, false, 0.9, 1.0);
    }
    }else{
        if window_timer = 1 && (attack_down or ((spr_dir = -1 && right_strong_down) or (spr_dir = 1 && left_strong_down))) &&  bair_shot > 0{
        create_hitbox(AT_BAIR, 2, x+30, y+15)
        //nspecial_ammo -= 1
		//nspecial_timer = 0
		sound_play(sound_get("snd_smallswing"), false, false, 0.9, 1.0);
    }
    
    if window_timer = 5 && (attack_down or ((spr_dir = -1 && right_strong_down) or (spr_dir = 1 && left_strong_down))) &&  bair_shot > 0{
        create_hitbox(AT_BAIR, 3, x+45, y-15)
        //nspecial_ammo -= 1
		//nspecial_timer = 0
		sound_play(sound_get("snd_smallswing"), false, false, 0.9, 1.0);
    }
    
    if window_timer = 8 && (attack_down or ((spr_dir = -1 && right_strong_down) or (spr_dir = 1 && left_strong_down))) &&  bair_shot > 0{
        create_hitbox(AT_BAIR, 1, x+30, y-45)
        //nspecial_ammo -= 1
		//nspecial_timer = 0
		sound_play(sound_get("snd_smallswing"), false, false, 0.9, 1.0);
    }
    }}}
       
    //if window_timer = 1{
    //    clear_button_buffer(PC_ATTACK_PRESSED)
    //    set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, 0);
    //            set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
    //            set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
    //            set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
    //            uair_stationary = 0
    //        }
    //        }
    //if window_timer > 12 && window = 1 && (attack_down or up_strong_down){
    //            set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, 0);
    //            set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 2);
    //            set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 90);
    //            set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
    //            set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 2);
    //            uair_stationary = 0
    //}
//}


if attack = AT_DSPECIAL && window = 1 && window_timer = 1{
    spawn_hit_fx(x, y, pirouette)
}
if attack = AT_DSPECIAL && window = 5 && window_timer = 2{
if pirouette_popup = 1{
  //On Fire
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
  sound_play(asset_get("sfx_zetter_fireball_fire"));
  burned = true;
  burnt_id = self;
  burn_timer = 0;
  _col =  make_colour_rgb(170, 0, 0);
  flash_time = 1.5
}
blastzone_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
blastzone_l = get_stage_data(SD_LEFT_BLASTZONE_X);
var foley_noise = random_func( 0, 16, true);
if pirouette_popup = 2{
  //Foley
  move_cooldown[AT_DSPECIAL] = 900
	if(foley_noise == 0){
    sound_play(sound_get("snd_toilet"), false, false, 1.0, 1.0)};
	if(foley_noise == 1){
    sound_play(sound_get("snd_splat"), false, false, 1.0, 1.0)};
	if(foley_noise == 2){
    sound_play(sound_get("snd_clown_song"), false, false, 1.0, 1.0)};
	if(foley_noise == 3){
    sound_play(sound_get("snd_crowd_crickets"), false, false, 1.0, 1.0)};
	if(foley_noise == 4){
    sound_play(sound_get("snd_slidewhist"), false, false, 1.0, 1.0)};
	if(foley_noise == 5){
    sound_play(sound_get("snd_pombark"), false, false, 1.0, 1.0)};
	if(foley_noise == 6){
    sound_play(sound_get("snd_queen_hoot"), false, false, 1.0, 1.0)};
	if(foley_noise == 7){
    sound_play(sound_get("snd_scream"), false, false, 1.0, 1.0)};
	if(foley_noise == 8){
    sound_play(sound_get("snd_laughtrack"), false, false, 1.0, 1.0)};
	if(foley_noise == 9){
    sound_play(sound_get("snd_dununnn"), false, false, 1.0, 1.0)};
	if(foley_noise == 10){
    sound_play(sound_get("snd_chomp"), false, false, 1.0, 1.0)};
	if(foley_noise == 11){
    sound_play(sound_get("snd_bigcar_yelp"), false, false, 1.0, 1.0)};
	if(foley_noise == 12){
    sound_play(sound_get("snd_guitar"), false, false, 1.0, 1.0)};
	if(foley_noise == 13){
    sound_play(sound_get("snd_meow"), false, false, 1.0, 1.0)};
	if(foley_noise == 14){
    sound_play(sound_get("snd_egg"), false, false, 1.0, 1.0)};
	if(foley_noise == 15){
    sound_play(sound_get("snd_mysterygo"), false, false, 1.0, 1.0)};
}
if pirouette_popup = 3{
  //Slippery
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_splat"), false, false, 1.0, 1.0);
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  effect_timer = 900
  active_effect = 1
  _col =  make_colour_rgb(250, 250, 250);
  flash_time = 1.25
}
if pirouette_popup = 4{
  //Awkward
  move_cooldown[AT_DSPECIAL] = 900
  //sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
  sound_play(sound_get("snd_awkward"));
  effect_timer = 900
  active_effect = 2
  _col =  make_colour_rgb(175, 0, 175);
  flash_time = 1.5
}
if pirouette_popup = 5{
  //Tranquil
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  sound_play(sound_get("snd_shadowpendant"), false, false, 1.0, 1.0);
  effect_timer = 900
  active_effect = 3
  _col =  make_colour_rgb(0, 65, 250);
  flash_time = 1.25
}
if pirouette_popup = 6{
  //Bird
  move_cooldown[AT_DSPECIAL] = 900
  //sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
  sound_play(sound_get("snd_birdtweet"));
  if spr_dir = -1{
  create_hitbox(AT_DSPECIAL, 1, blastzone_r-5, 300)
    }else{
  create_hitbox(AT_DSPECIAL, 1, blastzone_l+5, 300)  
}}
if pirouette_popup = 7{
  //Attack Boost
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_boost"), false, false, 1.0, 1.0);
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  effect_timer = 900
  active_effect = 4
  _col =  make_colour_rgb(228, 0, 0);
  flash_time = 1.25
}
if pirouette_popup = 8{
  //Kaboom
  move_cooldown[AT_DSPECIAL] = 900
  var boom = spawn_hit_fx(x-(spr_dir*2), y-50, explosion_effect); 
  boom.spr_dir = 1
  sound_play(sound_get("snd_badexplosion"));
}
if pirouette_popup = 9{
  //Ghastly
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_spooky"), false, false, 0.75, 1.0);
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  effect_timer = 900
  active_effect = 5
  _col =  make_colour_rgb(0, 250, 150);
  flash_time = 1.25
}
if pirouette_popup = 10{
  //Wormhole
  move_cooldown[AT_DSPECIAL] = 900
  effect_timer = 600
  active_effect = 8
  sound_play(sound_get("snd_weirdeffect"), false, false, 0.75, 1.0);
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  _col =  make_colour_rgb(220, 113, 255);
  flash_time = 0
}
if pirouette_popup = 11{
  //Perfect 10
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_applause"));
  sound_play(sound_get("snd_heal"));
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  take_damage(player, player, -10)
  _col =  make_colour_rgb(0, 255, 34);
  flash_time = 1.25
}
if pirouette_popup = 12{
  //Tiring
  move_cooldown[AT_DSPECIAL] = 900
  destroy_hitboxes();
  attack_end();
  set_state(free? PS_PRATFALL:PS_PRATLAND);
  was_parried = true;
  parry_lag = 90;
  sound_play(sound_get("snd_hypnosis"));
  sound_play(sound_get("snd_hurt1"));
  _col =  make_colour_rgb(72, 72, 255);
  flash_time = 1.50
}
if pirouette_popup = 13{
  //Swift Legs
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_speedup"));
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  effect_timer = 900
  active_effect = 6
  _col =  make_colour_rgb(0, 200, 255);
  flash_time = 1.25
}
if pirouette_popup = 14{
  //Twisted Ankle
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_ankle"), false, false, 5.0, 1.0);
  sound_play(sound_get("snd_hurt1"));
  take_damage(player, player, 10)
}
if pirouette_popup = 15{
  //Full House
  move_cooldown[AT_DSPECIAL] = 900
  sound_play(sound_get("snd_jokerha"), false, false, 1.0, 1.0);
  sound_play(sound_get("snd_fullhouse"));
  effect_timer = 900
  active_effect = 7
  _col =  make_colour_rgb(255, 175, 0);
  flash_time = 1.25
}
}
//Kaboom again (hitbox edition)
if attack = AT_DSPECIAL && pirouette_popup = 8 && window = 5 && window_timer = 6{
  create_hitbox(AT_DSPECIAL, 2, x+(spr_dir*1), y-40);
}


if attack = AT_FSPECIAL{
	if window = 3{
		if left_down && spr_dir = 1 or right_down && spr_dir = -1{
			hsp = hsp/1.7
		}else{
		hsp = hsp/1.3
		}
	}
	if window = 1{
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
	}
	if window = 2 && window_timer = 49 && !has_hit_player{
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
	}else{
	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -9);
	}
	if spr_dir = -1{
    	if right_down{
    	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 0);	
    	}
    	}else{
    	if left_down{
    	set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 0);
    	}
    	}
    fspecial_used = 1
    if window = 2 && window_timer >= 8 && shield_pressed && has_hit = false{
        //destroy_hitboxes();
        //state = PS_PRATFALL
        //hsp = hsp/1.4
        //fspecial_used = 0
    }
    if window_timer = 1{
    	fspecial_returning_angle = 0
        fspecial_starting_x = x
    }
    off_edge = true
    can_move = 0
    can_fast_fall = false
    if window_timer = 12{
    	if down_down{
    		fspecial_returning_angle = 1
    	}else{
    		fspecial_returning_angle = -1
    	}
    }
        if window_timer > 12{
        vsp = fspecial_returning_angle
    }
    if state == PS_ATTACK_AIR or state = PS_ATTACK_GROUND{
    if not (up_down or down_down) && window_timer <= 12{
        vsp = 0
    }else{
        if up_down && window_timer <= 12{
            vsp = -2.3
        }
        if down_down && window_timer <= 12{
            vsp = 2.3
        }
    }
    if  spr_dir = -1 && window_timer > 12{
        hsp += 1
    }
    if spr_dir = 1 && window_timer > 12{
        hsp -= 1
    }
    }
    if spr_dir = 1 && x < fspecial_starting_x && window < 4{
    hsp = 0
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
    window = 4
    window_timer = 1
    }
    if spr_dir = -1 && x > fspecial_starting_x && window < 4{
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
    hsp = 0
    window = 4
    window_timer = 1
    }

   if was_parried = true{
       hsp = 0
       window = 4
   }
}

if attack = AT_NAIR{
    nair_lagwindow = window
}else{
    nair_lagwindow = 0
}

if attack = AT_NAIR{
if window = 1 && window_timer == 5{
    sound_play(sound_get("snd_swing_quick_mid"), false, false, 1.0, 1.2)};
	if window = 3 && window_timer == 8 && !hitpause{
	sound_play(sound_get("snd_swing_quick_mid"), false, false, 1.0, 0.8)};
}

if attack = AT_DATTACK{
if window = 1 && window_timer == 3{
    sound_play(sound_get("snd_swing_quick_mid"), false, false, 1.0, 0.8)};
	if window = 4 && window_timer == 1 && !hitpause{
	sound_play(sound_get("snd_swing_quick_mid"), false, false, 1.0, 1.2)};
	if window = 4 && window_timer == 5 && !hitpause{
	sound_play(sound_get("snd_boing"), false, false, 1.5, 1.2)};
}

//epic nspecial suit switching code and stuff

if attack = AT_NSPECIAL && nspecial_swaptimer = 15 && window = 1 && window_timer > 5 && special_down && nspecial_ammo > 0{
    if nspecial_suit < 4{
nspecial_suit += 1
sound_play(sound_get("snd_menu_move"));
}else{
nspecial_suit = 1
sound_play(sound_get("snd_menu_move"));
	}
}

if attack = AT_NSPECIAL && window = 1 && !attack_pressed{
	nspec_attackpress = 0
	}

if attack = AT_NSPECIAL && window = 1 && window_timer == 15 && special_down && nspecial_ammo > 0{
	window_timer = 5
}
if attack = AT_NSPECIAL && window = 1 && window_timer > 5 && !special_down && nspecial_ammo > 0{
	window_timer = 0
	window = 2
}
if attack = AT_NSPECIAL && window = 1 && window_timer > 6 && nspecial_ammo = 0{
	window_timer = 0
	window = 2
}
//if attack = AT_NSPECIAL && (window = 1 && shield_pressed){
//	attack_end();
//	window = 4;
//	window_timer = 0;
//	clear_button_buffer(PC_SHIELD_PRESSED);
//}

if window_timer = 1 && attack = AT_NSPECIAL && window = 2 && nspecial_ammo > 0{
    create_hitbox(AT_NSPECIAL, nspecial_suit, x+25 / spr_dir, y-25)
    //HG_PROJECTILE_HOMING = 67;           //if true, allow projectile to use the homing code
    //HG_PROJECTILE_HOMING_TURN = 68;	//how sharp the angle for the homing is, and only applies if homing is true (make sure it's a number between 0 and 1)
}

if attack = AT_NSPECIAL && window = 3 && window_timer = 1 && nspecial_ammo > 0{
    nspecial_ammo -= 1
	nspecial_timer = 0
}
if attack = AT_NSPECIAL && window = 2 && window_timer = 1 && nspecial_ammo > 0{
    sound_play(sound_get("snd_jokeroh"));
	sound_play(sound_get("snd_spearrise"));
	if state_timer >= 21{
	sound_play(sound_get("snd_select"))
}}

if taunt_down && attack == AT_TAUNT_2 && window_timer >= 2{
	window_timer = 2
}

if attack = AT_TAUNT_2 && left_down && state = PS_ATTACK_GROUND{
	spr_dir = -1
	hsp = -0.5
	spawn_dust_fx(x+25, y, asset_get("fx_dashstep_new_bg"), 4)
}

if attack = AT_TAUNT_2 && right_down && state = PS_ATTACK_GROUND{
	spr_dir = 1
	hsp = 0.5
	spawn_dust_fx(x-25, y, asset_get("fx_dashstep_new_bg"), 4)
}
if attack = AT_TAUNT_2 && (jump_pressed || tap_jump_pressed) && state = PS_ATTACK_GROUND{
	vsp = -3.5
	//spawn_dust_fx(x-25, y, asset_get("fx_jump_bg"), 4)
}
if attack = AT_TAUNT_2 && (right_down || left_down) && state_timer % 20 == 0 && state = PS_ATTACK_GROUND{
sound_play(sound_get("snd_squeaky"), false, 0, 0.5, (random_func(1, 1, false) + 4) * 0.21);
}
if attack = AT_TAUNT_2 && left_down && state = PS_ATTACK_AIR{
	spr_dir = -1
	hsp = -0.1
}
if attack = AT_TAUNT_2 && right_down && state = PS_ATTACK_AIR{
	spr_dir = 1
	hsp = 0.1
}


if attack = AT_FSPECIAL && window = 3 && has_hit_player && !hitpause{
	vsp = -9
}

if attack == AT_JAB && !hitpause{
	if window < 2{
		set_attack_value(AT_JAB, AG_NO_PARRY_STUN, true);
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
	if window = 2 && window_timer < 14 && window_timer > 7 && attack_pressed{
		if up_down{
			attack = AT_UTILT
			window = 1
			window_timer = 1
		}else if (left_down && spr_dir = -1 or right_down && spr_dir = 1){
			attack = AT_FTILT
			window = 1
			window_timer = 1
		}else if down_down{
			spawn_hit_fx( x, y, knifedissapear );
			attack = AT_DTILT
			window = 1
			window_timer = 1
		}else{
		set_attack_value(AT_JAB, AG_NO_PARRY_STUN, false);
		window = 4
		window_timer = 2
		}
		}
	if window = 4 && window_timer = 1{
		window = 8
	}
}

if attack == AT_FTILT && window == 2 && (window_timer == 1 || window_timer == 3 || window_timer == 5) {
sound_play(sound_get("snd_smallswing"));
}

if attack == AT_UTILT && window == 1 && (window_timer == 1) {
sound_play(sound_get("snd_boing"), false, false, 10.0, 1.25);
}

if attack = AT_UAIR && window_timer = 3 && window = 1{
	create_hitbox(AT_UAIR, 6, x, y-120)
}

if attack = AT_FSPECIAL{
	can_move = 0
	{		if instance_exists(my_grab_id) && !hitstop{
			my_grab_id.force_depth = true;
			my_grab_id.hitstun = clamp(my_grab_id.hitstun, 2, 99999);
			my_grab_id.depth = depth - 1;
			my_grab_id.x = lerp(my_grab_id.x, x, window_timer / 20);
			my_grab_id.y = lerp(my_grab_id.y, y - char_height + 40, window_timer / 30);
		}
		if window >= 3 && !free fixed_set_state(PS_LANDING_LAG);
		if window >= 4 my_grab_id = noone;
	}
}

if attack = AT_USTRONG{
	can_move = 0
	{		if instance_exists(my_grab_id) && !hitstop{
			my_grab_id.force_depth = true;
			my_grab_id.hitstun = clamp(my_grab_id.hitstun, 2, 99999);
			my_grab_id.depth = depth - 1;
			my_grab_id.x = lerp(my_grab_id.x, x, window_timer / 20);
			my_grab_id.y = lerp(my_grab_id.y, y - char_height, window_timer / 20);
		}
		if window >= 3 && !free fixed_set_state(PS_LANDING_LAG);
		if window >= 4 my_grab_id = noone;
	}
	if window == 3 && (window_timer == 1 || window_timer == 6 || window_timer == 11 || window_timer == 16) && !hitpause{
	sound_play(sound_get("snd_arrow"), false, false, 0.3, 1.0);
}}

if attack = AT_FSTRONG && (smash_charging = true && strong_charge = 45) && window = 1 && !hitpause{
	spawn_hit_fx(x+8*-spr_dir, y-38, dair_warn)
	sound_play(sound_get("snd_eye_telegraph"), false, false, 1.0, 1.0);
}
if attack = AT_DAIR{ 
if window_timer = 9 && window = 1 && !hitpause{
	sound_play(sound_get("snd_swing_down"), false, false, 1.5, 1.0)}
if window_timer = 3 && window = 2 && !hitpause{
	spawn_hit_fx(x, y+42, dair_warn)}
	
}
if attack = AT_FAIR{ 
if window_timer = 1 && window = 1 && !hitpause{
	sound_play(sound_get("snd_swing_up"), false, false, 1.5, 1.0)}
if attack = AT_FAIR && window_timer = 8 && window = 1 && !hitpause{
	spawn_hit_fx(x+65/spr_dir, y-35, dair_warn)}
	
}
if attack = AT_DTILT && window_timer = 1 && window = 2 && !hitpause{
	spawn_dust_fx(x+45/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 1, x+45*spr_dir, y-15)
	sound_play(sound_get("snd_noise"), false, false, 0.75, 1.0);
}
if attack = AT_DTILT && window = 2 && window_timer = 4 && attack_down && nspecial_ammo > 0{
	spawn_dust_fx(x+80/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 2, x+75*spr_dir, y-15)
	nspecial_ammo -= 1
	sound_play(sound_get("snd_noise"), false, false, 0.75, 1.0);
}
if attack = AT_DTILT && window = 2 && window_timer = 6 && attack_down && nspecial_ammo > 0{
	spawn_dust_fx(x+105/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 3, x+105*spr_dir, y-15)
	nspecial_ammo -= 1
	sound_play(sound_get("snd_noise"), false, false, 0.75, 1.0);
}
if attack = AT_DTILT && window = 2 && window_timer = 8 && attack_down && nspecial_ammo > 0{
	spawn_dust_fx(x+135/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 3, x+135*spr_dir, y-15)
	nspecial_ammo -= 1
	sound_play(sound_get("snd_noise"), false, false, 0.75, 1.0);
}

if attack = AT_DATTACK && window > 2{
	if window > 4 && window_timer < 2{
	hsp -= 2 / spr_dir
	}
	hsp -= 0.12 / spr_dir
	}

if attack = AT_UAIR && window = 2 && window_timer < 17{
	uair_landing_hitbox = 2
}
if attack = AT_NSPECIAL{
	if window = 1 && window_timer = 1{
        angle_used_nspecial = 0 
    }
}
if attack = AT_USTRONG{
	off_edge = 0
	if window = 3{
	ustrongproj_selfsustain = 1
	} if window = 1 && window_timer = 1{
		create_hitbox(AT_USTRONG, 5, x, y-140)
		ustrongproj_selfsustain = 0
	}
}

if attack = AT_FSPECIAL && !hitstop{
if window = 1 && window_timer == 10{
    sound_play(sound_get("snd_swing_up"), false, false, 1.0, 1.0)};
	if window = 4 && window_timer == 1 && !hitpause{
	sound_play(sound_get("snd_swing_down"), false, false, 1.0, 0.8)};
}
if attack = AT_FSPECIAL && window = 1 && window_timer = 3 && fspecial_vc = 1{
	if random_func(2, 3, 1) = 1{
	sound_play(sound_get("snd_joker_ha1"))
	}else{
	sound_play(sound_get("snd_joker_metamorphosis"))
	}
}

if attack = AT_TAUNT && window = 1 && window_timer = 44 && taunt_down{
	window_timer = 1
}

if attack = AT_DSTRONG && (window = 2 && window_timer = 12){
	sound_play(sound_get("snd_chain_extend"));
}
if attack != AT_DSTRONG{
	sound_stop(sound_get("snd_chain_extend"))
}

//if (attack = AT_TAUNT) && (up_down) {
      //set_attack( 49 );
   //}

//print_debug(chaos_timer)

if attack = 49 && (window >= 2 && window != 7){
		if chaos_timer > 22.2{
		chaos_timer -= 0.040}	
		if chaos_timer <= 29.5{
		chaos_timer = 10}
		can_move = false;
		x = lerp(x, get_stage_data(SD_X_POS) + (get_stage_data(SD_WIDTH) / 2), 0.1);
		y = lerp(y, get_stage_data(SD_Y_POS) + -164, 0.1);
		hsp = 0;
		vsp = 0;
		invincible = true;
		hud_offset = 999;
		if window = 2{
		if window_timer % floor(chaos_timer) == 0{
		var knife = create_hitbox(49, 1, ((random_func( 0, (get_stage_data(SD_WIDTH)), true)) + get_stage_data(SD_LEFT_BLASTZONE_X)) + 475, floor(y-500));
		}
	}
}

if attack = 49 && window = 4 && window_timer == 5{
create_hitbox(49, 1, floor (x-80), floor(y-800));
create_hitbox(49, 1, floor (x+80), floor(y-800));
create_hitbox(49, 1, floor (x-160), floor(y-650));
create_hitbox(49, 1, floor (x+160), floor(y-650));
create_hitbox(49, 1, floor (x-240), floor(y-500));
create_hitbox(49, 1, floor (x+240), floor(y-500));
		}

if attack = 49 && window = 5 && window_timer == 60{
create_hitbox(49, 1, floor (x+0), floor(y-500));
create_hitbox(49, 1, floor (x-80), floor(y-900));
create_hitbox(49, 1, floor (x+80), floor(y-900));
create_hitbox(49, 1, floor (x-160), floor(y-1050));
create_hitbox(49, 1, floor (x+160), floor(y-1050));
create_hitbox(49, 1, floor (x-0), floor(y-1350));
create_hitbox(49, 1, floor (x+240), floor(y-1350));
create_hitbox(49, 1, floor (x-240), floor(y-1350));
		}

if attack = 49 && window = 6 && window_timer == 15{
create_hitbox(49, 3, floor (x+0), floor(y-0));
sound_stop(sound_get("snd_rumble"));
}

if attack = 49 && window = 7 && window_timer >= 1{
		can_move = false;
		x = lerp(x, get_stage_data(SD_X_POS) + (get_stage_data(SD_WIDTH) / 2), 0.1);
		hsp = 0;
		vsp = 0;
}

if attack = 49 && window = 7 && window_timer = 24{
set_state(PS_PRATFALL)
chaos_timer = 45
giant_knife_descent_timer = 0
}

#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = hurtbox_spr;
}