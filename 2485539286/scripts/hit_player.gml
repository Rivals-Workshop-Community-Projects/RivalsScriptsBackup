///

///sound_play(asset_get("sfx_blow_heavy2"),false,noone,99);
///sound_play(asset_get("sfx_blow_heavy1"),false,noone,99);
///sound_play(asset_get("sfx_blow_medium2"),false,noone,99);
///sound_play(asset_get("sfx_blow_medium1"),false,noone,99);
///sound_play(asset_get("sfx_blow_medium3"),false,noone,99);
///sound_play(asset_get("sfx_blow_weak2"),false,noone,99);
///sound_play(asset_get("sfx_blow_weak1"),false,noone,99);


if hit_player_obj != self  {
move_cooldown[AT_EXTRA_2] = 0 

}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num <= 2{ 
 thundervictim = hit_player_obj
 create_hitbox(AT_DSPECIAL,3,hit_player_obj.x,hit_player_obj.y)
	
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 3{ 
sound_play(sound_get("cheese"),false,noone,.8,1)	
 sound_play(asset_get("sfx_blow_heavy1"),false,noone,1,0.6)
  sound_play(asset_get("sfx_ori_sein_fstrong_finalhit"),false,noone,.8)
 shake_camera(6,16)
    var sp1 = spawn_hit_fx( hit_player_obj.x , hit_player_obj.y + 40  , fxspark1)
        sp1.draw_angle = 90
        spawn_hit_fx( hit_player_obj.x , hit_player_obj.y, fxblow1)
        
	
}
	
	
if my_hitboxID.attack != AT_USTRONG && my_hitboxID.type == 1{ 
	 
	move_cooldown[AT_USTRONG] = 0
}

  if random_func(4,3,true) == 0 {
    var sp1 = spawn_hit_fx( hit_player_obj.x + 45*spr_dir* (1 - random_func(9,2,true)) , hit_player_obj.y -  20 - 20 *(1 - random_func(9,2,true)) , fxspark1)
        sp1.draw_angle = random_func(9,2,true)*180
  }
 
  if random_func(4,3,true) == 1 {
    var sp2 = spawn_hit_fx( hit_player_obj.x  + 30*spr_dir* (1 - random_func(9,2,true)) , hit_player_obj.y - 40 - 20*(1 - random_func(9,2,true)) , fxspark2)
        sp2.draw_angle = random_func(9,2,true)*180
  }
    
  if random_func(4,3,true) == 2 {
    var sp3 = spawn_hit_fx( hit_player_obj.x + 50*spr_dir* (1 - random_func(9,2,true)) , hit_player_obj.y - 50 + 20*(1 - random_func(9,2,true)) , fxspark3)
        sp2.draw_angle = random_func(9,2,true)*180
  }

  	    sound_stop(asset_get("sfx_absa_dattack"))    
sound_play(asset_get("sfx_absa_dattack"),false,noone, 0.6 + my_hitboxID.damage/30, 0.9 + (random_func(10,4,true)/10))

			
if my_hitboxID.hit_effect_x == 16 {
    state_timer = 0
 sound_play(asset_get("sfx_clairen_fspecial_slash"),false,noone, 1  )
   
  
if hhh == 3 {    
	sound_stop(sound_get("mhit1"))  
 sound_play(sound_get("mhit1"),false,noone, 0.2 + my_hitboxID.damage/40)
} 

if hhh == 2{
	sound_stop(sound_get("mhit2"))  
  sound_play(sound_get("mhit2"),false,noone, (0.2 + my_hitboxID.damage/40))  
}

			var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash1 )
			hfx1.draw_angle = my_hitboxID.kb_angle/2 - 20 + random_func(9,40,true)
			
			
if hhh == 1 && my_hitboxID.type == 1{
    hhh = 0
    
    
    
    		var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash1 )
			hfx1.draw_angle = 90 + my_hitboxID.kb_angle/2 - 20 + random_func(9,40,true)
			
    	spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash2 )
		
			
    with hit_player_obj {
    	invincible = true
    	invince_time = 15
        take_damage(player,-1,5)
    }
    
    sound_play(sound_get("mhit2"),false,noone, (0.2 + my_hitboxID.damage/40),0.8)  
    sound_play(sound_get("mhit3"),false,noone, 0.35)  

   	create_hitbox(AT_EXTRA_1,1, my_hitboxID.x, my_hitboxID.y)

}

if my_hitboxID.type == 2{
        sound_play(sound_get("mhit2"),false,noone, (0.3 + my_hitboxID.damage/40),0.8)  
}

if my_hitboxID.type == 1 && hhh > 1{
    hhh -= 1
}


}

if move_cooldown[AT_EXTRA_1] > 32  {
    move_cooldown[AT_EXTRA_1] = 32
}



switch my_hitboxID.attack {
    
     case AT_DSTRONG:
     
     
          if my_hitboxID.hbox_num == 1 {
          	
          	sound_play(asset_get("sfx_clairen_spin"))
             thundervictim = hit_player_obj

             with (pHitBox) {
             	if player_id == other.id {
             		if attack == AT_DSTRONG and hbox_num == 1 {
             			hit_priority = 0 
                      sentrymode = 1
                      hitbox_timer = 0
             		}
                }
             }
          }
          

          
     break ;
     
    case AT_USTRONG:
    
        
          if my_hitboxID.hbox_num == 1{
             move_cooldown[AT_USTRONG] = state_timer/2 + 60
             thundervictim = hit_player_obj
          }
          
          if my_hitboxID.hbox_num == 2  && thundervictim.super_armor = false{
             thundervictim.y += 20
          }

          
     break ;
     
    case AT_FSTRONG:
           if my_hitboxID.hbox_num == 2 {
             spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash2 )
          }
          
           if my_hitboxID.hbox_num == 3 {
             var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash1 )
			hfx1.draw_angle = random_func(9,360,true)
          }
          
     break ;
     
    
    case AT_DSPECIAL :
     spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash2 )
     break ;
     
     
     case AT_EXTRA_1:
         my_hitboxID.hsp /= 3
         my_hitboxID.vsp = -7
            spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash2 )
            
     break ;
    
    
    case AT_FSPECIAL:
     if my_hitboxID.hbox_num == 1 {
        sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7);
     }
     
     if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,.85);
     } 
     
    break ;
    
    case AT_USPECIAL:
     if my_hitboxID.hbox_num == 1 {
        sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7);
     }
     
     if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,.85);
     } 
     
    break ;
    
    
    case AT_JAB:
     if my_hitboxID.damage == 2 {
         sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7, 0.95 + (random_func(10,4,true)/15));
     } else {
          sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,.85);
     }
    
    break ;
    
    case AT_FTILT:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.7);
     }
    

     
    break ;
    
     case AT_UTILT:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7);
     }

    break ;
    
    
    case AT_DTILT:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.7);
     }
     
    
    break ;
    
    
    case AT_DATTACK:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.7);
     }
    
     if my_hitboxID.hbox_num == 2 or  my_hitboxID.hbox_num == 3  {
         sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7);
     }
     
    break ;
    
    case AT_NAIR:
        
        if my_hitboxID.hbox_num <= 3 {
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.7);
     } else {
         sound_play(asset_get("sfx_shovel_hit_med2"),false,noone,0.7);
     }
        }
    
    break ;
    
    
    
    case AT_FAIR:
        
        if my_hitboxID.hbox_num == 1 {

        }
    
    break ;
    
 
 
     case AT_BAIR:
        
        if my_hitboxID.hbox_num == 1 {
              sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.7);
        }  
        
         if my_hitboxID.hbox_num == 2 {
              sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7);
        }  
        
    break ;
    
    
     case AT_UAIR:
        move_cooldown[AT_USPECIAL_GROUND] += hitstop
        if my_hitboxID.hbox_num == 1 {
              sound_play(asset_get("sfx_shovel_hit_heavy2"),false,noone,0.7);
        }  
        
         if my_hitboxID.hbox_num == 2 {
              sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,0.7);
        }  
        
    break ;
    
    case AT_DAIR:
        
        if my_hitboxID.hbox_num == 1 {
              sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.7);
        }  
        
        
    break ;
    
    
}