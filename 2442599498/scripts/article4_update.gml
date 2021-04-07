//
timer++;
var otherTouch = false;
with obj_stage_article {
	if (get_article_script(id) == 4) {
        if (touchingButton) && (id != other.id) {
        	otherTouch = true;
        }
    }
}

var playerSelect = false;
with oPlayer {
	if !is_dead {
		if (attack_pressed) {
			playerSelect = true;
		}
		
	    if (position_meeting(x, y - 20, other)) && (!otherTouch) {
	    	other.touchingButton = true;
		}
	}
}


if (touchingButton) && (buttonIndex != 8) {
	touchTimer++;
	image_index = buttonIndex + 1;
} else {
	image_index = buttonIndex;
	touchTimer = 0;
}

if (touchTimer == 1) {
	sound_play(sound_get("select"));
}

if playerSelect && touchingButton && player_id.state_timer > 20 {
	switch buttonIndex {
		case 0:
		player_id.button_selected = "Fight";
		break;
		
		case 2:
		player_id.button_selected = "Act";
		break;
		
		case 4:
		player_id.button_selected = "Item";
		break;
		
		case 6:
		player_id.button_selected = "Mercy";
		break;
	}
	player_id.select_timer = 0;
}

touchingButton = false;