//hitbox_update

if(attack == AT_DSPECIAL && hbox_num == 7){
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
    	if(!relaunch && vsp >= 0){
	    	spawn_hit_fx(x, y, player_id.vfx_steam_large)
	    	if(player_id.geysers < player_id.max_geysers){
				var geyser = instance_create(x, y - 64, "obj_article1")
				geyser.state = 1
				geyser.bypass_cost = true
				array_push(player_id.geyser_array, geyser)
			}
	    	instance_destroy()
    	}
    }else{
    	stored_velocity = [hsp, vsp]
    }
}