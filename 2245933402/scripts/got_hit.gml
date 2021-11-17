///

if attacking {
 /*	if attack == AT_DSTRONG && window > 1 && ostyle == 4{
		super_armor = false
		set_state (PS_IDLE)
		spawn_hit_fx (x - 80*spr_dir , y - 40 , 253)
	    spawn_hit_fx (x + 80*spr_dir, y - 40 , 204)
	    
	    spawn_hit_fx (x , y - 60 , 253)
	    spawn_hit_fx (x , y - 60 , 204)
	    
	    spawn_hit_fx (x - 50*spr_dir , y - 80 , 253)
	    spawn_hit_fx (x + 50*spr_dir , y - 80 , 204)
	    
	    spawn_hit_fx (x - 10*spr_dir , y - 20 , 253)
	    spawn_hit_fx (x + 10*spr_dir , y - 20 , 204)
	    
	    spawn_hit_fx (x - 30*spr_dir , y  , 253)
	    spawn_hit_fx (x + 30*spr_dir , y , 204)
	    
	    spawn_hit_fx (x + 80*spr_dir , y - 40 , 253)
	    spawn_hit_fx (x - 80*spr_dir, y - 40 , 204)
	    
	    spawn_hit_fx (x , y - 20 , 253)
	    spawn_hit_fx (x , y - 20 , 204)
	    
	    spawn_hit_fx (x + 50*spr_dir , y - 80 , 253)
	    spawn_hit_fx (x - 50*spr_dir , y - 80 , 204)
	    
	    spawn_hit_fx (x + 10*spr_dir , y - 20 , 253)
	    spawn_hit_fx (x - 10*spr_dir , y - 20 , 204)
	    
	    spawn_hit_fx (x + 30*spr_dir , y  , 253)
	    spawn_hit_fx (x - 30*spr_dir , y , 204)
	    
	    sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	   	 sound_play(sound_get("exp2")); 
	   sound_play(asset_get("sfx_abyss_explosion")); 
	    create_hitbox(AT_DSTRONG , 2 , x + 6*spr_dir  , y - 40 );
	}
	*/
	
		if grelive == 1 {
			    move_cooldown[AT_FTILT] = 2
			    grelive = 0
			    create_hitbox(AT_FSPECIAL , 1 , x - 16*spr_dir  , y - 40 );
		}
}



//if ostyle == 4{
//	
//if enemy_hitboxID.damage >= 2 {
//	     spawn_hit_fx (x  + 18 - random_func(1, 36, true), y - 30 - random_func(2, 66, true) , 193)
//	   	 sound_play(asset_get("sfx_kragg_rock_shatter"));   
//	   	 take_damage( player, -1 , -1 )
//}
//
//
//if enemy_hitboxID.damage >= 3 {
//	   	 take_damage( player, -1 , -1 )
//}
//
//
//}