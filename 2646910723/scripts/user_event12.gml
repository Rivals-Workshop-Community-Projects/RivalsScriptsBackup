//Custom tech, Gear select, etc

if hit_player_obj == -4 or hit_player_obj.hit_player_obj != self{
    hit_player_obj = self
}


if "Gear" not in self{
    Gear = 0
    Gearslcd = 30
    
    GearX = -1
    GearXlv = 1
    
    GearB = 6
    GearBat = 0
    GearBatcd = 0
    GearBat2 = 0
    GearBat2cd = 0
    GearBcd = 0
    GearBcd2 = 0
    GearAir = 0

    GearA = 0
    GearAh = 0
    GearAv = 0
    GearAvo = 0
    GearAho = 0
    
    GearAN = 0
    
    GearO = 0
    GearOcd = 0
    sprite_change_offset("Burst", 192/2, 192/2);
    sprite_change_offset("Xfactor", 192/2, 192/2);
    sprite_change_offset("Adash", 192/2, 192/2);
    sprite_change_offset("AUGH", 58, 118 + 2);
    Xfactor = hit_fx_create( sprite_get( "Xfactor" ), 16 );
    Xfac = hit_fx_create( sprite_get( "Xfactor" ), 8 );
    Adash = hit_fx_create( sprite_get( "Adash" ), 14 );
    Adash2 = hit_fx_create( sprite_get( "Adash" ), 6 );
    Burst = hit_fx_create( sprite_get( "Burst" ), 20 );
    
} else {
	
	if get_gameplay_time() < 10 or (state == PS_RESPAWN && state_timer < 10) {
		Gear = 0
		Gearslcd = 20
	}
	
	if Gearslcd > 0 Gearslcd --	
	
	if Gear == 0 && Gearslcd <= 0{
		if shield_down{
		   if !down_down && !up_down && !left_down && !right_down && Gear != 3 && GearBcd <= 0{
    	     Gear = 3
    	     sound_play(sound_get("hcine"),false,noone,0.25, 3)
    	     GearBcd = 5
    	   }
    	   
    	   if left_down && Gear != 1 && GearBcd <= 0{
    	     Gear = 1
    	     sound_play(sound_get("hcine"),false,noone,0.25, 3)
    	     GearBcd = 5
    	   }
    	   if right_down && Gear != 2 && GearBcd <= 0{
    	     Gear = 2
    	     sound_play(sound_get("hcine"),false,noone,0.25, 3)
    	     GearBcd = 5
    	   }
    	   if down_down && Gear != 5 && GearBcd <= 0{
    	     Gear = 5
    	     sound_play(sound_get("hcine"),false,noone,0.25, 3)
    	     GearBcd = 5
    	     GearAir = 60
    	   }
    	   if up_down && Gear != 4 && GearBcd <= 0{
    	     Gear = 4
    	     sound_play(sound_get("hcine"),false,noone,0.25, 3)
    	     GearBcd = 5
    	   }
    	   Gearslcd = 20
        }
	}

    if Gearslcd <= 0{
    	
    if Gear == 5 && get_gameplay_time() >= 120 and state != PS_RESPAWN and state != PS_DEAD{
		if !free {
			GearAir ++
		}
		
		
		if state_cat != SC_HITSTUN and free{
			if shield_down && GearAir >= 45{
				 GearAir = 0
				 spawn_hit_fx(x,y - 36,Adash)
				 sound_play(sound_get("plop"),false,noone,0.4, 1)
				 sound_play(sound_get("jumpcrunch2"),false,noone,0.6, 1)
				 sound_play(sound_get("hcine"),false,noone,0.2, 2)
				 hsp = (right_down - left_down)*((dash_speed + 10)/2)
				 vsp /= 4
				 vsp -= 2 - (down_down - up_down)*4
				 if !right_down && !left_down && !down_down && !up_down{
				 	hsp = ((dash_speed + 10)/2)*spr_dir
				 	vsp = -2
				 }
			}
		}
	}
	
	
	if Gear == 4 && get_gameplay_time() >= 120 and state != PS_RESPAWN and state != PS_DEAD{
		if GearO >= 300 && get_gameplay_time() % 20 == 0{
			XX2 = spawn_hit_fx(x,y-36, 305)
            XX2.pause = 4
            XX2.depth = depth - 4
            take_damage(player,1,1)
            sound_stop(sound_get("hcine"))
            sound_play(sound_get("hcine"),false,noone,0.25, 3)
		}
		
		if GearOcd > 0{
			GearOcd --
		}
		
		if GearO < 300 && GearO > 100{
			GearO = 300
            XX = spawn_hit_fx(x,y-36, 306)
            XX.pause = 6
            sound_play(sound_get("hcine"),false,noone,0.6, 0.6)
            sound_play(sound_get("hcine"),false,noone,0.6, 1)
            sound_play(sound_get("hextra"),false,noone,0.6, 1)
		}
		if (state_cat == SC_HITSTUN or hit_player_obj.state_cat == SC_HITSTUN) && GearOcd <= 0{
		    GearO += 0.2 + min((get_player_damage( player ))/200,0.2)
		}
		if GearO >= 300 && shield_down && !free && state_cat != SC_HITSTUN && !hitstop{
			take_damage(player,1,25)
			Drak_icecream = 1
			GearO = 0
			GearOcd = 600
		}
		
	}
	
	if Gear == 3 && get_gameplay_time() >= 120 and state != PS_RESPAWN and state != PS_DEAD{
		if GearAir == 3{
			if GearBcd > 0 && !hitstop{
              GearBcd --
            }
            
            if (hit_player_obj.state_cat == SC_HITSTUN or state_cat == SC_HITSTUN) && !hitstop{
                if GearBcd == 0{
                       GearAir = 0
                       XX = spawn_hit_fx(x,y-36, 302)
                       XX.pause = 6
                       sound_play(sound_get("hextra"),false,noone,0.4, 3)
                    }
               
                GearBcd = 15
            }

             
        }
		
		
		if GearAir == 1 && (state_cat == SC_HITSTUN or hit_player_obj.state_cat == SC_HITSTUN) && hitstop{
			GearAir = 0
			XX = spawn_hit_fx(x,y-36, 302)
            XX.pause = 6
            sound_play(sound_get("hextra"),false,noone,0.4, 3)
		}
		if GearAir > 4{
			GearAir -- 
			x += round(GearAh*(3+!free))
			y += round(GearAv*3*free)
			// hsp = 0
			// vsp = 0
		}
		
		if GearAir == 4{
			GearAir -- 
			// hsp = GearAho
			// vsp = GearAvo
			spawn_hit_fx(x,y - 36,Adash2)
		}
		
		if state_cat != SC_HITSTUN{
			if shield_down && GearAir = 0{
				 GearAir = 10
				 shake_camera(4,2)
				 flashfx = spawn_hit_fx(x,y - 30,305)
				 flashfx.pause = 3
				 sound_play(sound_get("Shift"),false,noone,1, 2)
				 GearAho = hsp
				 GearAvo = vsp
				 //vsp /= 4
				 GearAv = ((down_down - up_down)*4) 
				 GearAh = (right_down - left_down)*(4)/ (1 + (GearAv != 0)/3)
				 if !right_down && !left_down && !down_down && !up_down{
				 	GearAh = (4)*spr_dir
				 	GearAv = 0
				 }
			}
		}
	}
	

    if Gear == 2 && get_gameplay_time() >= 120 and state != PS_RESPAWN and state != PS_DEAD{
        if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR{
        	if !has_hit_player && attack == AT_DSPECIAL_AIR && window == 2 {
        		hsp /= 1.4
        		vsp /= 1.4
        		window_timer -= 0.25
        		if free {
        			vsp -= 0.05
        		}
        	}
             if window == 2 && attack == AT_DSPECIAL_AIR && !has_hit_player && window_timer >= 12{
               set_state(PS_PRATFALL)	
             }
            if window < 3 && attack == AT_DSPECIAL_AIR && has_hit_player{
            	if window == 1 && hit_player_obj.state_cat != SC_HITSTUN {
            		with hit_player_obj{
            		attack_end()
            		state = PS_IDLE
            		}
            	    has_hit_player = false
                    hitstop = 0
                    old_vsp = 0
                    old_hsp = 0
                    attack_end() 
                    destroy_hitboxes()
                    djumps = 0
                    shake_camera(4,12)
                    GearB = 0
                    hsp = 0
                    vsp = -6 * free 
                    set_attack(AT_DSPECIAL_AIR)
                    window = 1
                    window_timer = 0
                    GearBcd = 50
                    spawn_hit_fx(x,y-36, Burst)
                    invincible = true
                    invince_time = 15
                    sound_stop(sound_get("hcine"))
                    sound_stop(sound_get("wheesh"))
                    sound_stop(sound_get("hextra"))
                    sound_play(sound_get("hcine"),false,noone,0.65, 2)
                    sound_play(sound_get("wheesh"),false,noone,1, 2)
                    sound_play(sound_get("punch"),false,noone,1, 0.6)
                    sound_play(sound_get("hextra"),false,noone,1, 1.4)
            	}
            
                if x < hit_player_obj.x {
                    x -= 2
                    hit_player_obj.x += 4
                } else {
                    x += 2
                    hit_player_obj.x -= 4 
                }
            }
            
            if GearBcd <= 20 + has_hit_player*10 && attack == AT_DSPECIAL_AIR{
                set_state(PS_IDLE)
                attack_end()
                destroy_hitboxes()
            }
        }
        
        if GearBcd > 0 && !hitstop{
            GearBcd --
        }
        if GearBcd2 > 0 && !hitstop{
            GearBcd2 --
        }
        
        if (hit_player_obj.state_cat == SC_HITSTUN or state_cat == SC_HITSTUN) && !hitstop{
            if GearBcd2 == 0{
                GearBat = 0
                GearBat2 = 0
                if GearB < 6{
                   GearB += 1
                   XX = spawn_hit_fx(x,y-36, 302)
                   XX.pause = 6
                   sound_play(sound_get("hextra"),false,noone,0.4, 3)
                }
            }
            GearBcd2 = 15
        }
      
        
        if GearBatcd > 0{
        	GearBatcd --
        	if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == GearBat{
        		set_state(PS_PRATFALL)
        	}
        }
        if GearBat2cd > 0{
        	GearBat2cd --
        	if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == GearBat2{
        		set_state(PS_PRATFALL)
        	}
        }
        
        if GearB >= 3 && shield_down && GearBcd <= 0 && !hitstop && (hit_player_obj.state_cat == SC_HITSTUN){
        	if GearBat != 0{
                GearBat2 = attack
        	} else {
        	    GearBat = attack
        	}
        	GearBat2cd = 60
            GearBatcd = 60
        	has_hit_player = false
        	GearAir = 1
            hitstop = 0
            old_vsp = 0
            old_hsp = 0
            attack_end() 
            destroy_hitboxes()
            djumps = 0
            shake_camera(4,6)
            GearB -= 3
            hsp = 0
            vsp = -6 * free 
            set_attack(AT_DSPECIAL_AIR)
            window = 3
            window_timer = 0
            GearBcd = 40
            spawn_hit_fx(x,y-36, Burst)
            invincible = true
            invince_time = 15
            sound_play(sound_get("hcine"),false,noone,0.65, 2)
            sound_play(sound_get("wheesh"),false,noone,1, 2)
            sound_play(sound_get("punch"),false,noone,1, 0.6)
            sound_play(sound_get("hextra"),false,noone,1, 1.4)
        }
        
        if GearB >= 6 && shield_down && GearBcd <= 0 && !hitstop && (hit_player_obj.state_cat != SC_HITSTUN){
        	has_hit_player = false
            hitstop = 0
            old_vsp = 0
            old_hsp = 0
            attack_end() 
            destroy_hitboxes()
            djumps = 0
            shake_camera(4,12)
            GearB = 0
            hsp = 0
            vsp = -6 * free 
            set_attack(AT_DSPECIAL_AIR)
            window = 1
            window_timer = 0
            GearBcd = 50
            spawn_hit_fx(x,y-36, Burst)
            invincible = true
            invince_time = 15
            sound_play(sound_get("hcine"),false,noone,0.65, 2)
            sound_play(sound_get("wheesh"),false,noone,1, 2)
            sound_play(sound_get("punch"),false,noone,1, 0.6)
            sound_play(sound_get("hextra"),false,noone,1, 1.4)
        }
    }
    
    if Gear == 1 && get_gameplay_time() >= 120 and state != PS_RESPAWN and state != PS_DEAD{
        if GearX == -1 {
            if get_player_damage( player ) < 45{
              
            }else if get_player_damage( player ) < 90 && GearXlv < 2{
              GearXlv = 2
              spawn_hit_fx(x,y-36, Xfactor)
              sound_play(sound_get("wheeshshort"),false,noone,0.8, 1)
              sound_play(sound_get("hcine"),false,noone,0.4, 1)
              shake_camera(2,6)
            }else if get_player_damage( player ) >= 90 && GearXlv < 3{
              GearXlv = 3
              spawn_hit_fx(x,y-36, Xfactor)
              sound_play(sound_get("wheeshshort"),false,noone,0.8, 0.5)
              sound_play(sound_get("hcine"),false,noone,0.6, 0.6)
              shake_camera(4,6)
            }
            
            if shield_down{
               GearX = 900
               shake_camera(4,6)
               spawn_hit_fx(x,y-36, Xfactor)
               XX = spawn_hit_fx(x,y-36, 306)
               XX.pause = 6
               sound_play(sound_get("hcine"),false,noone,0.6, 0.6)
               sound_play(sound_get("hcine"),false,noone,0.6, 1)
               sound_play(sound_get("hextra"),false,noone,0.6, 1)
            }
        } else {
            if GearX > 0{
               if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
               	if hit_player_obj.state_cat == SC_HITSTUN && !hitstop{
               		if abs(x - hit_player_obj.x) > 30{
               			x += GearXlv - (x > hit_player_obj.x)*2*GearXlv
               		}
               		if abs(y - hit_player_obj.y) > 30 && free{
               			y += GearXlv - (y > hit_player_obj.y)*2*GearXlv
               		}
               		
               		if abs(x - hit_player_obj.x) > 60{
               			x += 1 - (x > hit_player_obj.x)*2
               		}
               		if abs(y - hit_player_obj.y) > 60 && free{
               			y += GearXlv - (y > hit_player_obj.y)*2*GearXlv
               		}
               		
               		if abs(x - hit_player_obj.x) > 120{
               			x += 1 - (x > hit_player_obj.x)*2
               		}
               		if abs(y - hit_player_obj.y) > 120 && free{
               			y += GearXlv - (y > hit_player_obj.y)*2*GearXlv
               		}
               	}
               	 if has_hit_player && hitstop < 10 && (jump_pressed) && djumps < max_djumps{
               	 	set_state(PS_IDLE)
               	 	hitstop = 0
               	 }
               }
               
               if state != PS_HITSTUN && state != PS_HITSTUN_LAND{
                   x += round(hsp/(5 - GearXlv))
               }
               if !hitstop GearX --
               if GearX == 1{
                   spawn_hit_fx(x,y-36, Xfactor)
                   XX = spawn_hit_fx(x,y-36, 306)
                   XX.pause = 12
                   sound_play(sound_get("hcine"),false,noone,0.6, 1.4)
               }
               if GearX < 120 && get_gameplay_time() % 20 == 0{
                   spawn_hit_fx(x,y-36, Xfactor)
                   XX = spawn_hit_fx(x,y-36, 302)
                   XX.pause = 6
                   sound_play(sound_get("hcine"),false,noone,0.25, 4)
               }
               if get_gameplay_time()% 20 == 0 && GearXlv = 1{
                   spawn_hit_fx(x,y-36, Xfac)
                   sound_play(sound_get("wheeshshort"),false,noone,0.5, 3)
               }
               if get_gameplay_time()% 14 == 0 && GearXlv = 2{
                   spawn_hit_fx(x,y-36, Xfac)
                   sound_play(sound_get("wheeshshort"),false,noone,0.5, 3)
               }
               if get_gameplay_time()% 6 == 0 && GearXlv = 3{
                   spawn_hit_fx(x,y-36, Xfac)
                   sound_play(sound_get("wheeshshort"),false,noone,0.5, 3)
               }
            }
        }
  
    }
    }

}



if "customtech" not in self{
	customtech = 0
	techcd = 0
}

if free {
    if !hitstop && state_cat == SC_HITSTUN{
        customtech += 1   
    }
}else{
	if customtech > 0 customtech --
    if (state_cat == SC_HITSTUN) && customtech > 10 && techcd <= 0 {
        // if jump_down {
        //     sound_play(sound_get("tinythud"),false,noone,0.6, .5 + random_func(1,30,true)/100)
        //     sound_play(sound_get("wheeshshort"),false,noone,0.6, 3)
        //     quickfx = spawn_hit_fx(x,y-4, 301)
        //     quickfx.pause = 4
        //     // set_state(PS_JUMPSQUAT)
        //     customtech = 0
        //     hsp = (right_down - left_down)*6
        //     state_timer = 0
        //     techcd = 10
        // }
        if (right_down - left_down) != 0 {
            sound_play(sound_get("tinythud"),false,noone,0.6, .5 + random_func(1,30,true)/100)
            sound_play(sound_get("wheeshshort"),false,noone,0.6, 3)
            quickfx = spawn_hit_fx(x,y-4, 301)
            quickfx.pause = 2
            // set_state(PS_LAND)
            customtech = 0
            spr_dir = (right_down - left_down)
            state_timer = -6
            techcd = 30
        }
    }
}

if techcd > 0 {
	if techcd >= 20{
		x += spr_dir*(techcd - 20) - hsp
		vsp = 4
	}
    techcd --
} 


with oPlayer {
	if "Gear" in self{
        has_airdodge = false;
        can_shield = false;
        can_tech = false;
        can_wall_tech = false;
        parry_cooldown = 5;
        clear_button_buffer(PC_SHIELD_PRESSED);
        if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
         {
             set_state(PS_IDLE);
             sound_stop(asset_get("sfx_roll"));
         }
         
         if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
             set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
         }
	} else {

		if(state == PS_WAVELAND)
         {
          if hsp > 0{
          	hsp = 4
          }	
          if hsp < 0 {
          	hsp = -4
          }
         }
        if(state == PS_PARRY)
         {
         	if state_timer == 25{
         			old_vsp = 0
         			old_hsp = 0
         			hitpause = true
         			hitstop += 8
         			state_timer ++
         	}
         	if state_timer == 15{
         			old_vsp = 0
         			old_hsp = 0
         			hitpause = true
         			hitstop += 8
         			state_timer ++
         	}
          other.was_parried = false
         }
		if(state == PS_AIR_DODGE)
         {
         	// has_airdodge = false 
            // invincible = true
            // invince_time = 0
         		if state_timer == 15{
         			old_vsp = 0
         			old_hsp = 0
         			hitpause = true
         			hitstop += 30
         			state_timer ++
         		}
         }
         
		if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_TECH_GROUND)
         {
         	// if state == PS_TECH_BACKWARD state = PS_ROLL_BACKWARD
         	// if state == PS_TECH_FORWARD state = PS_ROLL_FORWARD
         	
         	if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD{
         		parry_cooldown = 15
         		if state_timer == 16{
         			old_vsp = 0
         			old_hsp = 0
         			hitpause = true
         			hitstop += 30
         			state_timer ++
         		}
         	}
         	
         	if state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD{
         		parry_cooldown = 15
         		if state_timer == 20{
         			old_vsp = 0
         			old_hsp = 0
         			hitpause = true
         			hitstop += 25
         			state_timer ++
         		}
         	}
         	if state == PS_TECH_GROUND{
         		parry_cooldown = 15
         		if state_timer == 12{
         			old_vsp = 0
         			old_hsp = 0
         			hitpause = true
         			hitstop += 20
         			state_timer ++
         		}
         	}
            // invincible = true
            // invince_time = 0
         }
		
	}
      
 }    
