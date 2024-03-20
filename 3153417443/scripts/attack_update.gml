//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
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
 
 if attack == AT_UAIR {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_may_arc_five"));
        sound_play(sound_get("uair"));
    }
 }
 
  if attack == AT_FAIR {
    if window == 1 && window_timer == 4 {
        sound_play(asset_get("sfx_swipe_medium1"));
    }
 }

  var dstrong_charged = true;
if (attack == AT_DSTRONG) {
	
	if window == 1 && strong_charge == 59 {
		dstrong_charged = false;        
		window = 4;
		window_timer = 0;
} 

if window == 3 && window_timer == 6 {
	        var k = spawn_hit_fx(x + (spr_dir + 10), y - 50, dstrong_vfx);
        k.depth = depth + 20;
}
		
	  if (window == 2 && window_timer == 1) || (window == 4 && window_timer == 1) {
        sound_play(asset_get("sfx_swipe_heavy1"));
        sound_play(sound_get("dstrong"));
    }

	if window == 4 && window_timer == 1 {
		window = 5;
		window_timer = 0;
	}

	if window == 5 && window_timer == 13 {
		window = 6;
		window_timer = 0;
	}

	if window == 6 && window_timer == 4 {
        sound_play(sound_get("dstrong_kegsplode"));
        sound_play(asset_get("sfx_frog_dspecial_swallow"));
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
	}
    
    if(window < 6 and (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause){
    	window = 6;
    	window_timer = 0;
	    var k = spawn_hit_fx(x + (spr_dir * 100), y - 30, grab_vfx);
        k.depth = depth + 1;
    } 
   
    if window == 5 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause {
    	if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
    	}

    }
    
    if(window == 6){
    	if(grabbed_player_obj != noone){
    		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
    		grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 50, .5);
    		grabbed_player_obj.y = y-8;
    	}
    }
    	
    if window == 7  {
	   	grabbed_player_obj = noone;
    }	
    	
    	
	
    }

if (attack == AT_FSPECIAL_2 || attack == AT_FSPECIAL){
	if (free && y >= room_height - 150 && grabbed_player_obj != noone){ 
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
			   	grabbed_player_obj = noone;
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
		if vsp > 3 {
			vsp = 3;
		}
	}



if (attack == AT_FSPECIAL){
	
	can_fast_fall = false;

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
    	grabbed_player_obj = noone;
    	grabtimer = 60;
   		set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
		set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .7);
    }
 
    if(window < 4 and (grabbed_player_obj!= noone or mau_grabbed_da_bubble) and !hitpause){
    	window = 4;
    	window_timer = 0;
  	    sound_play(sound_get("catch"));
  	    
  	     
    	if fspecialgrabbubble = true {
    		sound_play(asset_get("mfx_player_ready"));
    		set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .9);
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .6);
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8.5);
			set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .8);
			fspecialgrabbubble = false;
			
    	}
  	    
    } 
  
  
    if(window == 4 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause){
    	if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
    	
    		grabbed_player_obj.x = x + spr_dir * 45;
    	}
			
    	if window_timer == 2 {
    					grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
	       var k = spawn_hit_fx(grabbed_player_obj.x + (spr_dir * 50), grabbed_player_obj.y - 30, grab_vfx);
    	    k.depth = depth + 1;
    	}
    	
		if(window_timer < 2){
			if(grabbed_player_obj != noone){
							grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 20, .15);
    			grabbed_player_obj.y = y-8;
			}
		} else if (window_timer < 15){
			if(grabbed_player_obj != noone){
							grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 75, .15);
			grabbed_player_obj.y = y;
			}
		} else if (window_timer == 15){
			if(grabbed_player_obj != noone){
							grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
			grabbed_player_obj.x = x + spr_dir*45;
			grabbed_player_obj.y = y;
			}
			window = 5;
			window_timer = 0;
		}
    
    can_fast_fall = false;
}

    if(window == 5 && (grabbed_player_obj != noone or mau_grabbed_da_bubble) and !hitpause) {
   		//	grabbed_player_obj.hitstop = 2;
		//	grabbed_player_obj.hitstun = true;
   if(grabbed_player_obj != noone){
   		//grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitstun = true;

    	
			grabbed_player_obj.x = x + spr_dir * 45;
			grabbed_player_obj.y = y;
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
		grabbed_player_obj.hitstun = true;
			}
		} else if window_timer == 9 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
		   	grabbed_player_obj = noone;
			}
		    fspecialgrabconfirm = false;
		}
		break;
		case 2:
		if window_timer < 29 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
			}
		}
			if window_timer < 10 {
				if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 80, .035);
				grabbed_player_obj.y = y -5;
				}
		} 	else if window_timer > 10 && window_timer < 18 {
			if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x - spr_dir * 100, .1);
				grabbed_player_obj.y = y -5;
			}
		}   else if window_timer > 18 && window_timer < 24 {
			if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 100, .1);
				grabbed_player_obj.y = y -5;
			}
		}	else if window_timer > 24 && window_timer < 30 {
			if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x - spr_dir * 100, .1);
				grabbed_player_obj.y = y -5;
			}
				    fspecialgrabconfirm = false;
		}
			
 		break;
 		case 3:
 		if !free {
 			set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 80);
 		} else {
 			set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 270);
 		}
 			if window_timer < 12 {
 				if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 40, .25);
				grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 35, .25);
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
 				}

		}	else if window_timer == 12 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
	       	grabbed_player_obj = noone;
			}
			fspecialgrabconfirm = false;
		}
		break;
		case 4:
			 if window_timer < 12 {
			 	if(grabbed_player_obj != noone){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 60, .25);
				grabbed_player_obj.y = y;
   		grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
			 	}
		} else if window_timer == 12 {
			if(grabbed_player_obj != noone){
   		grabbed_player_obj.hitpause = false;
			grabbed_player_obj.hitstop = 0;
			grabbed_player_obj.hitstun = false;
			grabbed_player_obj.hitstun = false;
			   	grabbed_player_obj = noone;
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
    sound_play(sound_get("catch"));

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
			set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5); //7
			set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.7); //0.6//0.7
			uspecialgrab = false;
			uspecialgrabbing = false;
			uspecial2attack = false;
			uspecialgrabbubble = false;
			uspecialgrabconfirm = false;
		}
	
	   if window == 2 && grabbed_player_obj == noone && !hitpause && uspecialgrab = true && uspecialgrabbed = false {
			destroy_hitboxes();
			window = 5;
			window_timer = 0;
			uspecialgrab = false;
			uspecialgrabbing = true;
			var k = spawn_hit_fx(x + (spr_dir * 50), y - 120, grab_vfx);
    		k.depth = depth + 1;
    		//sound_play(sound_get("catch"));
		}
		
		if window == 2 && grabbed_player_obj != noone && !hitpause {
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitstun = true;
			grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 50, .5);
    		grabbed_player_obj.y = y-40;
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
			grabbed_player_obj.hitstun = true;
			grabbed_player_obj.x = lerp(grabbed_player_obj.x, x + spr_dir * 50, .5);
    		grabbed_player_obj.y = y-40;
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
   					grabbed_player_obj.hitpause = false;
					grabbed_player_obj.hitstop = 0;
					grabbed_player_obj.hitstun = false;
				   	grabbed_player_obj = noone;
    				}
	   	    		uspecialgrabconfirm = false;
    			}
    	}
    
        if uspecialgrabbubble = true {
    		sound_play(asset_get("mfx_player_ready"));
    		set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6.5); //7
			set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8);
			uspecialgrabbubble = false;
    	}
    	
    	if window == 6 && window_timer == 17 {
    		if uspecialhasgrabbed = false {
    			uspecialhasgrabbed = true;
    		}else if uspecialhasgrabbed = true {
    			window = 4;
    			window_timer = 0;
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
		if (!hitpause && !was_parried && has_hit){
			can_jump = true;
		}
		can_fast_fall = false;
		can_move = false;
		break;
}


