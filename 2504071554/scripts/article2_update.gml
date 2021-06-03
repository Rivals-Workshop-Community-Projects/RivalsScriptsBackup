//article2_update - mirage

//most of it is a better version of Acid Rainbows' raincloud code
//which, in turn, is made from Guadua's bamboo code

if (init == 0){
    init = 1;
	
	hsp = 9*spr_dir;//7
	
	if (blades){
		follow_hb = create_hitbox( AT_FSPECIAL, 2, x+32, y-32 )
		follow_hb.owner_article = id;
	}
}

state_timer++;

// // // // STATE 0 - IDLE
if (state == 0){
	state_end = 21;//12
    image_index = (blades)? 3 : 1;
	
	if (follow_hb != -4){
		follow_hb.x = x+(32*spr_dir);
		follow_hb.y = y-32;
		follow_hb.hitbox_timer = 1;
	}
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 3;
		state_timer = 0;
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
    if (state_timer == state_end){
		state = 1;
        state_timer = 0;
    }
}

	
// // // // STATE 1 - STOP
if (state == 1){
	state_end = 64;
    image_index = (blades)? 7 + ( state_timer*0.1 ) % 2 : 5;
	
	if (follow_hb != -4){
		follow_hb.x = x+(20*spr_dir);
		follow_hb.y = y-32;
		follow_hb.hitbox_timer = 1;
	}
	
	if (spr_dir = 1){
		hsp = clamp((hsp-0.55), 0, 50);//0.3
	}
	if (spr_dir = -1){
		hsp = clamp((hsp+0.55), -50, 0);//0.3
	}
	
    if (state_timer == state_end){
		state = 10;
        state_timer = 0;
		if (follow_hb != -4){
			follow_hb.destroyed = true;
		}
    }
}

if (state == 0 || state == 1){
	if (player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND){
		state = 10;
        state_timer = 0;
	}
}

// // // // STATE 10 - FADE
if (state == 10){
	state_end = 10;
    image_index = (blades)? 7 + state_timer * 2 / state_end : 5;
	
	image_alpha = ease_linear( 8, 0, state_timer, state_end )/10
	
	if (spr_dir = 1){
		hsp = clamp((hsp-1), 0, 50);
	}
	if (spr_dir = -1){
		hsp = clamp((hsp+1), -50, 0);
	}
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}

	
// // // // STATE 2 - ATTACK
if (state == 2){
	state_end = 2;
    image_index = (blades)? 12 : 10;
	
    if (state_timer == state_end){
		state = 3;
        state_timer = 0;
    }
}


// // // // STATE 3 - ATTACK 2
if (state == 3){
	state_end = 9;
    image_index = 14 + state_timer * 2 / state_end;
	
    if (state_timer == state_end){
		state = 4;
        state_timer = 0;
		var x_store = x;
		var y_store = y;
		var hsp_store = hsp;
		var vsp_store = vsp;
		x = player_id.x;
		y = player_id.y;
		hsp = player_id.hsp;
		vsp = player_id.vsp;
		player_id.x = x_store;
		player_id.y = y_store;
		player_id.hsp = hsp_store;
		player_id.vsp = vsp_store;
    }
}


// // // // STATE 4 - ATTACK 3
if (state == 4){
	state_end = 8;
    image_index = 15 + state_timer * 2 / state_end;
	
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}



// PARRY TELEPORT
// // // // STATE 5 - TELE 1
if (state == 5){
	state_end = 6;
    image_index = (blades)? 20 : 18;
	
    if (state_timer == state_end){
		state = 6;
        state_timer = 0;
    }
}

// // // // STATE 6 - TELE 2
if (state == 6){
	state_end = 5;
    image_index = 22;
	
    if (state_timer == state_end){
		state = 7;
        state_timer = 0;
		var x_store = x;
		var y_store = y;
		var hsp_store = hsp;
		var vsp_store = vsp;
		x = player_id.x;
		y = player_id.y;
		hsp = player_id.hsp;
		vsp = player_id.vsp;
		player_id.x = x_store;
		player_id.y = y_store;
		player_id.hsp = hsp_store;
		player_id.vsp = vsp_store;
		player_id.invincible = true;
		player_id.invincible_time = 5;
    }
}

// // // // STATE 7 - TELE 3
if (state == 7){
	state_end = 8;
    image_index = 22 + state_timer * 2 / state_end;
	
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}





// USPECIAL MIRROR
// // // // STATE 8 - MIRROR
if (state == 8){
	state_end = 120;
    image_index = player_id.image_index + 25;
	
	if (usp_mode){
		hsp = player_id.hsp*-1
		vsp = player_id.vsp
		
		if (player_id.window == 1 ||
			player_id.window == 2 ||
			player_id.window == 3 ||
			player_id.window == 5 ||
			player_id.window == 6 ||
			player_id.window == 7 ||
			player_id.window == 8 ||
			player_id.window == 10 ||
			player_id.window == 11 ||
			player_id.window == 12 ||
			player_id.window == 13 ||
			player_id.window == 14){
				vsp = 0;
		}
		if !((player_id.state==PS_ATTACK_GROUND || player_id.state==PS_ATTACK_AIR) && player_id.attack==AT_USPECIAL){
			usp_mode = false;
			state = 9;
			state_timer = 0;
		}
	}
	
    if (state_timer == state_end){
		state = 9;
        state_timer = 0;
    }
}

// // // // STATE 9 - MIRROR END
if (state == 9){
	state_end = 16;
    image_index = (12 + 25) + state_timer * 4 / state_end;
	
	hsp = 0;
	vsp = 0;
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}































