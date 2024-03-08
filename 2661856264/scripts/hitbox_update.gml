if (attack == AT_FSPECIAL && hbox_num == 3){
	proj_angle -= 5*spr_dir;
}

//Hit Geodude, Get Rocks (Zard wuz here)
if attack == AT_FSPECIAL && place_meeting(x,y,pHitBox){
	with pHitBox{
		//Get midpoint between both hitboxes
		var hit_midpoint_x = (x + other.x)/2;
		var hit_midpoint_y = (y + other.y)/2;
		//If it touches Stealth Rock
		if attack == AT_DSPECIAL{
			//Make sure player retains usual movement
			player_id.old_vsp = player_id.vsp;
			player_id.old_hsp = player_id.hsp;
			//Hitstop = good gamefeel
			player_id.hitpause = true;
			player_id.hitstop = hitpause;
			//Destroy Geodude, get big rocks
			if other.hbox_num == 3{
				player_id.has_hit = true;
				sound_play(sound_get("geodude"));
			}
			other.destroyed = true;
			player_id.has_hit = true;
			//Play hit sound
			sound_play(other.sound_effect);
		}
	}
}