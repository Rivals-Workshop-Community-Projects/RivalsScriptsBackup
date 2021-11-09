//
if (my_hitboxID.type == 1 && hit_player_obj.free == false) {
     hit_player_obj.y -= 1;
}



var dmdamge = floor(my_hitboxID.damage/3)

if my_hitboxID.hit_priority == 9  {
   
   move_cooldown[AT_USPECIAL] = my_hitboxID.damage*2
   
   set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_HSPEED, -8 + random_func(6,17,true));
   set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_VSPEED, -8 + random_func(5,17,true));

   
 
   
  if my_hitboxID.damage > 5 {  
      create_hitbox(AT_USPECIAL,9,hit_player_obj.x,hit_player_obj.y - 40 )
  if bragesub >= 50 or ragemode{  
   smallfunnyslashfx = hit_fx_create( sprite_get( "slash" ), floor(10 + min(20, hitstop )) );

   actualworkdamn = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 60, smallfunnyslashfx )
   
   actualworkdamn.depth = -1
   
   actualworkdamn.draw_angle = random_func(9,4,true)*90 
  }
  } else {
      
      
  }
  
  if bragesub >= 50 or ragemode{
      with hit_player_obj {
             take_damage(player, -1, dmdamge)
         }
    sound_play(sound_get("slicew1"),false,noone,.3 + my_hitboxID.damage/15 , 2.3 - min((hitstop*hitstop)/120 , 1.8) )
  }
        sound_play(sound_get("slice"),false,noone, .3 + my_hitboxID.damage/15, 1 )
    
} else {
    
    bragesub -= 5
    
    set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_HSPEED, -8 + random_func(6,17,true));
    set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_VSPEED, -8 + random_func(5,17,true));
    create_hitbox(AT_USPECIAL,10,hit_player_obj.x,hit_player_obj.y - 40 )
    
    if my_hitboxID.attack == AT_FAIR {
        
    if bragesub >= 50 or ragemode {    
        with hit_player_obj {
             take_damage(player, -1, dmdamge)
         }
    sound_play(sound_get("slap"),false,noone,.6, 2 - min((hitstop*hitstop)/100 , 1.5)  )
    }
    sound_play(sound_get("slap"),false,noone,.4, 1)
    
    } else {
       if bragesub >= 50 or ragemode {   
       sound_play(sound_get("slam2"),false,noone, .5 + my_hitboxID.damage/20, 2 - min((hitstop*hitstop)/100 , 1.5)  )
       sound_play(sound_get("slam1"),false,noone, .5 + my_hitboxID.damage/20)
       
         with hit_player_obj {
             take_damage(player, -1, dmdamge)
         }
         
       } else {
        sound_play(sound_get("slam1"),false,noone, .5 + my_hitboxID.damage/20, 2 - min((hitstop*hitstop)/100 , 1.5)  )   
       }
       
       
    }
    
    
}