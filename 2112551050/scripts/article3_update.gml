//
timer++;
var otherTouch = false;
with obj_stage_article {
	if (get_article_script(id) == 3) {
        if (touchingButton) && (id != other.id) {
        	otherTouch = true;
        }
    }
}

var playerSelect = false;
with oPlayer {
	if (!dead) {
	    if !(variable_instance_exists(id, "temp_level")) {
	    	if (attack_pressed) {
	    		playerSelect = true;
	    	}
	    	
	        if (place_meeting(x, y, other)) && (!otherTouch) {
	        	other.touchingButton = true;
			}
	    }
	}
}


if (touchingButton) && (buttonIndex != 8) {
	touchTimer++;
	image_index = buttonIndex + 1;
	if (playerSelect) {
		switch buttonIndex {
			case 0: //fight
			player_id.menuIndex = 1;
			player_id.menuIndexTimer = 0;
			break;
			
			case 2: //act
			player_id.menuIndex = 2;
			player_id.menuIndexTimer = 0;
			break;
			
			case 4: //item
			player_id.menuIndex = 3;
			player_id.menuIndexTimer = 0;
			break;
			
			case 6: //mercy
			player_id.menuIndex = 4;
			player_id.menuIndexTimer = 0;
			break;
		}
	}
} else {
	image_index = buttonIndex;
	touchTimer = 0;
}

if (touchTimer == 1) {
	sound_play(sound_get("select"));
}

touchingButton = false;
