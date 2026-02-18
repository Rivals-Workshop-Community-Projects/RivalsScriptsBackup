
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_USPECIAL){
    if window = 4 && window_timer = 23{
        state = PS_PRATFALL
    }
    if window = 4 && window_timer = 1{
        if special_down{
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
            	vsp -= 20
            	}else{
            	vsp -= 25	
            	}
            }
        if down_down{	
            if left_down or right_down{
            	vsp += 20
            	}else{
            	vsp += 25
            	}
            }
		if not right_down and not left_down and not up_down and not down_down{
            vsp = 0
        }
        if left_down{
            hsp =- 15
        }else
        if right_down{
            hsp =+ 15
        }
}
}

if attack = AT_DSPECIAL or attack = AT_DATTACK{
    can_fast_fall = 0
}

if attack = AT_BAIR && window = 2{
    if nspecial_ammo > 0{
    if spr_dir = 1{
    if window_timer = 1 && nspecial_ammo > 0{
        create_hitbox(AT_BAIR, 2, x-30, y+15)
        nspecial_ammo -= 1
    }
    
    if window_timer = 5 && nspecial_ammo > 0{
        create_hitbox(AT_BAIR, 3, x-45, y-15)
        nspecial_ammo -= 1
    }
    
    if window_timer = 8 && nspecial_ammo > 0{
        create_hitbox(AT_BAIR, 1, x-30, y-45)
        nspecial_ammo -= 1
    }
    }else{
        if window_timer = 1 && nspecial_ammo > 0{
        create_hitbox(AT_BAIR, 2, x+30, y+15)
        nspecial_ammo -= 1
    }
    
    if window_timer = 5 && nspecial_ammo > 0{
        create_hitbox(AT_BAIR, 3, x+45, y-15)
        nspecial_ammo -= 1
    }
    
    if window_timer = 8 && nspecial_ammo > 0{
        create_hitbox(AT_BAIR, 1, x+30, y-45)
        nspecial_ammo -= 1
    }
    }
    }else{
        if window_timer = 4{
            if spr_dir = 1{
        create_hitbox(AT_BAIR, 4, x-12, y-45)
        }else{
        create_hitbox(AT_BAIR, 4, x+12, y-45)    
        }
        }
    }
        
    }
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
if attack = AT_DSPECIAL && window = 5 && window_timer = 1{
if pirouette_selected = 1{
  //bird
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
  if spr_dir = -1{
  create_hitbox(AT_DSPECIAL, 1, x+500, y-250)
  }else{
  create_hitbox(AT_DSPECIAL, 1, x-500, y-250)   
  }
  move_cooldown[AT_DSPECIAL] = 200
}

if pirouette_selected = 2{
  //more airspeed
  effect_timer = 1200
  active_effect = 2
  sound_play(sound_get("snd_jokerha"));
}

if pirouette_selected = 3{
  //ligher weight
  effect_timer = 925
  active_effect = 3
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
}

if pirouette_selected = 4{
  //extra jump
  effect_timer = 1050
  active_effect = 4
  sound_play(sound_get("snd_jokerha"));
}

if pirouette_selected = 5{
  //worse jump
  effect_timer = 925
  active_effect = 5
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
}

if pirouette_selected = 6{
  //damage taken +
  effect_timer = 800
  active_effect = 6
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
}

if pirouette_selected = 7{
  //more ground speed
  effect_timer = 1300
  active_effect = 7
  sound_play(sound_get("snd_jokerha"));
}

if pirouette_selected = 8{
  //no effect
  move_cooldown[AT_DSPECIAL] = 200
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
}

if pirouette_selected = 9{
  //attack speed+
  effect_timer = 1000
  active_effect = 9
  sound_play(sound_get("snd_jokerha"));
}

if pirouette_selected = 10{
  //slower ground speed
  effect_timer = 900
  active_effect = 10
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
}

if pirouette_selected = 11{
  //heigher jump
  effect_timer = 950
  active_effect = 11
  sound_play(sound_get("snd_jokerha"));
  
}

if pirouette_selected = 12{
  //jevil takes some damage
  move_cooldown[AT_DSPECIAL] = 200
  take_damage(player, player, 10)
  sound_play(sound_get("snd_squeak"));
  sound_play(sound_get("snd_hurt1"));
}
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
        destroy_hitboxes();
        state = PS_PRATFALL
        hsp = hsp/1.4
        fspecial_used = 0
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

if window_timer = 1 && attack = AT_NSPECIAL && window = 2 && nspecial_ammo > 0{
    create_hitbox(AT_NSPECIAL, 1, x+25 / spr_dir, y-25)
    HG_PROJECTILE_HOMING = 67;           //if true, allow projectile to use the homing code
    HG_PROJECTILE_HOMING_TURN = 68;	//how sharp the angle for the homing is, and only applies if homing is true (make sure it's a number between 0 and 1)
}

if attack = AT_NSPECIAL && window = 3 && window_timer = 1 && nspecial_ammo > 0{
    nspecial_ammo -= 1
}
if attack = AT_NSPECIAL && window = 2 && window_timer = 1 && nspecial_ammo > 0{
    sound_play(sound_get("snd_jokeroh"));
}

if taunt_down && attack == AT_TAUNT_2 && window_timer >= 2{
	window_timer = 2
}

if attack = AT_TAUNT_2 && left_down{
	spr_dir = -1
	hsp = -0.5
	spawn_dust_fx(x+25, y, asset_get("fx_dashstart_bg"), 4)
}

if attack = AT_TAUNT_2 && right_down{
	spr_dir = 1
	hsp = 0.5
	spawn_dust_fx(x-25, y, asset_get("fx_dashstart_bg"), 4)
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

if attack = AT_UAIR && window_timer = 3 && window = 1{
	create_hitbox(AT_UAIR, 6, x, y-120)
}

if attack = AT_USTRONG{
	can_move = 0
}

if attack = AT_DAIR && window_timer = 3 && window = 2 && !hitpause{
	spawn_hit_fx(x, y+42, dair_warn)
}

if attack = AT_FAIR && window_timer = 8 && window = 1 && !hitpause{
	spawn_hit_fx(x+65/spr_dir, y-35, dair_warn)
}

if attack = AT_DTILT && window_timer = 1 && window = 2 && !hitpause && nspecial_ammo > 0{
	spawn_dust_fx(x+45/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 1, x+45*spr_dir, y-15)
	nspecial_ammo -= 1
}
if attack = AT_DTILT && window = 2 && window_timer = 3 && attack_down && nspecial_ammo > 0{
	spawn_dust_fx(x+80/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 2, x+75*spr_dir, y-15)
	nspecial_ammo -= 1
}
if attack = AT_DTILT && window = 2 && window_timer = 6 && attack_down && nspecial_ammo > 0{
	spawn_dust_fx(x+105/spr_dir, y, asset_get("fx_dashstep_bg"), 10)
	create_hitbox(AT_DTILT, 3, x+105*spr_dir, y-15)
	nspecial_ammo -= 1
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