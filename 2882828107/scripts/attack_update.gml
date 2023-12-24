// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//dust
switch(attack){
	case AT_NSPECIAL:
		if ((window == 2 || window == 3) && window_timer == 1){
			spawn_base_dust(x, y, "n_wavedash", spr_dir);
			spawn_base_dust(x + 36, y, "dash_start", -1);
			spawn_base_dust(x - 36, y, "dash_start", 1);
			sound_play(sound_get("haunt_ambience"));
		}
		break;
	case AT_DTILT:
		if ((window == 1 || window == 2) && (window_timer == 6)) || (window == 3 && (window_timer == 4)){
			spawn_base_dust(x, y + 4, "walk", spr_dir);
		}
		break;
	case AT_DATTACK:
		if (window == 1 && window_timer == 6) || (window == 2 || window == 3 || window == 4) && (window_timer mod 4 == 3){
			spawn_base_dust(x, y, "wavedash", spr_dir);
		}
		break;
	case AT_FSTRONG:
		if (window == 2 && window_timer == 4){
			spawn_base_dust(x, y, "dash_start", spr_dir);
		}
		if (window == 3 && (window_timer == 2 || window_timer == 4)){
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		break;
	case AT_USTRONG:
		if (window == 3 && window_timer == 2){
			spawn_base_dust(x, y, "land", spr_dir);
		}
		break;
	case AT_DSTRONG:
		if (window == 2 && window_timer == 4) || (window == 3 && window_timer == 5){
			spawn_base_dust(x + 30, y, "dash", -1);
			spawn_base_dust(x - 30, y, "dash", 1);
		}
		break;
}

var witchhazel_exists = false;
var jackolantern_exists = false;

with (obj_article1){
    if (player_id == other.id){
        var jackolantern_exists = true;
    }
}
with (obj_article2){
    if (player_id == other.id){
        var witchhazel_exists = true;
    }
}


if (attack == AT_JAB){
	if (window == 8){
		if (window_timer mod 4 == 1){
			sound_play(asset_get("sfx_swipe_weak2"));
		}
		if (window_timer == 8){
			if !(attack_down){
				window = 9;
				window_timer = 0;
			}
		}
	}
}


if (attack == AT_DATTACK){
	can_move = false
	if (window == 1 && free){
		vsp = 0
		hsp *= 0.8
	}
	if (window == 2 || window == 3){
		hsp = 8 * spr_dir
	}
    if (window == 2 && window_timer >= 4) || (window == 3){
		if (!attack_down || free){
			window = 4;
			window_timer = 0;
			destroy_hitboxes();
		}
		with oPlayer if id != other.id && dattack_drag == other.id {
            x = lerp(x - 8*other.spr_dir, other.x - 8*other.spr_dir, 0.5)
            y = lerp(y, other.y, 0.5)
        }
	}
	if (window == 4){
		with oPlayer if id != other.id && dattack_flick == other.id {
            x = lerp(x + 24*other.spr_dir, other.x + 24*other.spr_dir, 1)
            y = lerp(y, other.y, 0.5)
			dattack_drag = false;
        }
	}
	if (window == 5){
        with oPlayer if id != other.id && dattack_flick == other.id {
			dattack_flick = false;
        }
    }
	if (free){	
		vsp = min(vsp, 1);
		hsp = clamp(hsp, -5,5);
	}
	/*
	if (window == 2 && window_timer >= 4) || (window == 3){
		can_jump = true;
		if (shield_down){
			set_state( PS_IDLE );
			clear_button_buffer( PC_SHIELD_PRESSED );
		}
	}
	*/
}

/*
if (attack == AT_UAIR){
    if (window == 2 && window_timer >= 4) || (window == 3 || window == 4){
		vsp -= gravity_speed * 2 / 3;
		vsp = min(vsp, 1.5);
	}
}
*/

if (attack == AT_FSTRONG){
	can_move = false
    if (window == 1 || window == 2){
		if (free){
			vsp = 0
			hsp *= 0.8
		}
	}
	if (window == 1 && (window_timer == 6 || (strong_charge mod 20 == 0 && strong_charge > 0))){
		spawn_hit_fx(floor(x + (90 + strong_charge*2)*spr_dir),floor(y - 30),20)
	}
	if (window == 3){
		hsp = (20 + (strong_charge/2))*spr_dir;
	}
}

if (has_rune("L")){
	if (attack == AT_USTRONG || attack == AT_DSTRONG) && strong_charge > 1 && window < 4{
		vsp = 0;
		hsp *= 0.9
		can_move = false
	}
}

if (attack == AT_NSPECIAL){
	can_move = false;
    if (window == 2 || window == 3){
		if (free){
			vsp = min(vsp, 1.5);
			hsp = clamp(hsp, -5,5);
		}
		if (left_down && !right_down && special_down) && !(window == 2 && window_timer < 8){
			spr_dir = -1
		}
		if (right_down && !left_down && special_down) && !(window == 2 && window_timer < 8){
			spr_dir = 1
		}
	}
	//loop
	if (window == 3 && window_timer == 20){
		attack_end()
		if (special_down){
			window = 3
			window_timer = 0
		}
	}
	//end
	if ((window == 2 && window_timer >= 8) || window == 3){
		if (!special_down){
			window = 4
			window_timer = 0
		}
	}
	if (window == 4){
		can_move = true;
		sound_stop(sound_get("haunt_ambience"));
	}
}

if (attack == AT_FSPECIAL){
    if (window == 2){
		if (free){
			vsp = min(vsp, 1.5);
		}
        if (window_timer == 1){
            if (!witchhazel_exists){
			    if (witchhazel_recharge >= 180){
					if !free {
						instance_create(x + (spr_dir*50),y - 0,"obj_article2");
					} else {
						instance_create(x + (spr_dir*25),y - 0,"obj_article2");
					}
					sound_play (sound_get ("plant"));
				    witchhazel_recharge = 0
				} else if (witchhazel_recharge < 180){
				    sound_play (sound_get ("buzzer"));
				}
	    	} else {
                sound_play (sound_get ("buzzer"));
			}
        }
    }
}

if (attack == AT_USPECIAL){
    if (window == 2){
		can_move = false;
	}
	if (window == 3){
		if (window_timer == 1){
			spawn_hit_fx(floor(x),floor(y - 30),195)
			take_damage (player, -1, 3)
			if (down_down) && !(up_down){
				vsp = max(vsp, 6);
			}
		}
		if (window_timer >= 16){
			if (!free){
				if (!has_rune("C")){
					set_state( PS_PRATLAND );
				} else {
					set_state( PS_IDLE );
				}
			}
		}
	}
	if (has_rune("C")){
		uspecial_used = true;
		if (window == 3 && window_timer >= 2){
			iasa_script()
		}
	}
}

if (attack != AT_USPECIAL) && (special_pressed && up_down) && (has_rune("C")){
	set_attack( AT_USPECIAL );
}

if (attack == AT_DSPECIAL){
    if (window == 2){
		if (free){
			vsp = min(vsp, 1.5);
			hsp = clamp(hsp, -3,3);
		}
        if (window_timer == 1){
            if (jackolantern_exists){
				with (obj_article1){
					if (player_id == other.id){
						shovel = true
					}
				}
			}
			if (jackolantern_recharge >= 450){
				instance_create(x + (spr_dir*30),y - 0,"obj_article1");
				sound_play (sound_get ("plant"));
				jackolantern_recharge = 0
			} else if (!jackolantern_exists){
			    sound_play (sound_get ("buzzer"));
			}
        }
		if (window_timer == 12) && (!jackolantern_exists){
			window = 3;
			window_timer = 0;
		}
    }
}

if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == 1){
				sound_play (sound_get ("watering_cannot"));
		}
		if (window_timer > 48){
			iasa_script();
		}
	}
}

//soup
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
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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