///
if !instance_exists(hit_player_obj){

hit_player_obj = self

}




if move_cooldown[AT_USPECIAL_2] == 9 {
	spawn_hit_fx(x  , y - 40, shit5)  
	       	    spawn_hit_fx(x   , y - 30 , shit1)   
                spawn_hit_fx(floor(x + floor(choosen_dirx))/2   , floor(y + floor(choosen_diry))/2 - 30, 14)     
                spawn_hit_fx(floor(x + floor(choosen_dirx*8))/9   , floor(y + floor(choosen_diry*8))/9 - 30, 13)   
}

if invis == true and !attacking {
   move_cooldown[AT_FSPECIAL_2] = 20	
}

if get_gameplay_time() < 50 {
	if get_gameplay_time() <= 3 {
	                 sound_stop(sound_get("steath"))
		    	     sound_stop(asset_get("sfx_bird_nspecial"))
		    	     
		    	     sound_play(sound_get("steath"),false,noone,1)
		    	     sound_play(asset_get("sfx_bird_nspecial"),false,noone,1,1)
		    	     
		    	     if get_player_color(player) == 18 {
		    	     	sound_stop(sound_get("JCintro"))
		    	     	sound_play(sound_get("JCintro"),false,noone,2.3,1)
		    	     }
	}
	
	draw_indicator = false 
	
	
	if  get_gameplay_time() % 4 == 0 {
	              spawn_hit_fx(x + 200 - random_func(1,401,true) , y - 60 + 200 - random_func(2,401,true), lpar2)   
	}
	
	if  get_gameplay_time() % 4 == 3 {
	              spawn_hit_fx(x + 300 - random_func(1,151,true) , y - 60 + 300 - random_func(2,151,true), lpar2)   
	}
	
    if  get_gameplay_time() % 4 == 2 {
	              spawn_hit_fx(x + 100 - random_func(1,201,true) , y - 60 + 100 - random_func(2,201,true), lpar3)   
	} 
	
	if  get_gameplay_time() % 4 == 1 {
	              spawn_hit_fx(x + 200 - random_func(1,401,true) , y - 60 + 200 - random_func(2,401,true), lpar5)   
	}
                  
}

if get_gameplay_time() == 50 {
	
	if get_player_color(player) == 18 {
		    	     	sound_stop(sound_get("JCsteath"))
		    	     	sound_play(sound_get("JCsteath"),false,noone,2.4,1)
	}
		    	     
	shake_camera(4,4)
	
    spawn_hit_fx(x,y- 40,306)
	sound_play(asset_get("sfx_bird_downspecial_end"),false,noone,.7)
	
    
      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
                  

                  sound_play(asset_get("sfx_bird_downspecial"),false,noone,1,1.4)
                  sound_play(sound_get("steathend"),false,noone,1)
}

if hitpause && invitimer == -1{
	state_timer += 1
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if state == PS_LANDING_LAG or state == PS_PRATLAND or state == PS_PRATFALL {
	  invitimer = 0
}

if move_cooldown[AT_NSPECIAL_2] > 0 {
	if move_cooldown[AT_NSPECIAL_2] % 2 == 0 {
		x += 4
	} else {
		x -= 4
	}
	
}

if move_cooldown[AT_USTRONG_2] > 0 {
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 3 - random_func(1,6,true));
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -4 - random_func(2,4,true));
	create_hitbox(AT_NSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 40)
}

if move_cooldown[AT_DSTRONG_2] > 0 {
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0 - random_func(1,6,true));
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0.5);

	create_hitbox(AT_NSPECIAL, 3, x, y - 40)
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
	
	    if invitimer > 0 && invis = false {
                 invis = true
    move_cooldown[AT_EXTRA_3] = 10
      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
                  

                  sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.4)
                    sound_play(sound_get("steathend"),false,noone,1)
	    }
	    
	if hitpause {
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 3 - random_func(1,6,true));
		set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -4 - random_func(2,4,true));
	}
	
	if (has_hit_player && hitpause && get_gameplay_time() % 10 == 0 && invitimer == 0 && window != 4) or move_cooldown[AT_NSPECIAL_2] > 0{
		create_hitbox(AT_NSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 40)
	}
	
	
	if invitimer != 0 && attack != AT_EXTRA_1 {
	 
	 
	 switch state_timer % 3 + 1 && !hitpause {
    	case 1:
	 	spawn_hit_fx(x - 40 + random_func(2,80,true) , y - 16 - random_func(3,60,true), lpar2)
    	break ;
 
    	case 2:
	 	spawn_hit_fx(x - 40 + random_func(2,80,true) , y - 16 - random_func(3,60,true), lpar3)
    	break ;
    	    	
    	case 3:
	 	spawn_hit_fx(x - 40 + random_func(2,80,true) , y - 16 - random_func(3,60,true), lpar5)
    	break ;
	 }
	 
	 
	}
	
} else {
	attacking = false
			mask_index = sprite_get("stand_box");
	if invitimer != 0 {
	invitimer += 1
    draw_indicator = false
    invis = false
	         
            if (left_down or right_down) {
           	 switch get_gameplay_time() % 6 {
    	         case 3:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 6 - random_func(3,40,true), lpar2)
    	         break ;
          
    	         case 0:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 6 - random_func(3,40,true), lpar3)
    	         break ;
           	 }
          }
          
          if get_gameplay_time() % 9 == 0 && !left_down and !right_down {
           	 switch get_gameplay_time() % 2 {
    	         case 0:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar2)
    	         break ;
          
    	         case 1:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar3)
    	         break ;
           	 }
          }
	}
}


if invitimer >= 150 {
	invitimer = 0
    invis = true
    
      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
                  

                  sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.4)
                    sound_play(sound_get("steathend"),false,noone,1)
                    
}


if !free or state_cat == SC_HITSTUN {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
	if state_cat == SC_HITSTUN {
	    invis = true
   } 
}

if state == PS_WAVELAND && state_timer < 6 {
	
	   if state_timer == 1 {
   	     	clear_button_buffer( PC_SHIELD_PRESSED );
   }
   
	 switch state_timer % 3 + 1 {
    	case 1:
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar2)
    	break ;
 
    	case 2:
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar3)
    	break ;

    	case 3:
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar5)
    	break ;
    	
	 }
	
}
if (state == PS_WALL_JUMP){
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){

if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 13{
	     hsp = -5 * spr_dir
	 }
	 
	 if state_timer == 2{
	 sound_play(asset_get("sfx_bird_sidespecial_start"));	
	 }
	 if state_timer >= 13 and state_timer < 15 {
	     hsp = -30 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 18 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 18 {
	     hsp = 0
	 } else {
	 		 if state_timer % 2 == 0 {
	 		 	spawn_hit_fx(x - 20 + random_func(4,40,true) , y - 16 - random_func(5,40,true), lpar1)
	         }
	 
	 switch state_timer % 3 + 1 {
    	case 1:
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar2)
    	break ;
 
    	case 2:
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar3)
    	break ;
    	    	

    	case 3:
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar5)
    	break ;
	 }
	 }
	 
}

if state == PS_AIR_DODGE {

if state_timer < 12 {
	 draw_indicator = false
	 
	 if state_timer % 2 == 0 && state_timer > 3{
	 		 	spawn_hit_fx(x - 20 + random_func(4,40,true) , y - 16 - random_func(5,40,true), lpar1)
	 }
	 
	 switch state_timer % 3 + 1 {
    	case 1 :
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar2)
    	break ;
 
    	case 2 :
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar3)
    	break ;
    	    	
    	case 3 :
	 	spawn_hit_fx(x - 20 + random_func(2,40,true) , y - 16 - random_func(3,40,true), lpar5)
    	break ;
    	
	 }
	 
} else {
	if state_timer % 2 == 0 {
		 draw_indicator = false
	}
}

}

/*
if instance_number(oPlayer) == 2 {



if finisher > 0 {
with (asset_get("pHitBox")) {
if(player_id == other.id) {
   destroyed = true
}
}
	galx += floor((room_width/2 - galx)/22)
    galy += floor((room_height/2 - galy)/22)
}

if finishercd == 0 {
with oPlayer if (activated_kill_effect) {
  if hit_player_obj == other {
  	with other {
  		galx = x
        galy = y
        
  	    finisher = 60 
  	    finishercd = 120 
  	    finisherinc = 0
  	}
  }
}
}


if finisher = 60 {
	
	if get_player_color(player) == 18 {
		sound_stop(sound_get("JCsteath"))
		sound_stop(sound_get("JCsteathend"))
		    sound_play(sound_get("RKO"),false,noone,2)
	}
		
	spawn_hit_fx(x,y,lighten)
       sound_play(sound_get("tstrong"),false,noone,0.4)
       sound_play(sound_get("grassblade"),false,noone,1)
    

	
}

if finisher = 40 {
    sound_play(sound_get("tstrong"),false,noone,0.6)
         sound_play(asset_get("sfx_plant_ready"))
                 sound_play(asset_get("sfx_crunch"),false,noone,1.4)
}

if finisher = 20 {
    sound_play(sound_get("tstrong"),false,noone,1)
         sound_play(asset_get("sfx_crunch"),false,noone,3)
}

 if finisher > 0{
 	           
 	           hitpause = true
 			hitstop = 5
		old_hsp = hsp
		old_vsp = vsp
		hit_player_obj.hitstop = 5
		
	finisher -= 1
	if finisherinc < 24 {
	finisherinc += 1
	}
}


}

if finishercd != 0 &&  hit_player_obj.state_cat == SC_HITSTUN && !hitpause{
	
	
		
	spawn_hit_fx(hit_player_obj.x - 40 + random_func(3,80,true) , hit_player_obj.y - 16 - random_func(2,60,true), lpar5)
	
			 switch random_func (1,5,true) + 1 {
    	case 1:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(3,80,true) , hit_player_obj.y - 16 - random_func(2,60,true), lpar1)
    	break ;
 
    	case 2:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(3,80,true) , hit_player_obj.y - 16 - random_func(2,60,true), lpar2)
    	break ;
    	    	
    	case 3:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(3,80,true) , hit_player_obj.y - 16 - random_func(2,60,true), lpar3)
    	break ;
    	
    	case 4:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(3,80,true) ,hit_player_obj. y - 16 - random_func(2,60,true), lpar4)
    	break ;
    	
    	case 5:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(3,80,true) , hit_player_obj.y - 16 - random_func(2,60,true), lpar5)
    	break ;
	 }
	 
		 switch state_timer % 5 + 1 {
    	case 1:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(2,80,true) , hit_player_obj.y - 16 - random_func(3,60,true), lpar1)
    	break ;
 
    	case 2:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(2,80,true) , hit_player_obj.y - 16 - random_func(3,60,true), lpar2)
    	break ;
    	    	
    	case 3:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(2,80,true) , hit_player_obj.y - 16 - random_func(3,60,true), lpar3)
    	break ;
    	
    	case 4:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(2,80,true) ,hit_player_obj. y - 16 - random_func(3,60,true), lpar4)
    	break ;
    	
    	case 5:
	 	spawn_hit_fx(hit_player_obj.x - 40 + random_func(2,80,true) , hit_player_obj.y - 16 - random_func(3,60,true), lpar5)
    	break ;
	 }
} 

*/