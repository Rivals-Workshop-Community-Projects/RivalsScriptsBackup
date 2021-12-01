//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//hud offsets
if (attack == AT_USTRONG){
hud_offset = 35
}

if (attack == AT_UAIR){
hud_offset = 35
}

if (attack == AT_UTILT){
hud_offset = 35
}

switch(attack){
	case AT_FSPECIAL:
		window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
		switch(window){
			case 1:
				if(hasstatic == true){
		            set_window(4);
		            hasstatic = false;
	            }
		    	if (volt_charge_length < 120) {
		    		volt_charge_max = (120 - volt_charge_length);
		    	}else{
					set_window(4);
		    	}
		    	if (window_time_is(1)) {
			    	chargeroll = sound_play(sound_get("charge"));
		    	}
			break;
			case 2:
			    vsp = min(vsp,4);can_move = false;hsp = sign(hsp)*lerp(abs(hsp), 0, .04);
			    strong_flashing = (floor(get_gameplay_time()/8) % 2) == 0;
			    volt_charge_length++;
			    if (!special_down){
			    	if(volt_charge_length <= 80){
						set_window(3);
			    	}else{
			    		set_window(4);
			    	}
			    }
			    if(window_time_is(window_end)){
			    	if(volt_charge_length <= 80){
						set_window(3);
			    	}else{
			    		set_window(4);
			    	}			    	
			    }
			    
			    if(shield_pressed && volt_charge_length >= 80){
                hasstatic = true;
                staticsound = sound_play(sound_get("staticget"))
                set_window(10);
                }
			    switch(volt_charge_length){
			    	case 1:
			    		spawn_hit_fx( x, y, vfx_charge_volt1)
			    		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
			    		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
                        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 302);
			    	break
			    	case 80:
			    	    staticsound_get = sound_play(sound_get("staticcharge"))
			    		spawn_hit_fx( x, y, vfx_charge_volt2)
			    		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
			    		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("elechurt_heavy"));
                        set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 197);
                        set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
			    	break;
			    }
			break;
			case 3:
			case 4:
				if(!instance_exists(fspec_hbox)){
					fspec_hbox = create_hitbox(AT_FSPECIAL,1,x,y);
				}else{
					fspec_hbox.x = x + hsp;
					fspec_hbox.y = y + vsp;
					if(window == 4){
						with (asset_get("pHitBox")){
						if (orig_player_id == other && ("already_buffed" not in self)){
								damage = floor(damage * 2);
								hitpause = floor(hitpause * 2);
								kb_value += 1;
								already_buffed = true;
							}
						}
					}
				}
			    sound_stop(chargeroll);
			    hsp = 10*spr_dir + (floor(volt_charge_length / 15)) * spr_dir;
			    if (window_time_is(window_end)) {
			    	volt_charge_length = 0;
			    	fspec_hbox.destroyed = true;
			    }
			break;
			case 5:
				already_buffed = false;
				volt_charge_length = 0;
			break;
		}
	break;
	case AT_DSPECIAL:
	    switch(window){
	    	case 1:
			  if(attack_pressed){
                set_window(4);
                }
	          if(hasstatic == true){
	          	if(free){
		          set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("explosion_static_air"));
                  set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("explosion_static_air"));
                  set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -2);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -57);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 268);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 268);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 15);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 25);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 22); // 10
                  set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
                  set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("explosion_static"));
                  set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, vfx_voltface);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 20); // 3
	          	}else{
		          set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("explosion_static"));
                  set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("explosion_static"));
                  set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -2);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -57);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 268);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 140);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 15);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 25);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 22); // 10
                  set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
                  set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("explosion_static"));
                  set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, vfx_voltface);
                  set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 20); // 3
	          	}
		         
		      }else if(hasstatic == false){
		      	if(free){
		      		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("explosion_air"));
                    set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("explosion_air"));
                    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -1);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -7);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 170);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 170);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 15);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 16);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 15); // 10
                    set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 15); // 10
                    set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
                    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("explosion_normal"));
                    set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 143);
		      	}else{		        
		            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("explosion"));
                    set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("explosion"));
                    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -1);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -7);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 170);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 87);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 15);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 16);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 15); // 10
                    set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 15); // 10
                    set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
                    set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
                    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("explosion_normal"));
                    set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 143);
		      		
		      	}
	          }           
            break;
            
            case 2: 
               if (hasstatic == true){
               	if(window_timer == 1){
               	 take_damage( player, -1, 15);
               	 shake_camera(10,12);
               	}
               }
               else{
               	if(window_timer == 1){
             	 take_damage( player, -1, 8);
             	 shake_camera(5,12);
               	}
               }
            break;
             
            case 3: 
               if (hasstatic == true){
               	hasstatic = false;
               	volt_charge_length = 0;
               }
             break;
             
	    }
	break;
	case AT_USPECIAL:
	    switch (window){
	    	case 2:
          	case 4:
          	if (window_timer == 1){
	          if (left_down){
                  hsp = -8;
                  vsp = 0;
              }
              if (up_down){
                  hsp = 0;
                  vsp = -8;
              }
              if (down_down){
                  hsp = 0;
                  vsp = 8;
              }
              if (right_down){
                  hsp = 8;
                  vsp = 0;
              }
              break;
          	}
        }
        if (hasstatic == true){
        	set_window_value(AT_USPECIAL, 2, AG_WINDOW_GOTO, 3);
        }else{
        	set_window_value(AT_USPECIAL, 2, AG_WINDOW_GOTO, 5);
        }
        break;
	break;
	case AT_NSPECIAL:
	   switch (window){
	   	   case 1:
	   	      if (hasstatic == true){
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("electroball_big"));
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("electroball_big"));
                set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
                set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
                set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
                set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .2);
                set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_absa_dattack"));
                set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 197);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	   	      }else{
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("electroball_small"));
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("electroball_small"));
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
	   	      	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_absa_singlezap1"));
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 21);
	   	      	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_jab1"));
	   	      }
	   	    break;
	   	  case 3:
	   	    if (hasstatic == true){
	   	        hasstatic = false;
	   	        volt_charge_length = 0;
	   	      }
	   }
	  break;
	case AT_FSTRONG:
	   switch (window){
	   	case 1: 
	     	if (hasstatic == true){
	   	    	set_window(5);
	    	}
	   	break;
	   	case 6: 
	   	    if (hasstatic == true){
	   	        hasstatic = false;
	   	        volt_charge_length = 0;
	   	    }
	    break;
	   }
	   break;
	case AT_USTRONG:
	   switch (window){
	   	case 1: 
	     	if (hasstatic == true){
	   	    	set_window(5);
	    	}
	   	break;
	   	case 6: 
	   	    if (hasstatic == true){
	   	        hasstatic = false;
	   	        volt_charge_length = 0;
	   	    }
	    break;
	   }
	   case AT_DSTRONG:
	   switch (window){
	   	case 1: 
	     	if (hasstatic == true){
	   	    	set_window(5);
	    	}
	   	break;
	   	case 6: 
	   	    if (hasstatic == true){
	   	        hasstatic = false;
	   	        volt_charge_length = 0;
	   	    }
	    break;
	   }
	   break;
}
#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause

#define set_window(_new_window) // Version 0
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!