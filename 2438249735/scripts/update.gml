///
if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if get_gameplay_time() < 60 {
	if get_gameplay_time() == 1 {
		    	     sound_play(sound_get("steath"),false,noone,1)
		    	              	sound_play(asset_get("sfx_bird_nspecial"),false,noone,0.4)
	}
	
	visible = false 
	
	if  get_gameplay_time() % 6 == 0 {
	              spawn_hit_fx(x + 300*spr_dir  - get_gameplay_time()*5*spr_dir , y - 20, lpar2)   
	}
    	if  get_gameplay_time() % 10 == 0 {
	              spawn_hit_fx(x + 300*spr_dir  - get_gameplay_time()*5*spr_dir , y - 20, lpar3)   
	}          
		if  get_gameplay_time() % 6 == 3 {
	              spawn_hit_fx(x + 300*spr_dir  - get_gameplay_time()*5*spr_dir , y - 20, lpar5)   
	}
                  
}

if get_gameplay_time() == 60 {
	
	    visible = true
    
      spawn_hit_fx(x  , y - 30, lpar1)              
                  spawn_hit_fx(x , y - 30, lpar4)   
                  
                  spawn_hit_fx(x - 30  , y - 30, lpar4)              
                  spawn_hit_fx(x + 30  , y - 30, lpar4)   
                  spawn_hit_fx(x  , y - 40, shit5)  
                  

                  sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.4)
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


if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
	
	    if invitimer > 0 && visible = false {
                 visible = true
    
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
	
	if has_hit_player && hitpause && get_gameplay_time() % 4 == 0 && invitimer == 0 && window != 4{
		create_hitbox(AT_NSPECIAL, 3, hit_player_obj.x, hit_player_obj.y - 40)
	}
	
	if invitimer != 0 && attack != AT_EXTRA_1 {
	 
	 
	 switch state_timer % 3 + 1 {
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
	if invitimer != 0 {
	invitimer += 1
    
    visible = false
	         
            if get_gameplay_time() % 3 == 0 && (left_down or right_down) {
           	 switch get_gameplay_time() % 2 {
    	         case 0:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar2)
    	         break ;
          
    	         case 1:
	 	         spawn_hit_fx(x - 20 + random_func(2,40,true) , y + 12 - random_func(3,40,true), lpar3)
    	         break ;
           	 }
          }
          
          if get_gameplay_time() % 15 == 0 && !left_down and !right_down {
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


if invitimer >= 90 {
	invitimer = 0
    visible = true
    
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
	    visible = true
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
	     draw_indicator = true
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
