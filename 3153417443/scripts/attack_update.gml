//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
	case AT_DSPECIAL_AIR:
		trigger_b_reverse();
		break;
}

if attack == AT_TAUNT {
	if window == 1 && window_timer == 27 && taunt_down {
		window = 2;
		window_timer = 0;
	} else if window == 1 && window_timer == 27 && !taunt_down {
		window = 4;
		window_timer = 0;
	}
	if window == 2 && window_timer == 27 && taunt_down {
		window = 3;
		window_timer = 0;
	} else if  window == 2 && window_timer == 27 && !taunt_down {
		window = 4;
		window_timer = 0;
	}
	if window == 3 && window_timer == 27 {
		window = 5;
		window_timer = 0;
	}
}
 
 if attack == AT_FTILT {
    if window == 1 && window_timer == 7 {
        sound_play(asset_get("sfx_swish_heavy"), false, noone, 0.4, 1);
        sound_play(asset_get("sfx_swipe_medium2"), false, noone, 1, 1);
    }
 }
 
 if attack == AT_UAIR {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_may_arc_five"));
        sound_play(sound_get("uair"), false, noone, 0.6, 1);
    }
 }
 
  if attack == AT_FAIR {
    if window == 1 && window_timer == 8 {
        sound_play(asset_get("sfx_frog_uspecial_divekick"), false, noone, 0.7, 1);
        sound_play(asset_get("sfx_swipe_medium1"), false, noone, 1, 1);
    }
 }

  var dstrong_charged = true;
if (attack == AT_DSTRONG) {
	if window == 2 && strong_charge == 59 {
		dstrong_charged = false; 
		window = 6;
		window_timer = 0;
} 

if window == 5 && window_timer == 14 {
	    var k = spawn_hit_fx(x + (spr_dir + 10), y - 50, dstrong_vfx);
        k.depth = depth + 20;
}
		
	  if (window == 4 && window_timer == 1) || (window == 6 && window_timer == 1) {
        sound_play(asset_get("sfx_swipe_heavy1"));
        sound_play(sound_get("dstrong"));
    }

	if window == 6 && window_timer == 1 {
		window = 7;
		window_timer = 0;
	}

	if window == 7 && window_timer == 13 {
		window = 8;
		window_timer = 0;
	}

	if window == 8 && window_timer == 4 {
        sound_play(sound_get("dstrong_kegsplode"));
        sound_play(asset_get("sfx_frog_dspecial_swallow"));
        sound_play(sound_get("soda2"), false, noone, 0.7, 1);
    	bubbleexists = true;
    	if (instance_exists(bubblearticle) && bubblearticle != 0){
    		bubblearticle.should_die = true;
    	}
    	bubblearticle = instance_create(x + (spr_dir * 50), y - 50, "obj_article1");
	}
}
 
if (attack == AT_FSTRONG) {
	
	if window == 1{
	mau_grabbed_da_bubble = false;
   	grabbed_player_obj = noone;
   	fstronggrabbubble = false;
   	fstrongstrongfx = false;
    reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE); 
	reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
	reset_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH);
	reset_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX);
	}
	
	if(window == 2){

	 if (strong_charge = 20) {
	 sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
	 } else if strong_charge = 40 {
	 		 sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
	 }
	

	 if (strong_charge < 20 && !strong_down) {
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 7);
	} else if (strong_charge > 20 && !strong_down) {
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 11);
	} else if (strong_charge > 40 && !strong_down) || strong_charge == 59 {
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 14);
	} 
    }
    
     if window == 3 && window_timer == 3 {
        sound_play(asset_get("sfx_swipe_heavy2"));
        var k = spawn_hit_fx(x, y, fstrong_startup_vfx);
        k.depth = depth - 1;
    }	

	if window == 4 {
     	reset_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED);
     	if fstronggrabbubble = true{
     		set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
			set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 16);
			set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 50);
			set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, false);
			fstronggrabbubble = false
			fstrongstrongfx = true;
     	}
	}
    
    if(window < 6 and (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause){
    	window = 6;
    	window_timer = 0;
	    var k = spawn_hit_fx(x + (spr_dir * 100), y - 30, grab_vfx);
        k.depth = depth + 1;
        hsp = 5*spr_dir;
    } 
   
    if window == 5 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause {
    	if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
    	}

    }
    
    if(window == 6){
    	if(hitbubble != noone){
    		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
    	}
    	if(grabbed_player_obj != noone){
    		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
    		grabbed_player_obj.hitpause = true;
    		grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
    		grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 50, .5);
    		grabbed_player_obj.y = y-8;
    		if window_timer <= 49{
    		if fstrongstrongfx = true{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			hitbubble.grab_hit = true;
    		}
    	}
    	}
    }
    	
    if window == 7  {
	   	grabbed_player_obj = noone;
    }	
    	
    	
	
    }

if (attack == AT_FSPECIAL){
	if (free && y >= room_height - 100 && grabbed_player_obj != noone){ 
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
			   	grabbed_player_obj = noone;
			   	window = 6;
			   	window_timer = 0;
			   	vsp = 0;
			   	hsp = 0;
	}
}

if (attack == AT_NSPECIAL || attack == AT_DSTRONG) && window == 1 && window_timer == 1 {
	killarticles = false;
	nspecialtap = false;
	nspecialtap2 = false;
}

if(attack == AT_NSPECIAL && window == 1 && special_down){
	cantap = true;
} else if AT_NSPECIAL && window == 1 && !special_down {
	cantap = false;
}


if attack == AT_NSPECIAL {
	if window == 1 && window_timer == 13 {
		sound_play(asset_get("sfx_swipe_medium1"), false, noone, 1, 1);
	}
	if window == 2 && window_timer == 1 {
		canID = create_hitbox(AT_NSPECIAL, 1, x + (30 * spr_dir), y - 80);
		if cantap = true {
			canID.hsp = 3 * canID.spr_dir;
			canID.vsp = -12;
		} else if cantap = false {
			canID.hsp = 2 * canID.spr_dir;
			canID.vsp = -8;
		}
	}
		if vsp > 2 {
			vsp = 2;
		}
	}



if (attack == AT_FSPECIAL){
	
	can_fast_fall = false;
	
	if window == 2 {
	if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
	for (var i = 1; i < 40; i++){
      if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
         y -= i;
         break;
      }
   }      
}		
	if vsp > 0 {
			vsp = 0;
		}
	}

	if window == 3 {
	if vsp > 4 {
			vsp = 4;
		}
	}
	
	if window < 4 {
			can_wall_jump = true;
	}
    
    if (window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		window = 4;
    }
    

 
    if(window == 1){
    	mau_grabbed_da_bubble = false;
    	fspecialgrab = false;
		fspecialgrabbing = false;
		fspecial2attack = false;
		fspecialgrabbubble = false;
		fspecialgrabconfirm = false;
		fspecstrongfx = false;
		fspec2hit = false;
    	grabbed_player_obj = noone;
    	grabtimer = 60;
   		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE);
		reset_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE);
		reset_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE);
		reset_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE);
		reset_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSPECIAL_2, 4, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE);
		reset_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE);
    }
 
    if(window < 4 and (grabbed_player_obj!= noone or mau_grabbed_da_bubble) and !hitpause){
    	window = 4;
    	window_timer = 0;
  	    sound_play(sound_get("catch"), false, noone, 0.4, 1);
  	    
  	     
    	if fspecialgrabbubble = true {
    		//uthrow
    		set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 15);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 12);
			//bthrow
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.1);
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 15);
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 14);
			//dthrow
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .6);
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 15);
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 10);
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 1);
			//fthrow
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8.5);
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .8);
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_EXTRA_HITPAUSE, 15);
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 11);
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 40);
			fspecstrongfx = true;
			fspecialgrabbubble = false;
			
			
    	}
  	    
    } 
  
  
    if(window == 4 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause){
    	if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
    	
    		grabbed_player_obj.x = x + spr_dir * 45;
    	}
			
    	if window_timer == 2 {
    		if(grabbed_player_obj != noone){
    		grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = 90;
	        var k = spawn_hit_fx(grabbed_player_obj.x + (spr_dir * 50), grabbed_player_obj.y - 30, grab_vfx);
    	    k.depth = depth + 1;
    	}
    	}
		if(window_timer < 2){
			if(grabbed_player_obj != noone){
							grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = 90;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 20, .15);
    			grabbed_player_obj.y = y-8;
    			if mau_grabbed_da_bubble = true{
    				if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 20, .15);
    			hitbubble.y = y-8;
    			}else{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}
			}
			}
		} else if (window_timer < 17){
			if(grabbed_player_obj != noone){
							grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = 90;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 75, .15);
			grabbed_player_obj.y = y;
    			if mau_grabbed_da_bubble = true{
    				if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 75, .15);
    			hitbubble.y = y;
    			}else{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}		
			}
			}
		} else if (window_timer == 17){
			if(grabbed_player_obj != noone){
							grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = 90;
			grabbed_player_obj.x = x + spr_dir*45;
			grabbed_player_obj.y = y;
    			if mau_grabbed_da_bubble = true{
    				if fspecstrongfx = false{
    			hitbubble.x = x + spr_dir*45;
    			hitbubble.y = y;
    			}else{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}
			}
			}
			window = 5;
			window_timer = 0;
		}
    
    can_fast_fall = false;
}

    if(window == 5 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause) {
   		//	grabbed_player_obj.hitstop = 2;
		//	grabbed_player_obj.state = PS_HITSTUN;
   if(grabbed_player_obj != noone){
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
			grabbed_player_obj.x = x + spr_dir * 45;
			grabbed_player_obj.y = y;
   }
			if mau_grabbed_da_bubble = true{
					if fspecstrongfx = false{
					if hitbubble.hit_player_obj != id{
						window = 6;
						window_timer = 0;
						fspecialgrabconfirm = false;
				}
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 10, .125);
    			hitbubble.y = lerp(hitbubble.y, y - 45, .125);
    			}else{
    			hitbubble.x = grabbed_player_obj.x + 10 * spr_dir
    			hitbubble.y = grabbed_player_obj.y - 30
    			hitbubble.grab_hit = true;
    			}
			}
		if window_timer < 50 && grabtimer > 0{
			grabtimer--;
		} else if window_timer == 50 {
			window_timer = 1;
		} else if grabtimer == 0 {
    		fspecialgrabconfirm = false;
			window = 6;
			window_timer = 0;
			if(grabbed_player_obj != noone){
   			grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
		   	grabbed_player_obj = noone;
		   	hitbubble.grabbed_id = noone;
		   	hitbubble.grab_hit = false;
		   	fspecstrongfx = false
			}
    		grabtimer = 60
		}
   
		if grabtimer < 60 {
			if (up_pressed || up_down){
			destroy_hitboxes();
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 1;
			}else if ((spr_dir = 1 && left_pressed) || (spr_dir = -1 && right_pressed)) || ((spr_dir = 1 && left_down) || (spr_dir = -1 && right_down)){
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 2;
			} else if (down_pressed || down_down){
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 3;
			} else if ((spr_dir = -1 && left_pressed) || (spr_dir = 1 && right_pressed)) || ((spr_dir = -1 && left_down) || (spr_dir = 1 && right_down)){
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 4;
			} 
		}
}

if window == 6 {
	if fspecialgrabconfirm = true {
		fspecialgrabconfirm = false;
	}
	hsp = 0;
	vsp = 0;
}

}

if attack == AT_FSPECIAL_2 &&  (grabbed_player_obj!= noone or mau_grabbed_da_bubble) && !hitpause{ 
	switch (window){
		case 1:
		if window_timer < 8 {
			if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 10, .125);
				grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 35, .125);
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.state = PS_HITSTUN;
			}
			if mau_grabbed_da_bubble = true{
					if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 10, .125);
    			hitbubble.y = lerp(hitbubble.y, y - 45, .125);
    			}else{
    			if(window_timer = 1){
    			sound_play(asset_get("sfx_orca_absorb"))
    			}
    			hitbubble.x = grabbed_player_obj.x + 10 * spr_dir
    			hitbubble.y = grabbed_player_obj.y - 30
    			}
			}
		} else if window_timer == 9 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
			}
		    fspecialgrabconfirm = false;
		}
		break;
		case 2:
		if window_timer < 29 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
			}
		}
			if window_timer < 10 {
				if(grabbed_player_obj != noone){
				force_depth = true;
				depth = grabbed_player_obj.depth + 1;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 130, .035);
				grabbed_player_obj.y = y -5;
				}
			if mau_grabbed_da_bubble = true{
					if fspecstrongfx = false{
				if(spr_dir = -1){
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 70, -0.1);
    			hitbubble.y = y - 40;
				}else{
				hitbubble.x = lerp(hitbubble.x, x + spr_dir * 60, -0.1);
    			hitbubble.y = y - 40;
				}
    			}else{
    			if(window_timer = 1){
    			sound_play(asset_get("sfx_orca_absorb"))
    			}
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}	
			}
		} 	else if window_timer >= 10 && window_timer < 18 {
			if(grabbed_player_obj != noone){
				force_depth = true;
				depth = grabbed_player_obj.depth + 1;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x - spr_dir * 100, .1);
				grabbed_player_obj.y = y -5;
			}
			if mau_grabbed_da_bubble = true{
					if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 70, -0.1);
    			hitbubble.y = y - 40;
    			}else{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}
			}
		}   else if window_timer >= 18 && window_timer < 24 {
			if(grabbed_player_obj != noone){
				force_depth = true;
				depth = grabbed_player_obj.depth - 2;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 100, .1);
				grabbed_player_obj.y = y -5;
			}
			if mau_grabbed_da_bubble = true{
				hitbubble.depth = -5
					if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 140, .1);
    			hitbubble.y = y - 40;
    			}else{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}
			}
		}	else if window_timer >= 24 && window_timer < 30 {
			if(grabbed_player_obj != noone){
				force_depth = true;
				depth = grabbed_player_obj.depth + 1;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x - spr_dir * 100, .1);
				grabbed_player_obj.y = y -5;
			}
			if mau_grabbed_da_bubble = true{
				hitbubble.depth = -10
					if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 100, -0.1);
    			hitbubble.y = y - 45;
    			}else{
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}
				    fspecialgrabconfirm = false;
		}
		}
 		break;
 		case 3:
 		if !free && fspecstrongfx = false {
 			set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 80);
 			set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1);
 		} else {
 			if fspecstrongfx = true{
 			set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1);	
 			}
 			set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 270);
 		}
 			if window_timer < 9 {
 				if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 40, .25);
				grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 35, .25);
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
 				}
			if mau_grabbed_da_bubble = true{
					if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 40, .25);
    			hitbubble.y = lerp(hitbubble.y, y - 60, .25);
    			}else{
    			if(window_timer = 1){
    			sound_play(asset_get("sfx_orca_absorb"))
    			}
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 30			
    			}
			}
		}	else if window_timer == 9 {
			if(grabbed_player_obj != noone){
   			grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
			}
			fspecialgrabconfirm = false;
		}
		break;
		case 4:
			 if window_timer < 13 {
			 	if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 60, .25);
				grabbed_player_obj.y = y;
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
			 	}
			if mau_grabbed_da_bubble = true{
					if fspecstrongfx = false{
    			hitbubble.x = lerp(hitbubble.x, x + spr_dir * 60, .25);
    			hitbubble.y = y - 24;
    			}else{
    			if(window_timer = 1){
    			sound_play(asset_get("sfx_orca_absorb"))
    			}
    			hitbubble.x = grabbed_player_obj.x
    			hitbubble.y = grabbed_player_obj.y - 40
    			}
			}
		} else if window_timer == 13 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 90;
			grabbed_player_obj.hitstun = 90;
			}
			fspecialgrabconfirm = false;
	}
		break;
}
}

if attack == AT_FSPECIAL_2 || state == PS_HITSTUN {
	grabtimer = 60;
}


if dspecialairbubble = true && attack == AT_DSPECIAL_AIR{
	set_attack(AT_USPECIAL_2);
	destroy_hitboxes();
	window_timer = 0;
	dspecialairbubble = false;
}

if dspecialbubble = true && attack == AT_DSPECIAL {
	set_attack(AT_USPECIAL_2);
	destroy_hitboxes();
	window_timer = 0;
	dspecialbubble = false;
}

if uspecialbubble = true && attack == AT_USPECIAL {
	set_attack(AT_USPECIAL_2);
	destroy_hitboxes();
	window_timer = 0;
	uspecialbubble = false;
}

if fspecialgrab = true && attack == AT_FSPECIAL {
	destroy_hitboxes();
	window = 4;
	window_timer = 0;
	fspecialgrab = false;
	fspecialgrabbing = true;
	var k = spawn_hit_fx(x + (spr_dir * 50), y - 40, grab_vfx);
    k.depth = depth + 1;
    sound_play(sound_get("catch"), false, noone, 0.4, 1);

}

if attack == AT_FSPECIAL && fspecialgrabbing = true {
	
		if window == 4 && window_timer == 15 {
		window = 5;
		window_timer = 0;
	}
	
	if window == 5 {
			if window_timer < 50 && grabtimer > 0{
			grabtimer--;
		} else if window_timer == 50 {
			window_timer = 1;
		} else if grabtimer == 0 {
			window = 6;
			window_timer = 0;
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
		   	grabbed_player_obj = noone;
    		grabtimer = 60;
		}
   
		if grabtimer < 60 {
			if (up_pressed || up_down){
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 1;
			} else if ((spr_dir = 1 && left_pressed) || (spr_dir = -1 && right_pressed)) ||((spr_dir = 1 && left_down) || (spr_dir = -1 && right_down)) {
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 2;
			} else if (down_pressed || down_down){
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 3;
			} else if (((spr_dir = -1 && left_pressed) || (spr_dir = 1 && right_pressed)) || ((spr_dir = -1 && left_down) || (spr_dir = 1 && right_down))){
			attack_end();
			destroy_hitboxes();
			set_attack(AT_FSPECIAL_2);
			hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
			window = 4;
			}
		}
		
}
}


if attack == AT_DSPECIAL_AIR {

	can_fast_fall = false;
	can_wall_jump = true;

if window == 1 && window_timer == 1 {
	dspec_timer = 0;
}
	if window == 2 || window == 3 {
		dspec_timer += 1;
	}
	

	if dspec_timer > 20 && (jump_pressed || (has_airdodge && shield_pressed)) {
		djumps = 0;
		set_state( PS_DOUBLE_JUMP );
	}
	
	if(window = 6 && window_timer = 1){
			hsp = 4*spr_dir;
			vsp = -9;
	}
	
	
	
}

	if attack = AT_DSPECIAL_AIR && window != 4 && !free && dspecialairbubble = false {
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
		sound_play(asset_get("sfx_zetter_downb"));
	}

if attack == AT_DSPECIAL_AIR && window == 2 && window_timer > 12 {
		djumps = 0;
}

// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_USPECIAL:
	
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
	
		if window == 1{
			mau_grabbed_da_bubble = false;
			grabbed_player_obj = noone;
			reset_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK); //7
			reset_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING);
			reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);//0.6//0.7
			uspecialgrab = false;
			uspecialgrabbing = false;
			uspecial2attack = false;
			uspecialgrabbubble = false;
			uspecialgrabconfirm = false;
			uspecstrongfx = false
		}
	
	   if window == 2 && grabbed_player_obj == noone && !hitpause && uspecialgrab = true && uspecialgrabbed = false {
			destroy_hitboxes();
			window = 5;
			window_timer = 0;
			uspecialgrab = false;
			uspecialgrabbing = true;
			var k = spawn_hit_fx(x + (spr_dir * 50), y - 120, grab_vfx);
    		k.depth = depth + 1;
    		//sound_play(sound_get("catch"), false, noone, 0.4, 1);
		}
		
		if window == 2 && grabbed_player_obj != noone && !hitpause {
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
			grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 50, .5);
    		grabbed_player_obj.y = y-40;
    		if uspecstrongfx = true{
    			hitbubble.x = grabbed_player_obj.x + 1*spr_dir
    			hitbubble.y = grabbed_player_obj.y - 80
    		}
		}
		
		if window == 2 && window_timer == 5 && grabbed_player_obj != noone && special_down {
			window = 5;
			window_timer = 0;
		} else if window == 2 && window_timer == 5 && grabbed_player_obj != noone && !special_down {
			window = 3;
			window_timer = 0;
			grabbed_player_obj = noone;
		}
   
		if window == 5 && uspecialgrabbing = true && !hitpause {
			if window_timer == 10 {
    			window = 6;
    			window_timer = 0;
    			uspecialgrabbing = false;
    			uspecialgrabbed = true;
			}
		}
   
		if window == 5 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause {
			if(grabbed_player_obj != noone){
   			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.state = PS_HITSTUN;
			grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 50, .5);
    		grabbed_player_obj.y = y-40;
    		if uspecstrongfx = true{
    			hitbubble.x = grabbed_player_obj.x + 1*spr_dir
    			hitbubble.y = grabbed_player_obj.y - 40
    		}
			}
    		
    			if window_timer == 1 {
    				var k = spawn_hit_fx(x + (spr_dir * 70), y - 110, grab_vfx);
    				k.depth = depth + 1;
    			}
    			
    			if window_timer == 10 {
    				window = 6;
    				window_timer = 0;
    				if(grabbed_player_obj != noone){
					grabbed_player_obj.x = lerp(grabbed_player_obj.x, x - spr_dir * 115, .5);
    				grabbed_player_obj.y = y+ 0;
    				if uspecstrongfx = true{
    				hitbubble.x = grabbed_player_obj.x + 1*spr_dir
    				hitbubble.y = grabbed_player_obj.y - 40
    				hitbubble.grab_hit = true;
    				}    				
   					grabbed_player_obj.hitpause = false;
					grabbed_player_obj.hitstop = 0;
					grabbed_player_obj.hitstun = false;
				   	grabbed_player_obj = noone;
    				}
	   	    		uspecialgrabconfirm = false;
    			}
    	}
    
        if uspecialgrabbubble = true {
    		set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6.5); //7
			set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8);
			uspecialgrabbubble = false;
			uspecstrongfx = true;
    	}
    	
    	if window == 6{
    		if window_timer == 17 {
    		if uspecialhasgrabbed = false {
    			uspecialhasgrabbed = true;
    		}else if uspecialhasgrabbed = true {
				set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
    		}
		}
    	}
		break;
	
	case AT_USPECIAL_2:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = false;
		fall_through = true;
		hurtboxID.sprite_index = get_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE);
		
		if window == 2 {
			if window_timer == 1 {
			soft_armor = 8;
			} 
			if state == PS_HITSTUN {
				dspecialairbubble = false;
			}
		}
		if window == 3 {

			if window_timer == 12 && !hitpause {
				soft_armor = 0;
				sound_play(sound_get("dstrong_kegsplode"));

			}
		}
	
		break;
	
	case AT_DSPECIAL:
		if (!was_parried && has_hit){
			can_jump = true;
		}
		can_fast_fall = false;
		can_move = false;
		if (window = 3 && free){
			vsp = 0;
		}
		break;
		// if (window = 4 && window_timer = 1){
		// 	hsp = 4*spr_dir;
		// 	vsp = -9;
		// }
}


