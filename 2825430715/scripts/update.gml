///


 if cheapmode == 0 {
 
 with(asset_get("oPlayer")){ 
 	if url != "2273636433" && url != "1870768156"
	&& url != "1869351026" && url != "2443363942" &&
	(string_count("nald", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("OP ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("Jo", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or url == "2159023588"
	or url == "1980469422"
	){
       other.cheapmode = 1 
     }    
 }
 } 
 
 
 if cheapmode == 1 && get_gameplay_time() < 600 {
 	if taunt_pressed or get_player_damage(player) > 50 or state == PS_RESPAWN {
 		cheapmode = 3 
 		hasmind = 1
        hasbody = 1
        hasbalance = 1
        shake_camera(10,10)
        spawn_hit_fx(x,y - 40,SC)
            sound_play(sound_get("stone3"),false,noone,1,1)
    		sound_play(sound_get("stone3"),false,noone,.3,1)
    		sound_play(sound_get("Fstrong"),false,noone,1,1.5)
    		sound_play(sound_get("RZ"),false,noone,1,.2)
    		gotstone += 70
    		stoned = 1
 	}
 }


 if cheapmode == 3 {
 	
 	if state == PS_RESPAWN {
 				state_timer = 120
 				visible = true 
 				with oPlayer  {
 					if self != other {
 						set_player_stocks(other.player, get_player_stocks(player) + 1)
 					    end_match()
 					}
 				}
   }
   
 	with oPlayer {
 		super = 0 
 		if self != other {
 			hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
 			invincible = false 
 			invince_time = 0
 			if get_player_stocks(player) > 3 {
 				if "dcounter" not in other {
 					other.dcounter = 0
 				}
 				x += 99999*other.spr_dir
 				hitpause = false 
 				visible = true 
 				other.dcounter += 1
 			}
 			if state == PS_RESPAWN {
 				state_timer = 120
 				visible = true 
 				if other.dcounter >= 10 {
 						set_player_stocks(other.player, get_player_stocks(player) + 1)
 					end_match()
 				}
 			}
 		}
 	}
 	if shield_pressed {
 		hitpause = 0
 		hitstop = 0
 	}
 	visible = true 
 	if state_cat == SC_HITSTUN {
 		perfect_dodging = true
 	}
 	init_shader()
 }
 
 
if hurted == true && hitted == true && (attack == AT_FSTRONG or attack == AT_UAIR or attack == AT_FSPECIAL) {
        invincible = true 
        invince_time = 10
        fakeinvi = 12
}

with asset_get("pHitBox") {
		
		if "KanosRe" in self {
			
			if KanosRe == 3 && KanosReP = other.player {
				destroyed = true 
				y = 9999
            
			}
			
			if KanosRe == 2 && KanosReP = other.player {
				image_xscale = 1
   	   	   	   image_yscale = 1
		        hsp = 0
		        vsp = 0
		        hitbox_timer -= 1
		        hit_priority = 0
		        transcendent = true
	    	     can_hit_self = true
	    	     enemies = 0
	    	     walls = 1 
	    	     grounds = 1
	    	     
	    	var angle = point_direction(x, y, player_id.x , player_id.y - 30);

            x += lengthdir_x(22, angle)
            y += lengthdir_y(22, angle)
            
	    	     
			}
			
			if abs(x - player_id.x) < 70 && abs(y - player_id.y) < 70 {
				with player_id {
					if (state == PS_AIR_DODGE or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD 
                	or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or invince_time > 0 or state == PS_TECH_GROUND) {
            		            invincible = 0
            		            invince_time = 0
            		            state_timer = 999
            		            window_timer = 999
            		            visible = true 
            		            print("inevitable")
                	}
                	if (state == PS_PARRY && state_timer < 12) {
                		state_timer = 12
                		window_timer = 12
                		perfect_dodging = false 
                		print("inevitable")
                	}
				}
				
				
				destroyed = true 
				KanosRe = 3
			}
		}
		
}

if fakeinvi > 0 {
	with asset_get("pHitBox") {
		
		if "KanosRe" in self {
			if KanosRe == 2 && KanosReP = other.player {
				with other {
		        	if state_timer % 8 == 0 {
		        	pgfx = spawn_hit_fx(other.x,other.y + 18, stonef)
		        	pgfx.spr_dir = 0.6
		        	pgfx.image_yscale = 0.6
		        	}
		        }
		        hsp = 0
		        vsp = 0
		        hitbox_timer -= 1
		        hit_priority = 9
		        transcendent = true
	    	     can_hit_self = true
	    	     enemies = 0
	    	     walls = 1 
	    	     grounds = 1
	    	     
	    	var angle = point_direction(x, y, player_id.x , player_id.y - 30);

            x += lengthdir_x(12, angle)
            y += lengthdir_y(12, angle)
            
	    	     
			}
		}
		
	     if "player_id" in self {
	     	  if player_id = other.id {
	     	  	hit_priority = 0
	     	  } 
	     }
	}
}

if !hitpause {
   if hurted == true && hitted == true  && (attack == AT_FSTRONG or attack == AT_UAIR or attack == AT_FSPECIAL)  {
		state = astate
		attack = aattack
        window = awindow 
        window_timer = atimer 
        hsp = ahsp 
        vsp = avsp
        spr_dir = adir
   }
	fakeinvi -- 
	hurted = 0
    hitted = 0
}


if(get_match_setting(SET_PRACTICE)) == false {
if triggercutscene != 0 && potbuster == 0 {
	
	
	hitpause = true 
    hitstop = 999 


		
	if triggercutscene < 91 {
	with oPlayer {
		if player != other.player {
          hitpause = true 
          hitstop = 5 
		}
	}
	
		
	if triggercutscene == 1 {
		sound_stop(asset_get("sfx_shovel_swing_heavy2"))
		sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,1,1)
	}
	
	if triggercutscene == 35 {
		shake_camera(20,10)
		sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
	}
	
	if triggercutscene == 45 {
		sound_play(asset_get("sfx_blow_heavy2"),false,noone,.8,1)
	}
	
	if triggercutscene == 55 {
		sound_play(asset_get("sfx_blow_heavy2"),false,noone,.6,1)
	}
	
	if triggercutscene == 65 {
		sound_play(asset_get("sfx_blow_heavy2"),false,noone,.4,1)
	}
	
	if triggercutscene == 75 {
		sound_play(asset_get("sfx_blow_heavy2"),false,noone,.2,1)
	}
	
	} else if triggercutscene == 100 {

     	with oPlayer {
          if player != other.player {
          	y = 99999
          }
		}
		triggercutscene = -120
	}
	suppress_stage_music( 0.5, 1 );	
	triggercutscene ++ 
}



if instance_number(oPlayer) == 2 {


with oPlayer {
  if player != other.player {
  	 
  	
  	if get_player_stocks(player) == 1 && other.potbuster == 0{
  		if other.alreadydead == 0 { 
  		other.alreadydead = 1
  		}
  		
  		if state == PS_RESPAWN && other.triggercutscene == 0 && other.move_cooldown[AT_USPECIAL_GROUND] != 0 {
  		with other {
  			alreadydead = 2 
  	    	triggercutscene = 1
  	    	set_player_stocks(player, get_player_stocks(player) + 1)
  		}

  	    }
  		
  	}
  	
  	if other.alreadydead = 1  && other.potbuster == 0 {
  		if x + hsp > room_width/2 + 600 or x - hsp < room_width/2 - 600 or y - vsp < room_height/2 - 350 or y + vsp > room_height/2 + 350 {
  			set_player_stocks(player, 2)
  			other.move_cooldown[AT_USPECIAL_GROUND] = 999
            dedspr = sprite_index
            dedimge = image_index
              
  		} else {
  			set_player_stocks(player, 1)
  		}
  	}
  
  }
}

}

}

if get_gameplay_time() > 60*90 - taunted  {
	if hasbalance == false {
			    	gotstone = 110
			    	stonefxm = spawn_hit_fx(x,y,stonef)
			    	stonefxm.depth = -6
			    	hasbalance = true 
	}
}


if gotstone > 0 {
	if gotstone > 30 {
		suppress_stage_music( 0.5, 60 );	
	} else {
		suppress_stage_music( 0.8, 60 );	
	}
	
    if gotstone == 110 && stoned == 0 {
    	sound_stop(sound_get("RI"))
       sound_stop(sound_get("Fstrong"))	   
	   sound_play(sound_get("RI"),false,noone,.6,.8)
    	sound_play(sound_get("Fstrong"),false,noone,.6,1.3)
    	
    	sound_stop(sound_get("stone1"))
    	sound_stop(sound_get("stone2"))
    	sound_stop(sound_get("stone3"))
    	switch hasbody + hasmind + hasbalance {
    		case 1 :
    		sound_play(sound_get("stone1"),false,noone,1,1)
    		sound_play(sound_get("stone1"),false,noone,.3,1)
    		gotstone -= 50
    		break;
    		
    		case 2 :
    		sound_play(sound_get("stone2"),false,noone,1,1)
    		sound_play(sound_get("stone2"),false,noone,.3,1)
    		break;
    		
    		case 3:
    		sound_play(sound_get("stone3"),false,noone,1,1)
    		sound_play(sound_get("stone3"),false,noone,.3,1)
    		gotstone += 70
    		stoned = 1
    		break;
    	}
	
    }
    gotstone --
}

with oPlayer {
       if "resettingtype" in self {
             if resettingtype == true && !hitpause {
                    set_attack_value(attack, AG_CATEGORY, 0);
                    resettingtype = false 
             }
       }
	if "turningtodustID" in self {
		
		if turningtodustID == other && turningtodust > 0{
			
			if other.state == PS_RESPAWN {
				turningtodust = 1
				spawn_hit_fx(x,y-40,306)
				with other {
					sound_play(sound_get("Fstrong"),false,noone,1,.8)
				}
			}
			
			if !hitpause {
			
			with other {

			if state_cat != SC_HITSTUN && !hitpause {
				x -= floor(hsp/3)
				y -= floor(vsp/4)
			}
			
	    	}
		
			turningtodust--
			invisible = true 
			
			if get_gameplay_time()% (1 + floor(turningtodust/40)) == 0 {
			    take_damage(player,-1,7)
			    sound_play(asset_get("sfx_icehit_heavy1"),false,noone,.6,1)
			    if random_func(4,2,true) ==  0 {
			        spawn_hit_fx(x - random_func(1,80,true) + 40,y - random_func(2,80,true),14)
			    } else {
			        spawn_hit_fx(x - random_func(1,80,true) + 40,y - random_func(2,80,true),13)
			    }
			}
			
			if turningtodust == 1 {
			    take_damage(player,-1,-999)
			    take_damage(player,-1,9999999999)
                hitpause = false 
			    dustspr = sprite_index
			    dustimg = image_index
			    dustdir = spr_dir 
			    dustx = x
			    dusty = y 
			    KOdusted = 60

			    
			    y = 99999
			    turningtodust = 0
			}
			}
		}
	}
	
}

with oPlayer {
	if self != other {
		if state == PS_RESPAWN {
			turningtodust = 0
			if state_timer == 30  {
			    with other {
			    	if hasmind == false {
			    	gotstone = 110
			    	stonefxm = spawn_hit_fx(x,y,stonem)
			    	stonefxm.depth = -6
			    	hasmind = true 
			    	}
			    }
			}
		}
	}
}

if state == PS_RESPAWN && state_timer == 88 {
	if hasbody == false {
			    	gotstone = 110
			    	stonefxm = spawn_hit_fx(x,y,stoneb)
			    	stonefxm.depth = -6
			    	hasbody = true 
	}
	sound_play(sound_get("SpaceCut"),false,noone,.7,1.2)
	stonefxm = spawn_hit_fx(x,y,stoneb)
	stonefxm.depth = -6
}

shsp = floor((hsp + shsp)/2)
svsp = floor((vsp + svsp)/2)

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
}


if !free or state_cat == SC_HITSTUN {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
}

if state_timer == 1 && !hitpause && (state == PS_LAND or state == PS_LANDING_LAG){

sound_play(asset_get("sfx_land_med"))	
sound_play(asset_get("sfx_land_light"))	
shake_camera(2, 4)
}

if state_timer == 1 && !hitpause && (state == PS_WALL_JUMP){
sound_play(asset_get("sfx_land_med"))	
sound_play(asset_get("sfx_land_light"))	
shake_camera(2, 4)
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0
}

if state == PS_WALK {
	
	image_index = floor(state_timer/50)
	if state_timer == 15 or state_timer == 45{
		sound_play(asset_get("sfx_land_light"));
	}
	if state_timer > 60 {
		state_timer = 0
	}
}

if !hitpause && (state == PS_DASH or state == PS_DASH_START) {
	
	
	
	if (state_timer%18 == 12 and state == PS_DASH) or (state == PS_DASH_START && state_timer == 4){
		sound_play(asset_get("sfx_land_heavy"));
	}
	
}


if state == PS_AIR_DODGE {
	
	
	
}


if state == PS_WAVELAND {
	visible = true
}


if state == PS_PARRY && noparryedit == 0{

if window_timer == 1{
window_timer = 3
}

if state_timer < 10 {
window_timer = 3	
} 

if state_timer > 10 && window_timer != 20 {
	window_timer += 1
}
	
}

if state == PS_PARRY_START {
	noparryedit = 0
}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_ori_bash_use"));
}
	 
	 if state_timer == 6 {
	 	if state == PS_ROLL_BACKWARD or state == PS_TECH_BACKWARD{
	 	hee = spawn_hit_fx (x, y, rollfx)
	 	hee.spr_dir = spr_dir
	 	} else {
	 	hee = spawn_hit_fx (x, y, rollfx)
	 	hee.spr_dir = spr_dir*-1	
	 	}
	 }
	 
	 if state_timer < 9{
	     hsp = -4 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -30 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 12 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}

if state == PS_RESPAWN && visible {
	
	if state_timer % 10 == 0 {
		spawn_base_dust(x,y + 2,"land",spr_dir)
	}
}

with asset_get("pHitBox") {
	if "player_id" in self {
	if player_id = other.id {
	        if (attack == AT_FSPECIAL) 
	        or (attack == AT_UAIR )
	        or (attack == AT_FSTRONG && hbox_num == 1) {	
        
                
            with oPlayer{
            	if clone continue
            	var heal_player = instance_place(x, y, other)
            	if (heal_player != noone) {
            		
                	if  id != other.player_id && (state == PS_AIR_DODGE or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD 
                	or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or invince_time > 0 or state == PS_TECH_GROUND) {
                		if "fakeinvi" in self {
                			if fakeinvi > 0 {
                				
                			} else {
            		            invincible = 0
            		            invince_time = 0
            		            state_timer = 999
            		            window_timer = 999
            		            visible = true 
            		            print("inevitable")
            		            with other.player_id {
            		            	create_hitbox(AT_FSTRONG,5,x,y)
            		            }
                			}
                		} else {
            		    invincible = 0
            		    invince_time = 0
            		    state_timer = 999
            		    window_timer = 999
            		    visible = true
            		    print("inevitable")
            		    with other.player_id {
            		            	create_hitbox(AT_FSTRONG,5,x,y)
            		     }
                		}
                    }
                    
               }    
                
            }
            
    }
  }
    
}
}

#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;
