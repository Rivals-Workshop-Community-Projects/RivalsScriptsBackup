//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_NSPECIAL_2){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL && window == 2){
	if (free){
		attack_end();
	}
}

if (attack == AT_FSPECIAL){
    if (badge_slot_1 == 4 || badge_slot_2 == 4 || badge_slot_3 == 4){
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 11);
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, divespeed - 2);
        if (has_hit == true && timer_decreasing == false){
            timer_decreasing = true;
        }
        if (timer_decrease <= 0 && has_hit == true && (window == 2 || window == 3 || window == 4)){
            can_attack = true;
            can_jump = true;
        }
        if (timer_decrease == 1 && has_hit == true && (window == 2 || window == 3 || window == 4)){
            sound_play (asset_get("mfx_star"));
        }
    }
    else{
        reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME);
        reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
    }
    if (window == 1){
        timer_decreasing = false;
        timer_decrease = 5;
        
        var thingy_aaaa = get_window_value( AT_FSPECIAL, 1, AG_WINDOW_LENGTH );
        if (window_timer == thingy_aaaa - 1){
        	if (!hitpause){
        		if (!hitstop){
        			spawn_hit_fx( x, y - 24, 144 ); //spawn smoke vfx when diving
        		}
        	}
        }
        
    }
}

if (attack == AT_DATTACK){
    if (badge_slot_1 == 2 || badge_slot_2 == 2 || badge_slot_3 == 2){
        attack = AT_EXTRA_1;
        window = 1;
        window_timer = 0;
    }
}


if (attack == AT_EXTRA_1){
    can_wall_jump = true;
}

if (attack == AT_JAB){
    if (was_parried){
    was_parried = false;
    }
}

if (attack == AT_FSPECIAL && window == 1){
    reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE);
    reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX);
    ground_timer = 10;
}

if (attack == AT_FSPECIAL && window > 1){
    can_wall_jump = 1;
    if (free){
        move_cooldown[AT_FSPECIAL] = 80;
    }
}

var dive_vsp_spin = -8;
var spin_startup = get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);


if (attack == AT_FSPECIAL && (window == 3 || (window == 2 && window_timer > 5)) && (special_pressed || ((attack_pressed && (badge_slot_1 != 4 && badge_slot_2 != 4 && badge_slot_3 != 4))))){
    spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
    hsp /= 2;
    window = 5;
    window_timer = 0;
    destroy_hitboxes();
}

if (attack == AT_FSPECIAL && !free){
	if ((window == 2 && window_timer > 4) || window == 3){
		spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
		sound_play(asset_get("sfx_land_heavy"));
		destroy_hitboxes();
		window = 4;
		window_timer = 0;
	}
}

if (attack == AT_FSPECIAL && window == 4 && (special_pressed || (attack_pressed && (badge_slot_1 != 4 && badge_slot_2 != 4 && badge_slot_3 != 4)))){
    if (!free){
    	if (window_timer <= 7){
	        set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
	        spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
	        spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir*-1);
    	}
    	else{
    		spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
	        hsp /= 2;
    	}
    }
    
    window = 5;
	window_timer = 0;
}

if (attack == AT_FSPECIAL && !hitpause && !hitstop){
	if (window == 5){
		if (window_timer == spin_startup - 1){
			vsp = dive_vsp_spin;
		}
	}
	if (window == 4 && !free){
		if (window_timer mod 8 == 0){
			if (abs(hsp) > 2){
				spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir);
			}
		}
	}
}

var dive_vsp = -4;

if (attack == AT_FSPECIAL){
	if (window == 2){
		if (window_timer == 1){
			if (!hitpause && !hitstop){
				vsp = dive_vsp;
			}
		}
	}
}

if (badge_slot_1 != 4 && badge_slot_2 != 4 && badge_slot_3 != 4){
    if (attack == AT_FSPECIAL && window == 2 && hsp < 8 && spr_dir == 1){
        //destroy_hitboxes();
    }
    if (attack == AT_FSPECIAL && window == 2 && hsp > -8 && spr_dir == -1){
        //destroy_hitboxes();
    }
}

if (badge_slot_1 == 4 || badge_slot_2 == 4 || badge_slot_3 == 4){
    if (attack == AT_FSPECIAL && window == 2 && hsp < 6 && spr_dir == 1){
        //destroy_hitboxes();
    }
    if (attack == AT_FSPECIAL && window == 2 && hsp > -6 && spr_dir == -1){
        //destroy_hitboxes();
    }
}

if (attack == AT_DSPECIAL && free && window == 1){
    attack = AT_DSPECIAL_AIR;
    window = 1;
    window_timer = 0;
    can_move = false;
    can_fast_fall = false;
    set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
}

var shortest_id = noone;
var shortest_dist = 200;
var additional_speed = 0.2;
var fast_range = 50;

//homing attack rune
if (has_rune("N")){
	var shortest_dist = 600;
}

/*
if (runeL) { //trigger the attribute change
	var shortest_dist = 2000;
}
*/

if (attack == AT_DSPECIAL_AIR){
	if (window == 1){
		sparkle_timer = 0;
	}
}

if (attack == AT_DSPECIAL_AIR && window == 2){
	sparkle_timer++;
    with (asset_get("oPlayer")) {
        if (player != other.player && state != PS_DEAD && state != PS_RESPAWN) {
            var curr_dist = point_distance(x,y,other.x,other.y);
            if (curr_dist < shortest_dist) {
            	if (other.sparkle_timer mod 6 == 0 && !hitpause && !hitstop){
	            	spawn_hit_fx( x, y - 20, 310 );
            	}
                shortest_dist = curr_dist;
                shortest_id = id;
            }
        }
    }
    if (window_timer > 14 && shortest_id != noone){
        window = 5;
        window_timer = 0;
        set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
    }
}

if (window == 5 && attack == AT_DSPECIAL_AIR){
    with (asset_get("oPlayer")) {
        if (player != other.player && state != PS_DEAD && state != PS_RESPAWN) {
            var curr_dist = point_distance(x,y,other.x,other.y);
            if (curr_dist < shortest_dist) {
                shortest_dist = curr_dist;
                shortest_id = id;
            }
        }
    }
    if (shortest_id != noone){
	    if (shortest_id.x < x) {
	        spr_dir = -1;
	    } else {
	        spr_dir = 1;
	    }
	    
	    x = lerp(x, shortest_id.x, 0.08+(point_distance(x,y,shortest_id.x,shortest_id.y) < fast_range)*additional_speed);
    	y = lerp(y, shortest_id.y, 0.08+(point_distance(x,y,shortest_id.x,shortest_id.y) < fast_range)*additional_speed);
    }
    else{
    	x = x;
    	y = y;
    }

    
    if (window_timer == 18){
    	spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
    	sound_play(asset_get("sfx_swipe_weak1"));
    	window = 9;
    	window_timer = 1;
    }
}

if (attack == AT_DSPECIAL && shield_pressed && window == 2){
    window = 3;
    window_timer = 0;
    //sound_play (sound_get ("shopclose"));
}

//shop stuff

//MOVING CURSOR IN SHOP
if (attack == AT_DSPECIAL && window == 2 && selecting = 0){
    shop_open = 1;
    if (up_pressed && item_selected != 4){
    	sound_play(sound_get("shopmove"));
    	item_selected = 4;
    }
    if (right_pressed && item_selected < 7){
    	sound_play(sound_get("shopmove"));
        item_selected = item_selected + 1;
    }
    if (right_pressed && item_selected >= 7){
        item_selected = 1;
    }
    if (left_pressed && item_selected > 0){
    	sound_play(sound_get("shopmove"));
        item_selected = item_selected - 1;
    }
    if (left_pressed && item_selected <= 0){
        item_selected = 6;
    }
}

if (attack == AT_DSPECIAL && window == 1){
    item_selected = 1;
    error_cooldown = 0;
    selecting = 0;
}

var buy_fx = 113;

if (shop_type == "current"){
    if (selecting == 1 && attack == AT_DSPECIAL && window == 2){
        if (badge_slot_1 == 0){
            badge_slot_1 = item_selected;
            selecting = 0;
            window = 3;
            window_timer = 0;
            sound_play (sound_get ("shopselect"));
            spawn_hit_fx( x, y - 10, buy_fx );
        }else if (badge_slot_2 == 0){
            badge_slot_2 = item_selected;
            selecting = 0;
            window = 3;
            window_timer = 0;
            sound_play (sound_get ("shopselect"));
            spawn_hit_fx( x, y - 10, buy_fx );
        }else if (badge_slot_3 == 0){
            badge_slot_3 = item_selected;
            selecting = 0;
            window = 3;
            window_timer = 0;
            sound_play (sound_get ("shopselect"));
            spawn_hit_fx( x, y - 10, buy_fx );
        }
    }
}

if (selecting == 1 && attack == AT_DSPECIAL && window == 2){
    if (right_pressed && slot_selected < 3){
        slot_selected = slot_selected + 1;
    }
    if (right_pressed && slot_selected >= 3){
        slot_selected = 0;
    }
    if (left_pressed && slot_selected > -1){
        slot_selected = slot_selected - 1;
    }
    if (left_pressed && slot_selected <= -1){
        slot_selected = 2;
    }
    if (attack_pressed && click_cooldown == 0){
        selecting = 0;
        window = 3;
        window_timer = 0;
        sound_play (sound_get ("shopselect"));
        switch (item_selected){
            case 1: //its late why am i coding this i am tired
                switch (slot_selected){
                    case 0:
                        if (badge_slot_1 != 1){
                            badge_slot_1 = 1;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 1:
                        if (badge_slot_2 != 1){
                            badge_slot_2 = 1;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 2:
                        if (badge_slot_3 != 1){
                            badge_slot_3 = 1;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                }
            break;
            case 2: //its late why am i coding this i am tired
                switch (slot_selected){
                    case 0:
                        if (badge_slot_1 != 2){
                            badge_slot_1 = 2;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 1:
                        if (badge_slot_2 != 2){
                            badge_slot_2 = 2;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 2:
                        if (badge_slot_3 != 2){
                            badge_slot_3 = 2;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                }
            break;
            case 3: //its late why am i coding this i am tired
                switch (slot_selected){
                    case 0:
                        if (badge_slot_1 != 3){
                            badge_slot_1 = 3;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 1:
                        if (badge_slot_2 != 3){
                            badge_slot_2 = 3;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 2:
                        if (badge_slot_3 != 3){
                            badge_slot_3 = 3;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                }
            break;
            case 4: //its late why am i coding this i am tired
                switch (slot_selected){
                    case 0:
                        if (badge_slot_1 != 4){
                            badge_slot_1 = 4;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 1:
                        if (badge_slot_2 != 4){
                            badge_slot_2 = 4;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 2:
                        if (badge_slot_3 != 4){
                            badge_slot_3 = 4;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                }
            break;
            case 5: //its late why am i coding this i am tired
                switch (slot_selected){
                    case 0:
                        if (badge_slot_1 != 5){
                            badge_slot_1 = 5;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 1:
                        if (badge_slot_2 != 5){
                            badge_slot_2 = 5;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 2:
                        if (badge_slot_3 != 5){
                            badge_slot_3 = 5;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                }
            break;
            case 6: //its late why am i coding this i am tired
                switch (slot_selected){
                    case 0:
                        if (badge_slot_1 != 6){
                            badge_slot_1 = 6;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 1:
                        if (badge_slot_2 != 6){
                            badge_slot_2 = 6;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                    case 2:
                        if (badge_slot_3 != 6){
                            badge_slot_3 = 6;
                            spawn_hit_fx( x, y - 10, buy_fx );
                        }
                    break;
                }
            break;
        }
    }
}

//BUYING/SELECTING
if (attack == AT_DSPECIAL && window == 2){
    if (attack_pressed){
        switch (item_selected){
            case 1:
                if (magnet_bought == 1){
                    if (pon_count < magnet_price && error_cooldown == 0){
                        sound_play ( asset_get ( "mfx_tut_fail" ) );
                        error_cooldown = error_cooldown_basic;
                    }
                    if (pon_count >= magnet_price){
                        pon_count = pon_count - magnet_price;
                        magnet_bought = 0;
                        spawn_hit_fx( x, y - 10, buy_fx );
                    }
                }
                if (magnet_bought == 0 && selecting == 0){
                    sound_play ( sound_get ("shopselect") );
                    selecting = 1;
                    slot_selected = 0;
                    click_cooldown = 7;
                    if (badge_slot_1 == 1){
                        badge_slot_1 = 0;
                    }
                    if (badge_slot_2 == 1){
                        badge_slot_2 = 0;
                    }
                    if (badge_slot_3 == 1){
                        badge_slot_3 = 0;
                    }
                }
            break;
            case 2:
                if (mail_bought == 1){
                    if (pon_count < mail_price && error_cooldown == 0){
                        sound_play ( asset_get ( "mfx_tut_fail" ) );
                        error_cooldown = error_cooldown_basic;
                    }
                    if (pon_count >= mail_price){
                        pon_count = pon_count - mail_price;
                        mail_bought = 0;
                        spawn_hit_fx( x, y - 10, buy_fx );
                    }
                }
                if (mail_bought == 0 && selecting == 0){
                    sound_play ( sound_get ("shopselect") );
                    selecting = 1;
                    slot_selected = 0;
                    click_cooldown = 7;
                    if (badge_slot_1 == 2){
                        badge_slot_1 = 0;
                    }
                    if (badge_slot_2 == 2){
                        badge_slot_2 = 0;
                    }
                    if (badge_slot_3 == 2){
                        badge_slot_3 = 0;
                    }
                }
            break;
            case 3:
                if (beam_bought == 1){
                    if (pon_count < beam_price && error_cooldown == 0){
                        sound_play ( asset_get ( "mfx_tut_fail" ) );
                        error_cooldown = error_cooldown_basic;
                    }
                    if (pon_count >= beam_price){
                        pon_count = pon_count - beam_price;
                        beam_bought = 0;
                        spawn_hit_fx( x, y - 10, buy_fx );
                    }
                }
                if (beam_bought == 0 && selecting == 0){
                    sound_play ( sound_get ("shopselect") );
                    selecting = 1;
                    slot_selected = 0;
                    click_cooldown = 7;
                    if (badge_slot_1 == 3){
                        badge_slot_1 = 0;
                    }
                    if (badge_slot_2 == 3){
                        badge_slot_2 = 0;
                    }
                    if (badge_slot_3 == 3){
                        badge_slot_3 = 0;
                    }
                }
            break;
            case 4:
                if (bonk_bought == 1){
                    if (pon_count < bonk_price && error_cooldown == 0){
                        sound_play ( asset_get ( "mfx_tut_fail" ) );
                        error_cooldown = error_cooldown_basic;
                    }
                    if (pon_count >= bonk_price){
                        pon_count = pon_count - bonk_price;
                        bonk_bought = 0;
                        spawn_hit_fx( x, y - 10, buy_fx );
                    }
                }
                if (bonk_bought == 0 && selecting == 0){
                    sound_play ( sound_get ("shopselect") );
                    selecting = 1;
                    slot_selected = 0;
                    click_cooldown = 7;
                    if (badge_slot_1 == 4){
                        badge_slot_1 = 0;
                    }
                    if (badge_slot_2 == 4){
                        badge_slot_2 = 0;
                    }
                    if (badge_slot_3 == 4){
                        badge_slot_3 = 0;
                    }
                }
            break;
            case 5:
                if (umbrella_bought == 1){
                    if (pon_count < umbrella_price && error_cooldown == 0){
                        sound_play ( asset_get ( "mfx_tut_fail" ) );
                        error_cooldown = error_cooldown_basic;
                    }
                    if (pon_count >= umbrella_price){
                        pon_count = pon_count - umbrella_price;
                        umbrella_bought = 0;
                        spawn_hit_fx( x, y - 10, buy_fx );
                    }
                }
                if (umbrella_bought == 0 && selecting == 0){
                    sound_play ( sound_get ("shopselect") );
                    selecting = 1;
                    slot_selected = 0;
                    click_cooldown = 7;
                    if (badge_slot_1 == 5){
                        badge_slot_1 = 0;
                    }
                    if (badge_slot_2 == 5){
                        badge_slot_2 = 0;
                    }
                    if (badge_slot_3 == 5){
                        badge_slot_3 = 0;
                    }
                }
            break;
            case 6:
                if (onehit_bought == 1){
                    if (pon_count < onehit_price && error_cooldown == 0){
                        sound_play ( asset_get ( "mfx_tut_fail" ) );
                        error_cooldown = error_cooldown_basic;
                    }
                    if (pon_count >= onehit_price){
                        pon_count = pon_count - onehit_price;
                        onehit_bought = 0;
                        spawn_hit_fx( x, y - 10, buy_fx );
                    }
                }
                if (onehit_bought == 0 && selecting == 0){
                    sound_play ( sound_get ("shopselect") );
                    selecting = 1;
                    slot_selected = 0;
                    click_cooldown = 7;
                    if (badge_slot_1 == 6){
                        badge_slot_1 = 0;
                    }
                    if (badge_slot_2 == 6){
                        badge_slot_2 = 0;
                    }
                    if (badge_slot_3 == 6){
                        badge_slot_3 = 0;
                    }
                }
            break;
        }
    }
}

if (attack == AT_USPECIAL && down_hard_pressed && window == 5){
    window = 6;
    window_timer = 0;
}

if (attack == AT_USPECIAL_2 && down_hard_pressed && window == 5){
    window = 6;
    window_timer = 0;
}

if (attack == AT_USPECIAL && shield_pressed && window == 5){
    window = 6;
    window_timer = 0;
}

if (attack == AT_USPECIAL_2 && shield_pressed && window == 5){
    window = 6;
    window_timer = 0;
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
    can_wall_jump = true;
}

if (attack == AT_USPECIAL_2){
    can_fast_fall = false;
    can_wall_jump = true;
}


if (attack == AT_USPECIAL){
    if (badge_slot_1 == 5 || badge_slot_2 == 5 || badge_slot_3 == 5){
        attack = AT_USPECIAL_2;
        window = 1;
        window_timer = 1;
    }
}

//beam badge stuff
/*
if (attack == AT_JAB){
    if (badge_slot_1 == 3 || badge_slot_2 == 3 || badge_slot_3 == 3){
    	if (window == 1 && window_timer == 6){
    		if (attack_down){
    			attack = AT_EXTRA_3;
	        	window = 1;
	        	window_timer = 0;
    		}
    	}
    }
}
*/

if (attack == AT_EXTRA_3){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("mfx_star"));
			spawn_hit_fx( x, y - 7, 194 );
		}
	}
}

if (attack == AT_NSPECIAL){
    if (!special_down && window == 4){
        window = 5;
        window_timer = 1;
    }
    if (window == 2 && window_timer == 1){
        sound_play (asset_get ("sfx_swipe_weak1"));
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
    }
    if (window == 3 && window_timer == 1){
        sound_play (asset_get ("sfx_swipe_weak2"));
    }
    if (window == 4 && window_timer == 1){
        if (sfx_ver mod 2 == 0){
            sound_play (asset_get ("sfx_swipe_weak1"));
            sfx_ver++;
        }
        else {
            sound_play (asset_get ("sfx_swipe_weak2"));
            sfx_ver++;
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
        }
    }
}

//if (attack == AT_NSPECIAL){
//    if (left_hard_pressed){
//        spr_dir = -1;
//    }
//    if (right_hard_pressed){
//        spr_dir = 1;
//    }
//}

if (attack == AT_TAUNT){
    if (!taunt_down){
        window = 2;
        window_timer = 1;
    }
}

if (attack == AT_DSTRONG && window > 3){
    can_wall_jump = true;
}

if (attack == AT_DSTRONG){
    can_fast_fall = false;
}

if (attack == AT_BAIR && window_timer == 2 && window == 1){
    spr_dir = spr_dir*-1;
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
    uspecial_timer -= 1;
    if (window <= 2){
        if (spr_dir == 1){
            hsp = clamp(hsp, 0, 3);
        }
        if (spr_dir == -1){
            hsp = clamp(hsp, -3, 0);
        }
    }
}

if (has_hit_player && !hitpause && (window == 2 || window == 3) && (attack == AT_USPECIAL || attack == AT_USPECIAL_2)){ //Drag people along
    if (grabbed != -4){
        if (grabbed.state == PS_HITSTUN){
            grabbed.hitstop = 4;
            grabbed.x = lerp(grabbed.x, x, .5);
            grabbed.y = lerp(grabbed.y, y - 40, .5);
        }
    }
}

if (attack == AT_DSPECIAL_AIR && window == 3 && window_timer == 4){
    move_cooldown[AT_DSPECIAL] = 25; 
}

var mfx_activate = 420;

if (attack == AT_TAUNT){
	taunt_time++;
	
	if (taunt_time >= mfx_activate){
		suppress_stage_music( 0, 0.5 );
		if (taunt_time == mfx_activate - 1){
			sound_stop(sound_get("dancin"));
		}
		if (taunt_time == mfx_activate && !hitstop && !hitpause){
			sound_play( sound_get( "dancin" ), true, noone, 1.25 );
		}
	}
	else if (taunt_time > mfx_activate/2){
		suppress_stage_music( 0, 0.005 );
	}
}
else{
	taunt_time = 0;
	volume_slide = 1;
}

if (actual_practice){
	if (attack == AT_TAUNT){
		if (up_down){
			if (pon_count < 999){
				pon_count++;
				taunt_time = 0;
				volume_slide = 1;
			}
		}
		if (down_down){
			if (pon_count > 0){
				pon_count--;
				taunt_time = 0;
				volume_slide = 1;
			}
		}
	}
}

if (attack == AT_UAIR){
	if (window > 3){
		hud_offset = 60;
	}
}

if (attack == AT_FSPECIAL){
	can_fast_fall = false;
}

if (attack == AT_JAB){
	if (window == 7){
		if (window_timer == 3){
			spawn_base_dust( x + (80 * spr_dir), y, "dash_start", spr_dir*-1);
			sound_play(asset_get("sfx_blow_heavy1"));
		}
	}
}

if (attack == AT_UTILT){
	if (window > 1 && window <= 5){
		hud_offset = 60;
	}
	if (window > 5 && window <= 7){
		hud_offset = 55;
	}
	
	if (!hitpause && !hitstop){
		if (window == 1){
			if (window_timer == 6){
				//spawn_base_dust( x - (6 * spr_dir), y, "land", spr_dir);
			}
		}
		if (window == 4){
			if (window_timer == 3){
				spawn_base_dust( x - (10 * spr_dir), y, "dash_start", spr_dir);
				spawn_base_dust( x - (10 * spr_dir), y, "dash_start", spr_dir*-1);
			}
		}
	}
}

if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == 6){
			if (!hitpause && !hitstop){
				spawn_base_dust( x + (45 * spr_dir), y, "dash_start", spr_dir*-1);
			}
		}
	}
}

if (attack == AT_FTILT){
	if (window == 2){
		if (window_timer == 2){
			if (!hitpause && !hitstop){
				spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			}
		}
	}
}

if (attack == AT_DSTRONG){
	if (!hitpause && !hitstop){
		if (window == 1){
			if (window_timer == 7){
				spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
			}
		}
		if (window == 5){
			if (window_timer == 0){
				if (!has_hit){
					sound_play(asset_get("sfx_land_heavy"));
					sound_play(asset_get("sfx_icehit_medium1"));
					sound_play(asset_get("sfx_ice_back_air"));
					shake_camera(4, 5);
					spawn_base_dust( x + (60*spr_dir), y, "dash_start", spr_dir*-1);
					spawn_base_dust( x - (60*spr_dir), y, "dash_start", spr_dir);
				}
			}
		}
	}
}

if (attack == AT_USTRONG){
	if (window > 2 && (window <= 4 && window_timer < 16)){
		hud_offset = 50;
	}
	if (!hitpause && !hitstop){
		if (window == 2){
			if (window_timer == 5){
				spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
			}
		}
		if (window == 3){
			if (window_timer == 1){
				sound_play(asset_get("mfx_star"));
			}
		}
		if (window == 4){
			if (window_timer == 16){
				sound_play(asset_get("sfx_land_heavy"));
				spawn_base_dust( x + (12 * spr_dir), y, "dash_start", spr_dir*-1);
				spawn_base_dust( x - (12 * spr_dir), y, "dash_start", spr_dir);
			}
		}
	}
}

if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == 2){
			hsp = 7.5*spr_dir;
		}
	}
}

var dattack_scooter_startup = get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH);


if (attack == AT_EXTRA_1){
	if (window == 1){
		if (!hitpause && !hitstop){
			if (window_timer == 1){
				hsp = 9*spr_dir;
			}
			if (window_timer == floor(dattack_scooter_startup/2)){
				vsp = -2.2;
				sound_play(asset_get("sfx_jump"));
				spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			}
			if (window_timer == dattack_scooter_startup - 1){
				sound_play(asset_get("sfx_swipe_medium2"));
				sound_play(asset_get("sfx_ice_ftilt"));
			}
		}
	}
	if (window == 2){
		if (window_timer == 1){
			if (!hitpause){
				hsp = 9.5*spr_dir;
				if (!free){
					sound_play(asset_get("sfx_land_heavy"));
					spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
				}
			}
		}
	}
	if (window == 2 || window == 3){
		if (window_timer mod 4 == 0 && !free){
			spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir);
		}
	}
	if (window == 4){
		if (window_timer == 1){
			if (!free){
				hsp /= 1.35;
			}
		}
	}
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2){
	if (window == 1){
		next_window = false;
		reset_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START);
	}
	if (window == 2){
		if (window_timer == 1){
			if (!hitpause){
				spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
			}
		}
	}
	if (window == 3){
		if (vsp > uspec_descend && !next_window){
			sound_play(asset_get("sfx_ori_glide_featherout"));
			window_timer = 14;
			next_window = true;
		}
		if (!free){
			window = 4;
			window_timer = 0;
		}
		if (window_timer == 14 && !next_window){
			window_timer = 0;
		}
	}
	if (window == 4){
		if (!free && window_timer > 1){
			window = 5;
			window_timer = 0;
			destroy_hitboxes();
		}
	}
	if (window == 4 || window == 5 || window == 3 || window == 2){
		hud_offset = 45;
	}
}

var is_charged = get_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED) >= 10;

if (attack == AT_NSPECIAL){
	if (window == 3){
		if (window_timer == 1){
			spawn_hit_fx( x, y - 24, 109 );
		}
	}
	if (window == 5){
		if (window_timer == 1){
			sound_play(asset_get("sfx_spin"));
		}
	}
	if (window == 6){
		if (window_timer == 1){
			//sound_stop(asset_get("sfx_spin"));
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			move_cooldown[AT_NSPECIAL] = nspec_cooldown;
		}
	}
	if (window > 1){
		if (window < 5){
			if (window_timer mod 4 == 0){
				if (!is_charged){
					spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir);
				}
				else{
					spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
				}
			}
		}
	}
}

//hookshot badge
if (attack == AT_NSPECIAL){
	if (badge_slot_1 == 3 || badge_slot_2 == 3 || badge_slot_3 == 3){
		grabbed = -4;
		set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
		set_attack(AT_NSPECIAL_2);
		hookshot_hitbox = -4;
		hookshot_hit = false;
	}
	else if (move_cooldown[AT_NSPECIAL] > nspec_cooldown + 1){
		move_cooldown[AT_NSPECIAL] = 0;
	}
}

if (attack == AT_NSPECIAL_2){
	can_fast_fall = false;
	
	//grab players with projectile
	with (asset_get("pHitBox")){
	    if (player_id == other.id){
	        if (attack == AT_NSPECIAL_2){
	        	if (hbox_num == 1){
	        		other.hookshot_hitbox = self;
	        	}
	    	}
	    }
	}
	        	
	if (!hitpause && (window == 2 || window == 3)){
		can_move = false;
	}

	
	//hold player in place during second hit startup
	if (!hitpause && window == 5){
		can_move = true;
		if (grabbed != -4){
	        if (grabbed.state == PS_HITSTUN){
	        	grabbed.hitstop = 4;
				grabbed.x = lerp(grabbed.x, x + 20*spr_dir, .5);
				grabbed.y = lerp(grabbed.y, y, .5);
	        }
		}
	}
}
else{
	with (asset_get("pHitBox")){
	    if (player_id == other.id){
	        if (attack == AT_NSPECIAL_2){
	        	if (hbox_num == 1){
	        		destroyed = true;
	        	}
	    	}
	    }
	}
}











/*

//RUNES
if (runeC && attack == AT_DTILT && window == 2 && window_timer == 1) { //trigger the attribute change
	hsp = 9*spr_dir;
}

if (runeD && attack == AT_TAUNT) { //trigger the attribute change
    taunt_timer++;
    if (taunt_timer > 5 && taunt_timer < 25){
    	super_armor = true;
    }
    else{
        super_armor = false;
    }
}

if (runeG && attack == AT_TAUNT){ //trigger the attribute change
	hsp = 10*spr_dir;
	set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
}

if (!runeG){
    set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
}

if (runeK && attack == AT_DSTRONG && window == 3) { //trigger the attribute change
	can_shield = true;
}

if (runeK && attack == AT_FSTRONG && window == 2) { //trigger the attribute change
	can_shield = true;
}

if (runeK && attack == AT_USTRONG && window == 2) { //trigger the attribute change
	can_shield = true;
}

*/


//new runes
if (has_rune("O")){
	if (attack == AT_FSTRONG || attack == AT_USTRONG){
		vsp = clamp(vsp, -999, 3);
	}
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;