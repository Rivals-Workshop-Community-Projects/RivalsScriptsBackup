//ai_update - called every frame for this character as a CPU
//sound_play(asset_get("sfx_birdflap"));

//Keeping track of bombs

if instance_exists(bombins) ai_bombtarg = bombins;

if point_distance(x,y,ai_bombtarg.x,ai_bombtarg.y) < 120 && ai_bombtarg.fuse < 30+temp_level*2 {

if ai_bombtarg.fuse < 6+random_func(0,18-temp_level*2,1) shield_down = true;
if x < ai_bombtarg.x left_down = true; else right_down = true;
}


//Auto-refreshing bombs.
ai_bombrefresh--;
if ai_bombrefresh <= 0 && (state == PS_IDLE or state == PS_WALK or state == PS_DASH) && !ai_recovering {
set_attack(AT_NSPECIAL);
ai_bombrefresh = 300+random_func(0,600,1)
//sound_play(asset_get("mfx_player_ready"));
}


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){


	if attack == AT_NSPECIAL {
	
		if get_player_damage(ai_target.player) < 60 switch(random_func(6, 3, 1)) {
		default:
			case 0: //Flashbang
			joy_pad_idle = false;
			joy_dir = 0;
			break;
			case 1: //Baseball
			joy_pad_idle = false;
			joy_dir = 180;
			break;
			case 2: //Firecracker
			joy_pad_idle = false;
			joy_dir = 90;
		break;
		} else switch(random_func(6, 3, 1)) {
		default:
			 case 0: //Standard
				special_pressed = true;
				break;
			case 1: //Finisher
			joy_pad_idle = false;
			joy_dir = 270;
			break;
			case 2: //Flashbang
			joy_pad_idle = false;
			joy_dir = 0;
			break;
		}

		
	}
	if attack == AT_USPECIAL && ai_recovering {
		special_down = true;
	}
	if attack == AT_FSPECIAL && window == 2 {
		special_down = true;
		if point_distance(x+flarex*spr_dir,y+flarey,ai_target.x,ai_target.y) < 40 && abs((ai_target.x+ai_target.hsp)-x) <= abs((ai_target.x)-x)  { //Only if approaching
			special_down = false;
		}
		if (flarex)-50 > abs(x-ai_target.x) {
			special_down = false;
		}
		var checkbomb = instance_nearest(x+flarex*spr_dir,y+flarey,"obj_article1")
		if checkbomb != noone && point_distance(x+flarex*spr_dir,y+flarey,checkbomb.x,checkbomb.y) < 50 {
			special_down = false;
		}
	}
	if attack == AT_DSPECIAL && (ai_target.x-x)*spr_dir > 100 or ((ai_target.x-x)*spr_dir < 60 && ai_target.hitpause >= 20) {
	special_down = true;
	}
	if attack == AT_UAIR && abs(ai_target.x-x) < 40 && (ai_target.y-y) < -40 {
		attack_down = true;
	}
	if attack == AT_FSTRONG {
	up_down = random_func(6, 1, 1);
	down_down = random_func(7, 1, 1);
	}
	if attack == AT_DSTRONG or attack == USTRONG {
	if spr_dir == 1 right_down = random_func(6, 1, 1);
	else left_down = random_func(6, 1, 1);
	}
}

if state == PS_IDLE && attack == AT_DSTRONG && state_timer < 2 {
	if ai_target.y-y < -40 && ((ai_target.x-x)*spr_dir > 100) {
		down_down = true;
		attack_down = true;
	}
	if (ai_target.x-x)*spr_dir > 200 {
		left_down = true;
		attack_down = true;
	}
}







/*
if (ai_recovering){
    if (move_cooldown[AT_USPECIAL] > 0){
        // use Fspecial when Uspecial is on cooldown
        if ((has_walljump || y < get_stage_data(SD_Y_POS) + 16) && y > get_stage_data(SD_Y_POS) - 32){
            up_down = false;
            special_pressed = true;
        }
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
    if (attack == AT_USPECIAL){
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
            if (!ai_recovering){
                if ((ai_target.x - x)*spr_dir > 250){
                    if (ai_target.y < y-64){
                        joy_pad_idle = true; // throw bamboo at natural arc
                    } else {
                        joy_pad_idle = false;
                        joy_dir = 90 - 90*spr_dir; // throw bamboo forward
                    }
                    special_down = true;
                } else if (ai_target.y < y-300){
                    joy_pad_idle = false;
                    joy_dir = 90 + 90*spr_dir; //throw bamboo upward
                    special_down = true;
                } else {
                    joy_pad_idle = false;
                    // aim in their general direction
                    joy_dir = point_direction(x,y,ai_target.x,ai_target.y);
                    // throw straight up if enemy is behind you
                    if (spr_dir == 1 && joy_dir > 80 && joy_dir < 280)
                        joy_dir = 180;
                    else if (spr_dir == -1 && (joy_dir < 100 || joy_dir > 260))
                        joy_dir = 0;
                    special_down = false;
                }
            } else { // ai_recovering is true
                special_down = true; //always throw full distance
            }
        }
    }
    
    if (attack == AT_DSPECIAL && window == 2){
        if ((ai_target.x - x)*spr_dir > 100){
            if (spr_dir == 1){
                right_down = true;
                left_down = false;
            } else {
                left_down = true;
                right_down = false;
            }
        } else if ((ai_target.x - x)*spr_dir > 40){
            left_down = false;
            right_down = false;
        } else {
            if (spr_dir == 1){
                right_down = false;
                left_down = true;
            } else {
                left_down = false;
                right_down = true;
            }
        }
    }
}