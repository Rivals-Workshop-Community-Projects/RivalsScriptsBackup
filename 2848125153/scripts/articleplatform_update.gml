//article1_update
if(!instance_exists(choochoo)){
    instance_destroy();
    exit;
}else{
	if(property){
		if(choochoo.hsp == 0 && choochoo.vsp == 0){
			if(!plat_on){mask_index = sprite_get("choochoo_plat_collision");plat_on = true;}
		}else{
			if(plat_on){mask_index = asset_get("empty_sprite");plat_on = false;}
		}
	}
	
	/*with (oPlayer) {
	    if (y <= (other.y + 2) && !free && !freemd) {
	        if (place_meeting(x,y,other.id) && y <= other.y && y > other.y-2 || (y > (other.y - 10) && x >= (other.x - 60) && x <= (other.x + 60))){
	            y = other.y;
	            if (state == PS_FIRST_JUMP && other.vsp < 0 && state_timer == 1) {
	                vsp += other.vsp;
	            }
	        }
	    }
	}*/
}

/*with(oPlayer){
			if(place_meeting(x,y,other) && !free && !freemd){
				hsp = other.hsp;vsp = other.vsp;
			}
		}*/