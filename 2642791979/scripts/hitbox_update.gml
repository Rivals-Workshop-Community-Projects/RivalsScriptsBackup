///
switch attack {
    
   case AT_DSPECIAL :
   
     if hbox_num == 2 {
     	
     	if y > room_height {
     		destroyed = true
     	}
     	
     	if hitbox_timer == 1 {
     		if get_gameplay_time()%2 == 0 {
     			spr_dir *= -1
     			hsp *= -1
     			x -= 200*spr_dir
     		}
     	}
     	
     	if hit_priority != 0 && hitbox_timer > 3 {
     		hitbox_timer -= 1
     	}
     	
        if	(place_meeting(x, y - 10 , asset_get("par_block"))) {
     		
     		if hit_priority != 0 {
     			shake_camera(5,5)
     			hit_priority = 0
     			sound_play(asset_get("sfx_ori_energyhit_medium"))
     		}
     		
     		hsp = 0
     		vsp = 0
     		image_index = 19
     	} else {
     			image_index = 18
     	}
     	
     	
     	if hitbox_timer == 60 {
     		shake_camera(10,10)
            sound_play(asset_get("sfx_ori_energyhit_heavy"))
            sound_play(asset_get("sfx_abyss_explosion"),false,noone,1,0.8)
     		spawn_hit_fx(x,y - 20,exp2)
     		spawn_hit_fx(x + 80,y - 20,exp1)
     		spawn_hit_fx(x - 80,y - 20,exp1)
     		create_hitbox(AT_DSPECIAL,7,x,y - 40)
     		destroyed = true
     	}
     	
     	
     }
    
     if hbox_num == 8 { 
     	
     	if y > room_height {
     		destroyed = true
     	}
     	
     	if hitbox_timer == 3 {
     		hsp *= -0.2
     		vsp = -2
     	}
     	
     	if !has_hit {
     		image_index = 10
     		hitbox_timer -= 1
     	} else {
     		image_index = 14
     		vsp += .6
     	}
     	
     }
     	
   break;

}