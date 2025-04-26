switch(my_hitboxID.attack) 
{	
	case AT_JAB:
		if my_hitboxID.hbox_num == 1{
			if focused_fury == 0{
				wrath_meter+=1
			}else{
				focused_fury_timer+=20
			}
		}
		if my_hitboxID.hbox_num == 2{
			if focused_fury == 0{
				wrath_meter+=3
			}else{
				focused_fury_timer+=30
			}
		}
		if my_hitboxID.hbox_num == 3{
			if focused_fury == 0{
				wrath_meter+=1
			}else{
				focused_fury_timer+=10
			}
		}
		if my_hitboxID.hbox_num == 4{
			if focused_fury == 0{
				wrath_meter+=1
			}else{
				focused_fury_timer+=10
			}
		}
		if my_hitboxID.hbox_num == 5{
			wrath_meter+=15
		}
		if my_hitboxID.hbox_num == 6{
			focused_fury_timer+=240
		}
	break;
	case AT_DATTACK:
		if my_hitboxID.hbox_num == 1{
			sound_play(sound_get("hit4"),false,noone,0.8,1.2);
			if focused_fury == 0{
				wrath_meter+=2
			}else{
				focused_fury_timer+=30
			}
		}
		if my_hitboxID.hbox_num == 2{
			sound_play(sound_get("hit4"),false,noone,0.9,1.0);
			wrath_meter+=4
			
		}
		if my_hitboxID.hbox_num == 3{
			sound_play(sound_get("hit1"),false,noone,0.9,1.0);
			focused_fury_timer+=50
		}
		if my_hitboxID.hbox_num == 4{
			sound_play(sound_get("hit4"),false,noone,0.8,1.2);
		}
	break;
	case AT_FTILT:
		if my_hitboxID.hbox_num == 1{
			wrath_meter+=7
		}
		if my_hitboxID.hbox_num == 2{
			focused_fury_timer+=60
		}
	break;
	case AT_UTILT:
		switch(my_hitboxID.hbox_num)
        {
        case 1:
        	if my_hitboxID.hbox_num == 1{
				if focused_fury == 0{
				wrath_meter+=7
				}else{
				focused_fury_timer+=60
				}
			}
        break;
        case 2:
        	focused_fury_timer+=30
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
            && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
                && was_parried == false
            && hit_player_obj.clone == false) {
                
                //transition to the 'throw' part of the attack.
                destroy_hitboxes();
                attack_end();
                set_attack_value(attack, AG_NUM_WINDOWS, 6);
                window = 4;
                window_timer = 0;

                //if this attack hasn't grabbed a player yet, grab the player we just hit.
                if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
                
                //if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
                else {
                    var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
                    var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
                    if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
                }
            }
            hit_player_obj.y = floor(lerp(hit_player_obj.y, y-90, .5));
            hit_player_obj.x = floor(lerp(hit_player_obj.x, x-10*spr_dir, .5));
            hit_player_obj.spr_dir = -spr_dir;
        break;
        case 3:
            focused_fury_timer+=55
            hit_player_obj.x = floor(lerp(hit_player_obj.x, x+90*spr_dir, .5));
            hit_player_obj.y = floor(lerp(hit_player_obj.y, y +60, .5));
            grabbed_player_obj = noone;
        break;
        }
	break;
	case AT_DTILT:
		if my_hitboxID.hbox_num == 1{
			if focused_fury == 0{
				wrath_meter+=2
			}else{
				focused_fury_timer+=30
			}
		}
		if my_hitboxID.hbox_num == 2{
			if focused_fury == 0{
				wrath_meter+=4
			}else{
				focused_fury_timer+=32
			}
		}
	break;
	case AT_FSTRONG:
		switch(my_hitboxID.hbox_num)
        {
		case 1:
			sound_play(sound_get("hit1"),false,noone,0.8,1.0);
			wrath_meter+=15
		break;
		case 2:
			focused_fury_timer+=180
			sound_play(sound_get("hit1"),false,noone,0.8,1.0);
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
            && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
                && was_parried == false
            && hit_player_obj.clone == false) {
                
                //transition to the 'throw' part of the attack.
                destroy_hitboxes();
                attack_end();
                set_attack_value(attack, AG_NUM_WINDOWS, 8);
                window = 4;
                window_timer = 0;
            }
        break;
        case 3:
        	sound_play(sound_get("hit1"),false,noone,1.0,0.8);
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.9,1.0);
        break;
        }
	break;
	case AT_USTRONG:
		if my_hitboxID.hbox_num == 1{
			sound_play(sound_get("hit1"),false,noone,0.8,1.0);
			//sound_play(asset_get("sfx_poison_hit_strong"),false,noone,0.8,1.0);
			wrath_meter+=15
		}
		if my_hitboxID.hbox_num == 2{
			sound_play(sound_get("hit4"),false,noone,0.9,1.0);
			wrath_meter+=15
		}
		if my_hitboxID.hbox_num == 3{
			sound_play(sound_get("hit1"),false,noone,1.0,0.8);
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.9,1.0);
			//sound_play(asset_get("sfx_poison_hit_strong"),false,noone,0.8,1.0);
		}
		if my_hitboxID.hbox_num == 4{
			sound_play(sound_get("hit1"),false,noone,0.8,1.0);
			//sound_play(asset_get("sfx_poison_hit_strong"),false,noone,0.8,1.0);
		}
	break;
	case AT_DSTRONG:
		if my_hitboxID.hbox_num == 1{
			sound_play(asset_get("sfx_poison_hit_med"),false,noone,0.8,1.0);
			wrath_meter+=15
		}
		if my_hitboxID.hbox_num == 2{
			sound_play(asset_get("sfx_poison_hit_strong"),false,noone,0.8,1.0);
		}
	break;
	case AT_NAIR:
		if my_hitboxID.hbox_num == 1{
			if focused_fury == 0{
				wrath_meter+=5
			}else{
				focused_fury_timer+=50
			}
		}
		if my_hitboxID.hbox_num == 2{
			if focused_fury == 0{
				wrath_meter+=4
			}else{
				focused_fury_timer+=40
			}
		}
	break;
	case AT_FAIR:
		if my_hitboxID.hbox_num <= 5{
			if focused_fury == 0{
				wrath_meter+=1
			}else{
				focused_fury_timer+=10
			}
		}
		if my_hitboxID.hbox_num == 6{
			wrath_meter+=3
			sound_play(sound_get("hit1"),false,noone,0.8,1.1);
		}
		if my_hitboxID.hbox_num == 7{
			if focused_fury == 0{
				wrath_meter+=6
			}else{
				focused_fury_timer+=40
			}
			sound_play(sound_get("hit1"),false,noone,0.9,1.0);
		}
		if my_hitboxID.hbox_num == 8{
			focused_fury_timer+=60
			sound_play(sound_get("hit1"),false,noone,1.0,0.8);
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.9,1.0);
		}
	break;
	case AT_BAIR:
		if my_hitboxID.hbox_num == 1{
			wrath_meter+=8
			sound_play(sound_get("hit4"),false,noone,0.8,1.0);
		}
		if my_hitboxID.hbox_num >= 2{
			if focused_fury == 0{
				wrath_meter+=11
			}else{
				focused_fury_timer+=60
			}
			sound_play(sound_get("hit1"),false,noone,0.9,1.0);
		}
	break;

	case AT_UAIR:
		switch(my_hitboxID.hbox_num)
        {
        case 1:
        	if focused_fury == 0{
				wrath_meter+=1
			}else{
				focused_fury_timer+=20
			}
        break;
        case 2:
        	if focused_fury == 0{
				wrath_meter+=6
			}else{
				focused_fury_timer+=50
			}
        break;
        case 3:
        	focused_fury_timer+=20
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
            && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
                && was_parried == false
            && hit_player_obj.clone == false) {
                
                //transition to the 'throw' part of the attack.
                destroy_hitboxes();
                attack_end();
                set_attack_value(attack, AG_NUM_WINDOWS, 8);
                window = 4;
                window_timer = 0;
            }
        break;
        case 4:
        	focused_fury_timer+=55
        break;
        }
	break;
	case AT_DAIR:
		if my_hitboxID.hbox_num == 1{
			wrath_meter+=7
		}
		if my_hitboxID.hbox_num == 2{
			focused_fury_timer+=60
		}
	break;
	case AT_NSPECIAL:
		if my_hitboxID.hbox_num == 1{
			wrath_meter+=2
		}
		if my_hitboxID.hbox_num == 2{
			if focused_fury == 0{
				wrath_meter+=3
			}else{
				focused_fury_timer+=40
			}
		}
		if my_hitboxID.hbox_num == 2{
			if focused_fury == 0{
				wrath_meter+=4
			}else{
				focused_fury_timer+=60
			}
		}
		if my_hitboxID.hbox_num == 4{
			if focused_fury == 0{
				wrath_meter+=5
			}else{
				focused_fury_timer+=80
			}
		}
		if my_hitboxID.hbox_num == 5{
			if focused_fury == 0{
				wrath_meter+=7
			}else{
				focused_fury_timer=3
			}
			sound_play(sound_get("hit1"),false,noone,0.9,1.0);
		}
		if my_hitboxID.hbox_num == 6{
			if focused_fury == 0{
				wrath_meter+=10
			}else{
				focused_fury_timer=3
			}
			sound_play(sound_get("hit1"),false,noone,1.0,0.8);
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.9,1.0);
		}
	break;
	case AT_FSPECIAL:
		switch(my_hitboxID.hbox_num)
        {
        case 1:
        	hit_player_obj.y = floor(lerp(hit_player_obj.y, y-10, .5));
        	hit_player_obj.x = floor(lerp(hit_player_obj.x, x+50*spr_dir, .5));
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
            && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
                && was_parried == false
            && hit_player_obj.clone == false) {
                
                //transition to the 'throw' part of the attack.
                destroy_hitboxes();
                attack_end();
                set_attack_value(attack, AG_NUM_WINDOWS, 7);
                window = 4;
                window_timer = 0;
            }
        break;
        }
	break; 
	case AT_USPECIAL:
		if my_hitboxID.hbox_num == 1{
			wrath_meter+=11
			sound_play(sound_get("hit1"),false,noone,0.8,1.0);
			//sound_play(asset_get("sfx_poison_hit_strong"),false,noone,0.8,1.0);
		}
		if my_hitboxID.hbox_num == 2{
			wrath_meter+=8
			sound_play(sound_get("hit4"),false,noone,0.9,1.0);
		}
		if my_hitboxID.hbox_num >= 3{
			if focused_fury == 0{
				wrath_meter+=11
			}else{
				focused_fury_timer=3
			}
			sound_play(sound_get("hit1"),false,noone,1.0,0.8);
			sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.9,1.0);
			//sound_play(asset_get("sfx_poison_hit_strong"),false,noone,0.8,1.0);
		}
	break;
	case AT_DSPECIAL:
		if my_hitboxID.hbox_num == 1{
			wrath_meter+=3
		}
		if my_hitboxID.hbox_num == 2{
			if focused_fury == 0{
				wrath_meter+=3
			}else{
				focused_fury_timer+=40
			}
		}
		if my_hitboxID.hbox_num == 3{
			if focused_fury == 0{
				wrath_meter+=1
			}else{
				focused_fury_timer+=10
			}
		}
	break;
}
    