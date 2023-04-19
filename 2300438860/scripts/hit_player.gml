///

if cosmetic = 1 {
finishercd = 0
} else {
finishercd = 99999	

if my_hitboxID.kb_scale <= .4 {
	sound_play(asset_get("sfx_blow_weak1"),false,noone,1,1)
} else if my_hitboxID.kb_scale <= .6 {
	sound_play(asset_get("sfx_blow_medium2"),false,noone,1,1)	
} else  {
	sound_play(asset_get("sfx_blow_heavy1"),false,noone,1,1)	
	
}

if my_hitboxID.attack == AT_DAIR {
	sound_play(asset_get("sfx_blow_heavy1"),false,noone,1,1)	
	
}

}

if my_hitboxID.type == 1 {
	 with (asset_get("pHitBox")) {
         if player_id == other.id && damage == 1.005 {
         	 destroyed = true
         }
    }
}

if cosmetic = 1 {
switch my_hitboxID.attack {

       case AT_UTHROW :
          if my_hitboxID.hbox_num <= 6 {
       		if my_hitboxID.hbox_num < 6 {
       			sound_play(sound_get("slice"),false,noone,1,1)
       			 var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		} else {
       			sound_play(sound_get("slice"),false,noone,1,0.6)
       			var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		}
          }
       break;
       
       case AT_USPECIAL :
          if my_hitboxID.hbox_num <= 4 {
       		sound_play(sound_get("slicel"),false,noone,1,1)
          }
       break;
       
       case AT_JAB :
       		sound_play(sound_get("slice"),false,noone,1,1.1)
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       break;

       case AT_FTILT :
       		sound_play(sound_get("slice"),false,noone,1,1.1)
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       break;

       case AT_UTILT :
       		sound_play(sound_get("slice"),false,noone,1,1.1)
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		 var hfx3 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       		 hfx3.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
       break;
       
       case AT_NAIR :
       sound_play(sound_get("slice"),false,noone,1,1.1)
       
       if my_hitboxID.damage == 3 {
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       }
       
      if my_hitboxID.damage > 3 {
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		 var hfx3 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       		 hfx3.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
       }
       
      break; 
       
       case AT_FAIR :
       sound_play(sound_get("slice"),false,noone,1, 0.9)
       
       if my_hitboxID.damage == 9 {
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
			
       } else {
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       }
       
       break;  
       
       case AT_DAIR :
       sound_play(sound_get("slice"),false,noone,1, 0.9)
       
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
      
      break;  

	   case AT_BAIR :
       sound_play(sound_get("slice"),false,noone,1, 1)
       
       if my_hitboxID.damage > 7 {
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
			
       } else {
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       }
       
       break;  

	   case AT_UAIR :
       sound_play(sound_get("slice"),false,noone,1, 1)
       
       if my_hitboxID.damage > 7 {
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		 var hfx3 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       		 hfx3.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
       } else {
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       }
       
       break;  
       
       case AT_FSPECIAL :
       
       
       if my_hitboxID.type == 1{
       	sound_play(sound_get("slice"),false,noone,1, 1)
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		 var hfx3 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       		 hfx3.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
       } else {
       	sound_play(asset_get("sfx_waterhit_medium"),false,noone,1.2, 0.8)

       }
       
       break;
       
       case AT_DATTACK :
       sound_play(sound_get("slice"),false,noone,1, 0.9)
       
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
      
      break; 
   
       case AT_USTRONG :
       sound_play(sound_get("slice"),false,noone,1, 0.9)
       
           	var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 60, fxslash3 )
			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
	        var hfx2 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash1 )
			hfx2.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
      
      break; 
      
      
      case AT_FSTRONG :
       
       
       if my_hitboxID.damage > 7 {
       	sound_play(asset_get("sfx_waterhit_heavy"),false,noone,1.2, 0.8)
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       		 var hfx3 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       		 hfx3.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4 + 90
			
       } else {
       	     sound_play(sound_get("slice"),false,noone,1, 1)
       	     var hfx1 = spawn_hit_fx( hit_player_obj.x,hit_player_obj.y - 40, fxslash3 )
       			hfx1.draw_angle = random_func(9,360,true) + my_hitboxID.x* 4
       }
       
       break;  
      
}
}

if cosmetic = 1{
if get_player_color(player) = 1 {

	if songcd <= 70 {
		songcd = 121
			songplay += 1
	}
}







if move_cooldown[AT_EXTRA_1] > 0 && move_cooldown[AT_EXTRA_2] > 0 && move_cooldown[AT_EXTRA_3] == 0{
move_cooldown[AT_EXTRA_3] = 36
dx3 = hit_player_obj.x
dy3 = hit_player_obj.y   
cdamage3 = ((my_hitboxID.damage)*(1 + random_func(1, 4, true)/10) +
    (get_player_damage(hit_player_obj.player)*my_hitboxID.damage*my_hitboxID.damage))*(dmgmul + 1)
if cdamage3 > 9999 {
    cdamage3 = 9999
}
}

if move_cooldown[AT_EXTRA_1] > 0 && move_cooldown[AT_EXTRA_2] == 0{

cdamage2 = ((my_hitboxID.damage)*(1 + random_func(1, 4, true)/10) +
    (get_player_damage(hit_player_obj.player)*my_hitboxID.damage*my_hitboxID.damage))*(dmgmul + 1)
    move_cooldown[AT_EXTRA_2] = 36
if cdamage2 > 9999 {
    cdamage2 = 9999
}
dx2 = hit_player_obj.x
dy2 = hit_player_obj.y
}




if move_cooldown[AT_EXTRA_1] == 0 {

cdamage1 = ((my_hitboxID.damage)*(1 + random_func(1, 4, true)/10) +
(get_player_damage(hit_player_obj.player)*my_hitboxID.damage*my_hitboxID.damage))*(dmgmul + 1)
if cdamage1 > 9999 {
    cdamage1 = 9999
}    
move_cooldown[AT_EXTRA_1] = 36
dx1 = hit_player_obj.x
dy1 = hit_player_obj.y
}
}


if my_hitboxID.attack != AT_NSPECIAL and my_hitboxID.attack != AT_USPECIAL and  my_hitboxID.attack != AT_FSPECIAL and  my_hitboxID.attack != AT_DSPECIAL and  my_hitboxID.attack != AT_UTHROW
&& attackbar != 0 {
    attackbar = 1
        //spawn_hit_fx (x,y,lighten3)
        
        hitstop += my_hitboxID.hitpause/2
        hit_player_obj.hitstop += my_hitboxID.hitpause/2
        barpause = 0
        move_cooldown[AT_NSPECIAL] = 0
  
                
if dmgmul == 1.5 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , floor(enemy_hitboxID.damage/2.5) + 1)
         }	
    sound_play(sound_get("hcine"),false,noone,0.6)
        dmgmul = 0
    spawn_hit_fx (hit_player_obj.x  + 10*spr_dir + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , shit1)
}

if dmgmul == 2 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , floor(enemy_hitboxID.damage/2) + 2)
         }	
    sound_play(sound_get("hcine"),false,noone,0.9)
        dmgmul = 0
     spawn_hit_fx (hit_player_obj.x + 10*spr_dir  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , shit4)    
}

if dmgmul == 3 {
	   	 with hit_player_obj {
                 take_damage( player, -1 , floor(enemy_hitboxID.damage/1.5) + 4)
         }	
    sound_play(sound_get("hcine"),false,noone,1.2)
        dmgmul = 0
     spawn_hit_fx (hit_player_obj.x + 10*spr_dir  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , shit5)    
}

}
