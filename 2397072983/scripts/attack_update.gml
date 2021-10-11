///sfx

startup = get_window_value(attack, window, AG_WINDOW_LENGTH)

if !hitpause {
///general
if window == 1 && window_timer == startup {
if attack == AT_FTILT or attack == AT_FAIR or attack == AT_UAIR 
or attack == AT_UTILT or attack == AT_DATTACK {
	switch (style) {
	    case 0 :
	     sound_play(sound_get("lheavy"),false,noone,0.7)
	    break;
	    
	    case 1 :
	     sound_play(sound_get("aheavy"))
	    break;
	    
	    case 2 :
	     sound_play(sound_get("anheavy"))
	    break;
	    
	    case 3 :
	     sound_play(sound_get("thheavy"))
	    break;
	    
	    case 4 :
	     sound_play(sound_get("theavy"),false,noone,0.5)
	    break;
	    
	}
} 

if attack == AT_BAIR or attack == AT_NAIR or attack == AT_DAIR
or attack == AT_DTILT or attack == AT_JAB {
	switch (style) {
	    case 0 :
	     sound_play(sound_get("llight"),false,noone,0.7)
	    break;
	    
	    case 1 :
	     sound_play(sound_get("alight"))
	    break;
	    
	    case 2 :
	     sound_play(sound_get("anlight"))
	    break;
	    
	    case 3 :
	     sound_play(sound_get("thlight"))
	    break;
	    
	    case 4 :
	     sound_play(sound_get("tlight"),false,noone,0.5)
	    break;
	    
	}
} 
}

///specialcases 

if (attack == AT_JAB && window == 4 && window_timer == 1) or 
   (attack == AT_NAIR && window == 3 && window_timer == startup) or
   (attack == AT_DAIR && window == 3 && window_timer == startup) or
   (attack == AT_DAIR && window == 2 && window_timer == startup){
    	switch (style) {
	    case 0 :
	     sound_play(sound_get("lheavy"),false,noone,0.7)
	    break;
	    
	    case 1 :
	     sound_play(sound_get("aheavy"))
	    break;
	    
	    case 2 :
	     sound_play(sound_get("anheavy"))
	    break;
	    
	    case 3 :
	     sound_play(sound_get("thheavy"))
	    break;
	    
	    case 4 :
	     sound_play(sound_get("theavy"),false,noone,0.5)
	    break;
	    
	}
}
}

if (attack == AT_USTRONG && window == 3 && window_timer == startup) {
    	switch (style) {
	    case 0 :
	     sound_play(sound_get("llight"))
	    break;
	    
	    case 1 :
	     sound_play(sound_get("alight"))
	    break;
	    
	    case 2 :
	     sound_play(sound_get("anlight"))
	    break;
	    
	    case 3 :
	     sound_play(sound_get("thlight"))
	    break;
	    
	    case 4 :
	     sound_play(sound_get("tlight"),false,noone,0.7)
	    break;
	    
	}
}
if  (window == 2 && window_timer == startup && 
(attack == AT_FSTRONG or attack == AT_USTRONG)) {
      switch (style) {
	    case 0 :
	     sound_play(sound_get("lheavy"),false,noone,1.2)
	     sound_play(sound_get("lstrong"))
	    break;
	    
	    case 1 :
	     sound_play(sound_get("aheavy"),false,noone,1.2)
	     sound_play(sound_get("astrong"))
	    break;
	    
	    case 2 :
	     sound_play(sound_get("anheavy"),false,noone,1.0)
	     sound_play(sound_get("anstrong"))
	    break;
	    
	    case 3 :
	     sound_play(sound_get("thheavy"),false,noone,1.2)
	     sound_play(sound_get("thstrong"))
	    break;
	    
	    case 4 :
	     sound_play(sound_get("theavy"),false,noone,1.1)
	     sound_play(sound_get("tstrong"))
	    break;
	    
	}
    
    
}

if  (window == 2 && window_timer == startup && attack == AT_DSTRONG) {
      switch (style) {
        case 0 :
	     sound_play(sound_get("lstrong"),false,noone,1.4)
	      sound_play(sound_get("strongexp"),false,noone,0.8)
	    break;
	    
	    case 1 :
	     sound_play(sound_get("astrong"),false,noone,1.4)
	      sound_play(sound_get("strongexp"),false,noone,0.6)
	    break;
	    
	    case 2 :
	     sound_play(sound_get("anstrong"),false,noone,1.2)
	      sound_play(sound_get("strongexp"),false,noone,0.7)
	    break;
	    
	    case 3 :
	     sound_play(sound_get("thstrong"),false,noone,1.2)
	      sound_play(sound_get("strongexp"),false,noone,1)
	    break;
	    
	    case 4 :
	     sound_play(sound_get("tstrong"),false,noone,1.1)
	     sound_play(sound_get("strongexp"),false,noone,0.66)
	    break;
	    
	}
    shake_camera (4,8)
    
}




/////Function 

if attack == AT_TAUNT && window == 2 && window_timer > 5 && taunt_down {
	window = 3
	window_timer = 0
	taunted = 1
}

if attack == AT_TAUNT {
		if down_down {
		move_cooldown[AT_DSPECIAL_2] = 2
	}
	
		if move_cooldown[AT_DSPECIAL_2] > 0 {
		move_cooldown[AT_DSPECIAL_2] = 2
	}
}

if attack == AT_TAUNT && window == 3 {
	

	
	

	
	if taunted > 10 {
		y += 100000
	}
	
	if taunted > 1.5 {
	shake_camera(floor(taunted*2), floor(taunted*4))
	}
	if window_timer == 10 {
		sound_play(sound_get("taunt"),false,noone,taunted)
	}
	
	if window_timer > 16 && taunt_down {
	window = 3
	window_timer = 0
	taunted += 0.5
	}
}


if attack == AT_USTRONG && has_hit_player && !hitpause && window < 4 {
    hit_player_obj.hsp = ((x + (35 * spr_dir)) - hit_player_obj.x) / 10
	hit_player_obj.vsp = ((y - 70) - hit_player_obj.y) / 10
}


if style == 1 && !hitpause {
  	with (pHitBox) {
  	  if player_id == other.id && attack != AT_EXTRA_1 {
  		other.hdamage = damage
  		other.hangle = kb_angle
  		other.hkb = kb_value
  		other.hkbg = kb_scale
  		other.hpause = hitpause
  		other.hpauseg = hitpause_growth
  	  } 
    }

    set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, hdamage);	
	set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 305);
    set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, hangle);
    set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
    set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, hkb);
    set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, hkbg);
    set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 1 + hpause);
    set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, hpauseg);

	if prshape % 2 == 0 {
		set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("aproj"));
	} else {
		set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("aproj2"));
	}
	
if window == 2 && window_timer == 5{	
	    if attack == AT_FTILT {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1 
    }
}

if window == 3 && window_timer == 1 {
	  if attack == AT_NAIR {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 6);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -3);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1  
    }
    
        if attack == AT_UAIR {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 3);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -6);
    create_hitbox(AT_EXTRA_1, 2, x + 10*spr_dir , y - 55)
	prshape += 1         
    }
    
            if attack == AT_FAIR {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 40)
	prshape += 1 
    }
    
    
    
}


if window == 2 && window_timer == 4 {

    if attack == AT_DATTACK {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -3);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 45)
	prshape += 1 
    }
    
}


if window == 2 && window_timer == 1 {
    
    if attack == AT_JAB {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 8);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1
    }
   
    
    if attack == AT_BAIR {
     spr_dir *= -1 
     set_attack(AT_FAIR)
     window = 2
     window_timer = 1
    }
    
    
    
    
    if attack == AT_UTILT {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 4);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -8);
    create_hitbox(AT_EXTRA_1, 2, x + 10*spr_dir , y - 55)
	prshape += 1     
    }
    

    
    if attack == AT_DTILT {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 9);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 15)
	prshape += 1     
    }

}

if attack == AT_DAIR && window == 1 && window_timer == 12 {
	window = 3
	window_timer = 3
}
if (attack == AT_JAB && window == 5 && window_timer == 1) or 
   (attack == AT_NAIR && window == 5 && window_timer == 1) or
   (attack == AT_DAIR && window == 4 && window_timer == 1){
   	
   	if attack == AT_JAB {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 10);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1
    }
    
   	if attack == AT_NAIR {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 6);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 2);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1  
    }
    
     if attack == AT_DAIR {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 10);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 7);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1  
    }
    

}

if (attack == AT_USTRONG && window == 4 && window_timer == 2) {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 9);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -6);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 55)
	prshape += 1  
}
if  (window == 3 && window_timer == 2 && 
(attack == AT_FSTRONG or attack == AT_USTRONG)) {
  if attack == AT_USTRONG {
  	 set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -2);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 55)
	prshape += 1  
  }
    
   if attack == AT_FSTRONG {
  	 set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 16);
  	     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0); 
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 45)
	prshape += 1  
  } 
    
}

}



if style == 3 && !hitpause {
  	if attack == AT_DAIR && window == 1 && window_timer == 11 {
	window = 3
	window_timer = 3
   }
	
	if attack == AT_NAIR && window == 1 && window_timer == 8 {
	window = 4
	window_timer = 0
   }
   
}

if style == 4 && !hitpause {

  	with (pHitBox) {
  	  if player_id == other.id && attack != AT_EXTRA_1 && attack != AT_DAIR{
  		other.hangle = kb_angle
  		other.hkb = kb_value
  		other.hkbg = kb_scale
  		other.hpause = hitpause
  		other.hpauseg = hitpause_growth
  	  } 
  	  
  	  if player_id == other.id && attack == AT_DAIR{
  		other.hangle = 40
  		other.hkb = kb_value
  		other.hkbg = kb_scale
  		other.hpause = hitpause
  		other.hpauseg = hitpause_growth
  	  }
  	  
    }

    set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 4);	
	set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 305);
    set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, hangle);
    set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
    set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, hkb);
    set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, hkbg);
    set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 1 + hpause);
    set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, hpauseg);

	if prshape % 2 == 0 {
		set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("aproj"));
	} else {
		set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("aproj2"));
	}
	
if window == 2 && window_timer == 5{	
	    if attack == AT_FTILT {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1 
    }
}

if window == 3 && window_timer == 1 {
        if attack == AT_FAIR {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 40)
	prshape += 1 
    }
}

if attack == AT_DAIR && window == 1 && window_timer == 12 {
	window = 3
	window_timer = 3
}
if (attack == AT_JAB && window == 5 && window_timer == 1) or 
   (attack == AT_NAIR && window == 4 && window_timer == 1) or
   (attack == AT_DAIR && window == 4 && window_timer == 1){
   	
   	if attack == AT_JAB {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 10);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1
    }
    
    
     if attack == AT_DAIR && !has_hit_player {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 10);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 7);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 35)
	prshape += 1  
    }
    

}

if (attack == AT_USTRONG && window == 4 && window_timer == 2) {
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 9);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -6);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 55)
	prshape += 1  
}

if  (window == 3 && window_timer == 2 && 
(attack == AT_FSTRONG or attack == AT_USTRONG)) {
  if attack == AT_USTRONG {
  	 set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
     set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -2);
    create_hitbox(AT_EXTRA_1, 2, x + 20*spr_dir , y - 55)
	prshape += 1  
  }
    
    
}


}


////



if attack == AT_NSPECIAL {
	
	if jump_pressed or !(joy_pad_idle) {
		  clear_button_buffer( PC_SPECIAL_PRESSED );
	}
	
		if window_timer == 1 && move_cooldown[AT_TAUNT_2] != 0 && !hitpause{
			attack_end();
			 clear_button_buffer( PC_SPECIAL_PRESSED );
			set_state(PS_IDLE)
		}
			
	if window_timer == 1 && move_cooldown[AT_TAUNT_2] == 0 {
		shake_camera(4,2)
		if style == style1 {
			style = style2
			move_cooldown[AT_TAUNT_2] = 30
		}
		
		else if style == style2 or style == 4 {
			
			if style == 4 {
				spawn_hit_fx(famix,famiy - 50,27)
				set_state(PS_PRATFALL)
				sound_play(sound_get("tend"),false,noone, 0.5)	
			}
			
			style = style1
			move_cooldown[AT_TAUNT_2] = 30
		}
		
	if !hitpause {
	 switch (style) {
		case 0 :
	    sound_play(sound_get("lswitch"),false,noone, 1)	
	    spawn_hit_fx(x,y-35,lsw)
	    break;
	    
	    case 1 :
	    sound_play(sound_get("aswitch"),false,noone,1)	
	    spawn_hit_fx(x,y-35,asw)
	    break;
	    
	    case 2 :
        sound_play(sound_get("answitch"),false,noone,1)	
        spawn_hit_fx(x,y-35,answ)
	    break;
	    
	    case 3 :
        sound_play(sound_get("thswitch"),false,noone,1)	 
        spawn_hit_fx(x,y-35,thsw)
	    break;
	 }
	}
	
	
}

	if window_timer == 10 && special_down {
		set_attack(AT_EXTRA_2)
		window = 1 
		window_timer = 0
		sound_play(sound_get("transformstart"),false,noone,1)	 
	}

	
   if window_timer >= 2 {
		can_jump = true
	}

}

if attack == AT_EXTRA_2 {
			if window_timer % 6 == 0 {
				if window_timer != 3 {
				take_damage(player,-1,1)
				}
	spawn_hit_fx(x - 40 + random_func(1,80,true),y - 35 - 40 + random_func(2,80,true),tsw)
			}
    shake_camera(2,2)	
	vsp /= 1.4
	y -= 2
	hsp /= 1.04
	can_fast_fall = false
	can_move = false
	if window_timer == 30 {
		spawn_hit_fx(famix,famiy - 50,27)
		move_cooldown[AT_TAUNT_2] = 800
		spawn_hit_fx(x,y,lighten)
		spawn_hit_fx(x,y - 35,tsw)
		style = 4
		set_attack(AT_DSTRONG)
		window = 2
		window_timer = 5
		sound_play(sound_get("strongexp"),false,noone,0.6)	
		sound_play(sound_get("transform"),false,noone,1)	
	}
}

if attack == AT_DSTRONG {
	can_move = false
	vsp = 0
}

if attack == AT_USPECIAL {
		move_cooldown[AT_USPECIAL] = 999
	if window = 1 {
	vsp = 0
	}
		   if state_timer % 6 == 0 && state_timer < 15{
	   spawn_hit_fx(x,y,idles)
		   }
	if window = 2 {
		
			nearbyhitbox = collision_circle( x, y, 50, asset_get("pHitBox"), true, true ) 
	if nearbyhitbox != noone && move_cooldown[AT_EXTRA_1] = 0{
					dplayer = nearbyhitbox.player_id
	    	hit_player_obj = nearbyhitbox.player_id
			move_cooldown[AT_EXTRA_1] = 20
	}
	
		y -= 6
		vsp = -4
		invincible = true
		can_shield = true
	}
	
	if window == 3 && window_timer == 1 && special_down && charge >= 1 && disc {
		charge -= 1
		vsp = 0
		hsp = 0
		window = 4
		window_timer = 0
		spawn_hit_fx(x,y-30,305)
		sound_stop(sound_get("pdodge"))
		sound_play(sound_get("pdodge"))
		var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
		if (joy_pad_idle){
			spawn_hit_fx(x,y - 50,idles)
			spawn_hit_fx(x,y - 100,idles)
			spawn_hit_fx(x,y - 150,idles)
			x += 0;
			y += -160;
		}else{
		    spawn_hit_fx(x + (50 * cos(angle)),y + (50 * sin(angle)),idles)
			spawn_hit_fx(x + (100 * cos(angle)),y + (100 * sin(angle)),idles)
			spawn_hit_fx(x + (150 * cos(angle)),y + (150 * sin(angle)),idles)
			x += (160 * cos(angle));
			y += (160 * sin(angle));
		}
	}
	
	if window = 4 {
		vsp /= 2
		hsp /= 2
	}
	
}


if attack == AT_FSPECIAL {
	can_fast_fall = false
	
  if style != 4 {
	if window_timer == 1 {
		set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_HSPEED, 18);
	  set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);	
	  spawn_hit_fx(famix,famiy - 50,27)
	  set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 30);
	}
	
	if window_timer <= 39  {
		famix = x
		famiy = y + 10
	}
	
	if fami == 0 {
		if window_timer == 14 {
			sound_play(asset_get("sfx_ori_energyhit_medium"))
			charge -= 1
		}
		if window_timer > 24 && window_timer <= 30 && special_pressed && charge >= 1 {
			window_timer = 13
		}
		
		if window_timer > 30 {
		window_timer += 0.5
	    }
	
	}
	
	if fami == 1 {
		if window != 2 {
			window = 2
		}
		if window_timer == 14 {
			sound_play(asset_get("sfx_ori_energyhit_heavy"))
			hsp = -4*spr_dir
			vsp = -4 * free
			charge -= 1
		}
		
		if window_timer == 16 {
			sound_play(asset_get("sfx_ori_energyhit_weak"))
			hsp = -4*spr_dir
			vsp = -4 * free
			charge -= 1
			create_hitbox(AT_FSPECIAL, 4, x+ 26*spr_dir,y - 26)	
			create_hitbox(AT_FSPECIAL, 5, x+ 26*spr_dir,y - 38 )
		}
		
		
	    if window_timer > 16{
		window_timer += 0.2
	    }
	    
	}
	
	if fami == 2 {
		hsp /= 1.2
		
		if window != 3 {
			window = 3
		}
		
		if window_timer = 14 {
			charge -= 2
		}
					
		if window_timer == 14 or window_timer == 19 or window_timer == 24 {
			sound_play(asset_get("sfx_holy_lightning"))
			set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_HSPEED, 18 - (window_timer-16)/2);
			set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 30 + (window_timer-16));
		}
		
		if window_timer == 16 or window_timer == 21 or window_timer == 26 {
			sound_play(asset_get("sfx_holy_lightning"),false,noone,0.5)
			set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_VSPEED, 1.5 - get_gameplay_time()%4);
			create_hitbox(AT_FSPECIAL, 7, x+ 36*spr_dir,y - 36 - 6 + random_func(1,12,true))
			set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_HSPEED, 18 - (window_timer-16));
			set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 30 + (window_timer-16)*2);
		}
		
		if window_timer > 29 && window_timer < 35 && special_pressed && charge >= 2 {
			window_timer = 13
		}
		
	    if window_timer > 25{
		window_timer += 0.5
	    }
	
	}
	
	if fami == 3 {

		hsp /= 1.2

		
		if window != 4 {
			window = 4
		}
		
		if window_timer == 14 {
			charge -= 3
			sound_play(sound_get("parry"))
			sound_play(sound_get("death"))
			hsp = -4*spr_dir
			vsp = -4 * free
			
		}
		
	    if window_timer > 25{
		
	    }
	
	}
  }
	
	if style == 4 {

		
		if window != 5 {
			window = 5
		}
		
		if window_timer == 14 {
			shake_camera(6,6)
			    charge -= 5
				sound_play(sound_get("tstrong"))
				sound_play(sound_get("gun3"),false,noone,2)
				
				if free {
					vsp = -4
					hsp = 0
				}
		}
		if window_timer == 15 {
					spawn_hit_fx(x + 530*spr_dir,y - 36, gunf)
		}	

						
	    if window_timer > 25{
		
	    }
	
	}
}


if attack == AT_DSPECIAL {
	
	if window <= 2 {
		
		if left_pressed && move_cooldown[AT_DSPECIAL] < 5 {
			if item == 1 {
				item = 6
			}
			
			else if item != 1 {
			item -= 1
			}
			move_cooldown[AT_DSPECIAL] = 15
		sound_play(asset_get("mfx_forward"))	
		}
	    
	    if right_pressed && move_cooldown[AT_DSPECIAL] < 5 {
			if item != 6 {
			item += 1
			}
			else if item == 6 {
				item = 1
			}
			move_cooldown[AT_DSPECIAL] = 15
		sound_play(asset_get("mfx_forward"))	
		}
        
		
	if special_down or jump_down or (window == 2 && taunt_down) {
		sound_play(asset_get("mfx_back"))
		window = 3
		window_timer = 0
	   clear_button_buffer( PC_SPECIAL_PRESSED );		
	}
	
	if attack_down {
		
		if item == 1 && LA >= 1200 && adap = 0{
		sound_play(asset_get("mfx_confirm"))
	    window = 1
		window_timer = 2
	   clear_button_buffer( PC_ATTACK_PRESSED );
	   adap = 1
	   LA -= 1200
		} 
		
		
		if item == 2 && LA >= 1250 && raged = 0{
		sound_play(asset_get("mfx_confirm"))
	    window = 1
		window_timer = 2
	   clear_button_buffer( PC_ATTACK_PRESSED );
	   raged = 1
	   LA -= 1250
		}
		
		if item == 3 && LA >= 1250 && para = 0 {
		sound_play(asset_get("mfx_confirm"))
	    window = 1
		window_timer = 2
	   clear_button_buffer( PC_ATTACK_PRESSED );
	   para = 1
	   LA -= 1250
		}
		
		if item == 4 && LA >= 1500 && unte = 0 {
		sound_play(asset_get("mfx_confirm"))
	    window = 1
		window_timer = 2
	   clear_button_buffer( PC_ATTACK_PRESSED );
	   unte = 1
	   roll_forward_max = 5; //roll speed
       roll_backward_max = 5;
       air_dodge_speed = 5;
	   LA -= 1500
		}
		
		if item == 5 && LA >= 1000 && disc = 0 {
		sound_play(asset_get("mfx_confirm"))
	    window = 1
		window_timer = 2
	   clear_button_buffer( PC_ATTACK_PRESSED );
	   disc = 1
	   LA -= 1000
		}
		
		if item == 6 && LA >= 1500 && gun = 0{
		sound_play(asset_get("mfx_confirm"))
	    window = 1
		window_timer = 2
	   clear_button_buffer( PC_ATTACK_PRESSED );
	   gun = 1
	   LA -= 1500
		}
	}
	}
	
}