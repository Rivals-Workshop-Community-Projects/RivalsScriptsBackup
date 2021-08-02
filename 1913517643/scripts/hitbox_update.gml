//HITBOX UPDATE

if (attack == AT_NSPECIAL) and !free { //Keep the music note bouncing after landing
	vsp = -5;
	with (player_id){
		switch (other.pianoNum) { 
	        case 1:
	            sound_play(sound_get("piano_g"));
	            other.pianoNum++;
	            break;
	        case 2:
	            sound_play(sound_get("piano_a"));
	            other.pianoNum++;
	            break;
	        case 3:
	            sound_play(sound_get("piano_b"));
	            other.pianoNum++;
	            break;
	        default:
	            sound_play(sound_get("piano_c"));
	            other.pianoNum++;
	            break;
		 }
	}
		 
}

if (attack == AT_TAUNT) and !free {
	vsp = -2;
	sound_play( asset_get( "sfx_land_heavy" ) );
    length = 30;
}



if (attack == AT_NSPECIAL) and spr_dir < 0 { //Keep the music note non-mirrored
	spr_dir = 1;

}

	
if (attack == AT_NSPECIAL){
	
	if (fastNote){
		if (player_id.state_timer%2 == 0){
			
			if (hsp > 0){
				spawn_hit_fx(x,y,player_id.notefade1);
			} else {
				spawn_hit_fx(x,y,player_id.notefade2);
			}
		}
		
	}
	
	with (obj_article2){
		if (real(player_id.url == 1913517643) && place_meeting(x,y,other)){
			if (abs(other.hsp) == 3.5){
				other.fastNote = 1;
				other.hsp = other.hsp*2;
			    other.sprite_index = sprite_get("fastnote_proj");
			}
		}
	}
	
}


