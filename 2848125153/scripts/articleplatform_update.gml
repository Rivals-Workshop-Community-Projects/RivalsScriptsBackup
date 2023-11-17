//article1_update
if(!instance_exists(choochoo)){
    instance_destroy();
    exit;
}else{
	if(property){
		if((abs(choochoo.hsp) <= 0.05 && abs(choochoo.vsp) <= 0.05 || toggleplatform) && plat_on2){
			if(!plat_on || toggleplatform){mask_index = sprite_get("choochoo_plat_collision");plat_on = true;toggleplatform = false;}
		}else if(abs(choochoo.hsp) > 0.05 || abs(choochoo.vsp) > 0.05 || !plat_on2 && toggleplatform){
			mask_index = asset_get("empty_sprite");plat_on = false;if(toggleplatform){toggleplatform = false;}
		}
	}else{
		//if(plat_on){mask_index = sprite_get("choochoo_plat_collision");}
		//else{mask_index = asset_get("empty_sprite");}
	}
	
	depth = choochoo.depth-1;
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