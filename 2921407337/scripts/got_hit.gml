/*
got_hit.gml – called when you are hit by any hitbox. 
Use hit_player_obj to reference the player object that hit you. 
Use hit_player to reference which player hit you (player 1, player 2, etc). 
Use enemy_hitboxID to reference the hitbox you were hit with. 
To change the knockback received, edit orig_knock. 
You can disable the purple kill effect by setting should_make_shockwave to false.
*/
// Mark Section
	if(hit_player_obj.electric_mark == true){
	    if(enemy_hitboxID.type == 2){
	    return;
	    }
	    else{
	    	// Remove mark
	        with(hit_player_obj){
	            electric_mark = false
	        }
	        // Spawn Disperse Effect
	    	hitfx_mark_disperse_obj = spawn_hit_fx(
	    		hit_player_obj.x,
	    		hit_player_obj.y - floor(hit_player_obj.char_height / 2),
	    		hfx_mark_disperse);
	    	// Powerdown sound effect playasd
	    	sound_play(sound_get("power_down"),false,noone,1,1.5);
	    }
}

if(instance_exists(dspecial_cloud_id)){
	instance_destroy(dspecial_cloud_id);
	sound_stop(asset_get( "sfx_absa_boltcloud"))
}