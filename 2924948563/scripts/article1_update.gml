hitpause = player_id.hitpause;

if ((!position_meeting(x, y + 1, asset_get("par_block")) || player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && state != 2) {
	state = 2;
	state_timer = 0;
}

state_timer += !hitpause;

image_index = state_timer * (state_anim_frames[state]/(state_length[state] + 1));

switch (state) {
	case 0:
		sprite_index = sprite_get("mound_idle");
	break;
	case 1:
		sprite_index = sprite_get("mound_burst");
		if (state_timer >= state_length[state]) {
			state = 0;
			state_timer = 0;
		}
	break;
    case 2: // Die
    	sprite_index = sprite_get("mound_die");
    	if (state_timer > state_length[state]) {
    		die = true;
    	}
    break;
}

if (die) {
	instance_destroy();
	exit;
}