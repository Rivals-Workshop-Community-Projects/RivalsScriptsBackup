//
/*
with (asset_get("new_dust_fx_obj")) {

    
    if player == other.player && dust_fx != 24 && dust_fx != 22 && dust_fx != 23 && dust_fx != 21  && dust_fx != 13 {
        dust_length = 0;
    }
    
    
}
*/



sprite_index = sprite_get("anypercent")
  
if state == PS_SPAWN {
  
   if get_gameplay_time() == 2 {
   	 move_cooldown[AT_EXTRA_2] = 200 + floor(x/10)
   	  move_cooldown[AT_EXTRA_3] = 260 + floor(x/10)
       sound_play(asset_get("sfx_bird_nspecial"))
       sound_play(asset_get("sfx_holy_tablet_appear"))
   }
  
   if get_gameplay_time() < 60 {
       
       image_index = 0 
       draw_y = -1200 + get_gameplay_time()*20
       
   } else {
       image_index = 1 
   }
   
   if get_gameplay_time() == 60 {
       shake_camera(10,10)
       set_state(PS_PRATLAND)
       sound_play(sound_get("hstrong"))
       sound_play(sound_get("cheese"))
   }
   
} else {
    
    if move_cooldown[AT_EXTRA_2] <= 0 {
        create_hitbox(AT_DSPECIAL,2,room_width/2 - 300 + random_func(1,601,true), room_height/2 - 400)
        move_cooldown[AT_EXTRA_2] = 30 + random_func(player,300,true)
        sound_play(sound_get("fspec2"),false,noone,0.6)
    }
    
     if move_cooldown[AT_EXTRA_3] <= 0 {
         var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id
		sound_play(sound_get("fspec"))	
		spawn_hit_fx(hit_player_obj.x - 300*spr_dir, hit_player_obj.y - 300 ,304)
		create_hitbox(AT_DSPECIAL,8, hit_player_obj.x - 300*spr_dir, hit_player_obj.y - 300 )
		
         move_cooldown[AT_EXTRA_3] = 90 + random_func(3,100,true)
     }
         
   if hitstop > 15 {
       hitstop = 15
   }

       
    if state_cat == SC_HITSTUN {
        set_state(PS_IDLE_AIR)
    }
    
    if y + vsp < 0 {
    	move_cooldown[AT_TAUNT] = 0
        y = 0
        vsp += 5
        randomhurt += 1
    }
    
    if y + vsp > room_height {
    	move_cooldown[AT_TAUNT] = 0
       randomhurt += 1
        shake_camera(10,10)
        if x < room_width/2 {
            hsp = -16
        } else {
            hsp = 16
        }
        
        vsp = -26
            spawn_hit_fx(x,y - 20, exp2)
                sound_stop(sound_get("sfx_yuuto_explosion"))
            sound_play(sound_get("sfx_yuuto_explosion"),false,noone, 1.2,
            1.3 - random_func(1,20,true)/100)
            create_hitbox(AT_DSPECIAL,1,x,y)
    }
    
    if x + hsp > room_width or x + hsp < 0 {
    	move_cooldown[AT_TAUNT] = 0
    	randomhurt += 1
        shake_camera(10,10)
        if x < room_width/2 {
            hsp = 16
        } else {
            hsp = -16
        }
            spawn_hit_fx(x,y - 20, exp2)
                sound_stop(sound_get("sfx_yuuto_explosion"))
            sound_play(sound_get("sfx_yuuto_explosion"),false,noone, 1.2,
            1.3 - random_func(1,20,true)/100)
            create_hitbox(AT_DSPECIAL,1,x,y)
        vsp = -16
    }
    
    if !free {

        
        if state != PS_PRATLAND {
            set_state(PS_PRATLAND)
            state_timer = 1
        }
        
        if state_timer > 120 {
            if state_timer % 4 == 0 {
                sound_play(sound_get("ting"),false,noone, 1)
            }
        }
        
        if state_timer > 150 {
            if state_timer % 4 == 2 {
                create_hitbox(AT_DSPECIAL,6,x + 100 - random_func(1,201,true),y - 10 + 100 - random_func(2,201,true))
                 spawn_hit_fx(x + 100 - random_func(1,201,true),y - 20 + 100 - random_func(2,201,true), exp1)
                sound_play(sound_get("ting"),false,noone, 1)
            }
            
             if state_timer % 5 <= 2 {
              draw_x = 5  
             } else {
              draw_x = -5 
             }
             
            if state_timer % 5 == 0 {
                shake_camera(2,2)
                    sound_stop(sound_get("sfx_yuuto_explosion"))
            spawn_hit_fx(x + 100 - random_func(1,201,true),y - 20 + 100 - random_func(2,201,true), exp1)
            sound_play(sound_get("sfx_yuuto_explosion"),false,noone, 1.2,
            1.5 - random_func(1,20,true)/100)
            }
            
        }
        
        if state_timer == 180 {
        	move_cooldown[AT_TAUNT] = 0
            shake_camera(10,10)
            draw_x = 0
            y -= 10
            hsp = (10 - random_func(3,21,true))*5
            vsp = -26
            spawn_hit_fx(x,y - 20, exp2)
                sound_stop(sound_get("sfx_yuuto_explosion"))
            sound_play(sound_get("sfx_yuuto_explosion"),false,noone, 1.2,
            1.3 - random_func(1,20,true)/100)
            sound_play(sound_get("OHYES"),false,noone, 3,
            1.1 - random_func(1,10,true)/100)
            create_hitbox(AT_DSPECIAL,4,x,y)
        }
        
        
        image_index = 1 
        randomhurt += 1
        
        if move_cooldown[AT_EXTRA_1] != 0 {
            spr_dir *= -1
            spawn_hit_fx(x,y - 20, exp2)
            move_cooldown[AT_EXTRA_1] = 0
                sound_stop(sound_get("sfx_yuuto_explosion"))
            sound_play(sound_get("sfx_yuuto_explosion"),false,noone, 1.2,
            1 - random_func(1,20,true)/100)
            create_hitbox(AT_DSPECIAL,1,x,y)
        }
        
    } else {
        
        if move_cooldown[AT_TAUNT] == 0 {
        create_hitbox(AT_DSPECIAL,3,x,y)
        }
        
        draw_x = 0
        move_cooldown[AT_EXTRA_1] = 999
        
        if randomhurt % 3 == 0 {
            image_index = 2 + (get_gameplay_time()/2)%8
        }
        
        if randomhurt % 3 == 1 {
            image_index = 10 + (get_gameplay_time()/4)%4
        }
        
        if randomhurt % 3 == 2 {
            image_index = 14 + (get_gameplay_time()/4)%4
        }
    }
    
   
    
    
}
    
