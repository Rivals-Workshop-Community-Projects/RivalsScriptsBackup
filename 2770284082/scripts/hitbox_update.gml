//


if attack == AT_NSPECIAL && hbox_num == 2 {
    if hitbox_timer == 1 {
        p1x = hit_fx_create( sprite_get( "spark1" ), 12);
        sprite_change_offset("spark1", 5, 5);
        
        p2x = hit_fx_create( sprite_get( "spark2" ), 12);
        sprite_change_offset("spark2", 5, 5);
        
        p3x = hit_fx_create( sprite_get( "spark3" ), 12);
        sprite_change_offset("spark3", 30, 30);
    }
    
  if hitbox_timer % 2 == 0 {    
   spawn_hit_fx(x - 10 + random_func(3,20,true), y + vsp - 10 + random_func(4,20,true),p2x) 
  } else {
   spawn_hit_fx(x - 10 + random_func(3,20,true), y + vsp - 10 + random_func(4,20,true),p1x) 
  }
   if  hitbox_timer == 60 {
       destroyed = 1
   }
   if hitbox_timer < 40 {
       vsp -= 0.1
       hsp /= 1.03
   } else {
       if hitbox_timer == 40 {
       spr_dir *= -1
       }
       hsp += 0.1*spr_dir
       vsp /= 1.01
   }
       
  if player_id.reversed == 1 {
      destroyed = true 
      create_hitbox(AT_NSPECIAL,4,x,y)
      with player_id {
          sound_stop(cur_sound)
          cur_sound = sound_play(sound_get("v_taow"),false,noone,.9,1.05 - random_func(1,10,true)/100)
      }
  }
}


if attack == AT_NSPECIAL && hbox_num == 4 {
     if hitbox_timer == 1 {
        p1x = hit_fx_create( sprite_get( "spark1" ), 12);
        sprite_change_offset("spark1", 5, 5);
        
        p2x = hit_fx_create( sprite_get( "spark2" ), 12);
        sprite_change_offset("spark2", 5, 5);
        
        p3x = hit_fx_create( sprite_get( "spark3" ), 12);
        sprite_change_offset("spark3", 30, 30);
    }
    
  if hitbox_timer % 2 == 0 {    
   spawn_hit_fx(x - 10 + random_func(3,20,true), y + vsp - 10 + random_func(4,20,true),p2x) 
  } else {
   spawn_hit_fx(x - 10 + random_func(3,20,true), y + vsp - 10 + random_func(4,20,true),p1x) 
  }
  
  if hitbox_timer < 40 {
       vsp -= 0.1
       hsp -= 0.6*spr_dir
   } else {
       if hitbox_timer == 40 {
       spr_dir *= -1
       }
       hsp += 0.6*spr_dir
       vsp /= 1.01
   }
  
    if  hitbox_timer == 65 {
       destroyed = 1
   }
    
}