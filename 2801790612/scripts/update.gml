if (introTimer2 < 8) {
	introTimer2++;
} else {
	introTimer2 = 0;
	introTimer++;
}

if (introTimer < 8) {
	draw_indicator = false;
} else {
	draw_indicator = true;
}

if (introTimer2 == 0 && introTimer == 1) {
    sound_play(sfx_pepsiman_long);
}

if (introTimer2 == 0 && introTimer == 2) {
    sound_play (asset_get("sfx_bird_downspecial_end"));
}

if(get_gameplay_time() <= 120){
	if(taunt_pressed && !bigiron){
		bigiron = true;
		sound_play(sfx_alleyoop);
	}
}


if (state == PS_DASH) {
    if (state_timer % 16 == 0) sound_play(sfx_pepsi_step, false, noone, 0.3, 1);
}

// Pepsi Machine Collision
if (instance_exists(pepsimachine)) {
    var pm = pepsimachine;
    var hit_coll = collision_rectangle(pm.x - 26, pm.y - 70, pm.x + 26, pm.y + 0, asset_get("pHitBox"), true, true);
    var valid = true;

    if (hit_coll != noone) {
        print_debug(string(hit_coll.player_id) + " --- " + string(pepsimachine.player_id));
        if (hit_coll.player_id == pepsimachine.player_id && (hit_coll.attack != AT_FSPECIAL && hit_coll.attack != AT_NSPECIAL)) {
            valid = false;
        }
        else if (hit_coll.player_id != pepsimachine.player_id) {
            valid = false;
        }
    }
    else {
        valid = false;
    }

    if (valid) {
        //print_debug(string(hit_coll.player_id))
        
        if (pepsimachine.player_id.attack == AT_FSPECIAL){
            sound_play(sfx_pepsi_bounce);
            pepsimachine.launch = true;
        }
        if (pepsimachine.player_id.attack == AT_NSPECIAL) {
            pepsimachine.explode = true;
        }
        
    }
}

// If the buffer timer is active, tick it down.
if (fspecial_timer > 0) {
    fspecial_timer -= 1;
}
// If the combo timer is active, tick it down.
//if (combo_timer > 0) {
//    combo_timer -= 1;
//}
//else if (combo_timer == 0) {
//    combo = 0;
//}

// Never have more than 100 Pepsi
if (pepsi_meter > 100) pepsi_meter = 100;



// Pepsiman Galaxy effect

if (move_cooldown[AT_FSPECIAL_2] == 0 && hitstop) {
    with oPlayer {
    	if last_player_hit_me == other.player && activated_kill_effect {
            with other {
                pepsid = hit_player_obj;
                //pause_timer = 20;
                farx = floor((x - hit_player_obj.x)/1.5)
  		        fary = floor((y - hit_player_obj.y)/1.5)
                sound_play(sfx_pepsiman);
                move_cooldown[AT_FSPECIAL_2] = 130
            }
    	}
    }
}

if (move_cooldown[AT_FSPECIAL_2] > 80) {
    can_move = false;
    if hit_player_obj.x > x {
    	farx -= 0.5
    } else {
    	farx += 0.5
    }
	hitstop = 1
	hit_player_obj.hitstop = 1
}

//if (pause_timer > 0) {
//    //pepsid.state_timer = 0;
//    //pepsid.hitstop = true;
//    //hitstop = true;
//    pause_timer -= 1;
//}