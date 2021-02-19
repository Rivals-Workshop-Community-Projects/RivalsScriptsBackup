//natsumi article1_update


if (init == 0){
    init = 1;
    
	with (asset_get("obj_article1")){
		if (id != other.id && player_id == other.player_id){
			if (state < 2){
				state = 2;
				state_timer = 0;
			}
		}
	}
	sound_play(sound_get("uspecial_summon"))
}

state_timer++;

// // // // STATE 0 - START

if (state == 0){
	state_end = 3;
	image_index = 0
	
    if (state_timer == state_end){
		state = 1;
		state_timer = 0;
    }
}

// // // // STATE 1 - WAIT
if (state == 1){
	state_end = 60;
	image_index = 1
	
	if (!purpose_filled && player_id.y>y){
		player_id.window = 4;
		player_id.window_timer = 0;
		player_id.y = y;
		state_timer = state_end-40;
		purpose_filled = true;
	}
	if (player_id.state != PS_ATTACK_AIR){
		purpose_filled = true;
	}
	
    if (state_timer == state_end){
		state = 2;
		state_timer = 0;
		sound_play(sound_get("uspecial_leave"))
    }
}

if (purpose_filled && player_id.window == 4 && player_id.window_timer == 7){
	vsp = -12;
	sound_play(sound_get("uspecial_jump"))
}
if (purpose_filled && vsp < 0){
	vsp = vsp + 0.5;
}
if ((state == 0 || state == 1)&&!purpose_filled){
	x = player_id.x - (10*player_id.spr_dir)
}

// // // // STATE 2 - DISAPPEARING
if (state == 2){
	state_end = 3;
	image_index = 0
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}