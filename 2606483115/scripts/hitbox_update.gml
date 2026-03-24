//hitbox_update

if(attack == AT_DSPECIAL && hbox_num == 7){
	through_platforms = 2 //Dont stop at plats
	
	if(hitbox_timer mod 4 == 0){
		switch(clamp(random_func_2(0, 3, true), 0, 2)){
			case 0:
				spawn_hit_fx(x - 5 + random_func_2(0, 10, true), y - 5 + random_func_2(0, 10, true), player_id.vfx_steam_small)
			break;
				
			case 1:
				spawn_hit_fx(x - 5 + random_func_2(0, 10, true), y - 5 + random_func_2(0, 10, true), player_id.vfx_steam_medium)
			break;
			
			case 2:
				spawn_hit_fx(x - 5 + random_func_2(0, 10, true), y - 5 + random_func_2(0, 10, true), player_id.vfx_steam_large)
			break;
		}
	}
    if(!free){
    	var relaunch = false
    	for(i = 0; i < array_length(player_id.geyser_array); i++){
			if(place_meeting(x, y, player_id.geyser_array[i])){
				var geyser = player_id.geyser_array[i]
				if(geyser.state == 2){
					if(player_id.big_geysers){
						geyser.state = 5
						geyser.state_timer = 0
					}else{
						geyser.state = 3
						geyser.state_timer = 0
					}
					hsp = stored_velocity[0] * -1
					vsp = stored_velocity[1] * -1
					relaunch = true
					exit;
				}
			}
    	}
    	if(vsp >= 0){
    		sound_play(player_id.sfx_steam_cloth)
    		sound_play(asset_get("sfx_waterhit_medium"))
    		var explosion_hitbox = create_hitbox(AT_DSPECIAL, 5, x, y)
    		explosion_hitbox.kb_value = kb_value
    		explosion_hitbox.kb_scale = kb_scale
    		explosion_hitbox.hitpause = hitpause
    		explosion_hitbox.extra_hitpause = extra_hitpause
    		explosion_hitbox.hitpause_growth = hitpause_growth
    		explosion_hitbox.hitstun_factor = hitstun_factor
    		explosion_hitbox.damage = damage
    		
	    	spawn_hit_fx(x, y, player_id.vfx_steam_explosion_large)
	    	instance_destroy()
    	}
    }else{
    	stored_velocity = [hsp, vsp]
    }
}