//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 6){
		sound_play(sound_get("sfx_fstrong"));
	}
}


if (attack == AT_DAIR && window == 1 && !free){
    attack = AT_EXTRA_1;
    spawn_base_dust(x, y, "land", spr_dir);
    window = 1;
    window_timer = 0;
}

if (attack == AT_USTRONG){
	if (window == 1){
		if (hsp > 14){
			hsp = 14;
		}
		if (hsp < -14){
			hsp = -14;
		}
	}
	if (window == 2 && window_timer == 4){
		sound_play(sound_get("sfx_ustrong"));
	}
}

if (attack == AT_DSTRONG){
	if (window == 2 && window_timer == 6){
		sound_play(sound_get("sfx_dstrong"));
	}
}
if (attack == AT_NSPECIAL){
	var fruit_sound = sound_get("sfx_nspec" + string(fruit_num));
	var next_fruit_sound = sound_get("sfx_nspec" + string(fruit_num + 1));
	if (window == 1 && window_timer == 6){
		sound_play(fruit_sound);
	}
	if (window == 1 || window == 2 || window == 3){
		if (vsp > 2){
			vsp = 2;
		}
	}
	if (window == 2 && window_timer > 5|| window == 3){
		if (fruit_num < 8){
		if (shield_pressed){
			window = 4;
			window_timer = 0;
		}
		can_attack = true;
		can_jump = true;
		can_move = false;
		if (down_down && !free){
			window = 4;
			window_timer = 0;
		}
		}
		if (special_pressed){
			if (left_down){
				spr_dir = -1;
			}
			if (right_down){
				spr_dir = 1;
			}
			set_attack(AT_NSPECIAL_2);
			window = 1;
			window_timer = 0;
		}
	}
	if (window == 2 && window_timer == fruit_win_length){
		if (fruit_num < 8){
		sound_play(next_fruit_sound);
		fruit_num += 1;
		} else {
			if (left_down){
				spr_dir = -1;
			}
			if (right_down){
				spr_dir = 1;
			}
			set_attack(AT_NSPECIAL_2);
			window = 1;
			window_timer = 0;
		}
	}
	if (window == 3){
		if (window_timer <= 1){
		}
		if (window_timer == fruit_win_length && fruit_num < 8){
		sound_play(next_fruit_sound);
		fruit_num += 1;
		window = 3;
		window_timer = 0;
		}
	}
}

if (attack == AT_NSPECIAL_2){
	if (window == 1){
		if ( window_timer == 6 && !instance_exists(fruit)){
			fruit = instance_create(x + 52*spr_dir, y - 38, "obj_article2");
			switch(fruit.fruit_num){
				case 1:
				case 2:
				vsp = -1;
				break;
				case 5:
				vsp = -2;
				break;
			}
		}
	}
	if (window < 3){
		can_move = false;
	}
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (window_timer == 2){
            pellet = instance_create(x + 52*spr_dir, y - 32, "obj_article1");
            move_cooldown[AT_FSPECIAL] = 30;
        }
    }
    can_fast_fall = false;
}

if (attack == AT_FSPECIAL_2){
    if (window == 1){
    	move_timer = 0;
        if (instance_exists(pellet)){
            if (pellet.x > x && spr_dir == -1){
                spr_dir = 1;
            }
            if (pellet.x < x && spr_dir == 1){
                spr_dir = -1;
            }
        }
    }
    if (window == 2){
    	move_timer ++;
    	if (move_timer >= 150){
    		pellet.should_die = true;
    		window = 4;
    		window_timer = 0;
    	}
    	if (!instance_exists(pellet)){
    		window = 4;
    		window_timer = 0;
    	} else {
            if (pellet.x > x && spr_dir == -1){
                spr_dir = 1;
            }
            if (pellet.x < x && spr_dir == 1){
                spr_dir = -1;
            }
    	if (spr_dir == 1){
    		right_down = true;
    		left_down = false;
    	}
    	if (spr_dir == -1){
    		left_down = true;
    		right_down = false;
    	}
    	
        dot_img += 1.3;
        var add_y = noone;
        if (instance_exists(pellet_id)){
            add_y = pellet_id.char_height*.5;
        }
		var dir = point_direction(x, y, pellet.x, pellet.y + add_y);
		if (!fspecial_stuck){
		hsp = lengthdir_x(13, dir);
		vsp = lengthdir_y(13, dir);
		}
		var on_ceiling = place_meeting(x, y-1, asset_get("par_block"));
		if (on_ceiling){
			if (pellet.x < room_width*.5){
			hsp = -10;
			}
			if (pellet.x > room_width*.5){
			hsp = 10;
			}
		}
	    var wall_stuck = false;
		var BlockDetection = collision_line(x, y, x + 32*spr_dir, y, asset_get("par_block"), false, false);
		var NegBlockDetection = collision_line(x, y, x - 32*spr_dir, y, asset_get("par_block"), false, false);
		if (BlockDetection != noone || NegBlockDetection != noone || hsp == 0 || vsp == 0){
			    fspecial_stuck = true;
			    if (hsp == 0 && free && place_meeting(x + 1*spr_dir, y, asset_get("par_block"))){
			    	wall_stuck = true;
			    } else wall_stuck = false;
			    if (!on_ceiling){
				if (!wall_stuck){
			    if (hsp == 0){
			    	if (pellet.y < y){
			    	vsp = -10;
			    	}
			    	if (pellet.y > y && free){
			    	vsp = 10;
			    	}
			    	}
				} else {
			    if (pellet.x > x + 16 && spr_dir = 1 || pellet.x < x - 16 && spr_dir = -1){
			    	vsp = -10;
			    	}
				}
			    if (vsp == 0){
			    	if (pellet.x < x){
			    	hsp = -10;
			    	}
			    	if (pellet.x > x){
			    	hsp = 10;
			    	}
			    }
			    }
			} else fspecial_stuck = false;
		if (fspecial_stuck && collision_point(x+spr_dir*32, y+1, asset_get("par_jumpthrough"), 1, 1)){
			y += 4;
		}
		if (place_meeting(x, y, pellet)){
		    destroy_hitboxes();
		    window = 3;
		    window_timer = 0;
		    sound_play(sound_get("sfx_fspecial_end"));
		    create_hitbox(AT_FSPECIAL_2, 2, x, y);
		}
		if (!pellet.hydrant_stuck && fspecial_stuck && collision_line(x, y, x + 32*spr_dir, y, hydrant, false, false)){
		    create_hitbox(AT_FSPECIAL_2, 2, x, y);
    	}
    	if (pellet.hydrant_stuck == true && fspecial_stuck && collision_line(x, y, x + 32*spr_dir, y, hydrant, false, false)){
    		window = 3;
    		window_timer = 0;
		    sound_play(sound_get("sfx_fspecial_end"));
		    create_hitbox(AT_FSPECIAL_2, 2, x, y);
    	}
		fall_through = true;
    	}
    }
    if (window == 3){
    	var cur_hsp = hsp;
    	var cur_vsp = vsp;
    	if (hsp != 0){
    		hsp -= lerp(0, cur_hsp, .06);
    	}
    	if (vsp != 0){
    		vsp -= lerp(0, cur_vsp, .06);
    	}
    	move_cooldown[AT_FSPECIAL] = 999;
        if (instance_exists(pellet)){
        pellet.state = 2;
        pellet.state_timer = 0;
        }
    }
}

if (attack == AT_DAIR){
	can_wall_jump = true;
	if (window == 1 && window_timer == 1){
		prev_djumps = djumps;
		if (!has_airdodge){
			had_airdodge = false;
		} else had_airdodge = true;
		sound_play(asset_get("sfx_swipe_light1"));
	}
	if (window == 1 && window_timer == 14){
			spawn_hit_fx(x, y - 18, trail);
			fall_timer = 0;
	}
	if (window == 2){
		var max_hsp = 3.5;
		if (hsp > max_hsp){
			hsp = max_hsp;
		}
		if (hsp < -max_hsp){
			hsp = -max_hsp;
		}
		fall_timer ++;
		if (fall_timer >= 28){
			can_shield = true;
			can_jump = true;
		}
		can_fast_fall = false;
	if (window_timer == 3 || window_timer == 6){
			spawn_hit_fx(x, y - 18, trail);
	}
	if (has_hit){
		window = 3;
		window_timer = 0;
		if (left_down){
			hsp -= 3;
		}
		if (right_down){
			hsp += 3;
		}
	}
	}
	if (window == 3){
		if (has_hit){
			set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -7);
		} else reset_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED);
		if (window_timer == 1){
	    spawn_base_dust(x, y + 4, "djump", spr_dir);
		}
	}
	if (window == 4){
		if (!had_airdodge){
			has_airdodge = false;
		}
		djumps = prev_djumps;
	}
}

if (attack == AT_DATTACK){
	if (window == 1 && window_timer == 9 && !hitpause){
			spawn_hit_fx(x, y - 18, trail);
	}
	if (window == 2){
		if (has_hit){
			can_jump = true;
			can_ustrong = true;
		}
		if (jump_pressed && window_timer > 6 && !has_hit){
			window = 3;
			window_timer = 0;
		    destroy_hitboxes();
		}
		if (window_timer == 4 or window_timer == 8 or window_timer == 12 or window_timer == 16 or window_timer == 19){
			if (!hitpause){
			spawn_hit_fx(x, y - 18, trail);
			}
		}
	}
	if (window == 3){
		if (has_hit){
			can_jump = true;
		}
	}
}




if (attack == AT_JAB){
	move_cooldown[AT_JAB] = 2;
	was_parried = false;
	if (window == 3 or window == 6){
		can_attack = true;
		if (window_timer > 5){
			if (has_hit){
			if (window_timer == 10 && !attack_pressed){
				if (window == 3){
				set_state(PS_IDLE);
				}
				if (window == 6){
				window = 10;
				window_timer = 0;
				}
			}
			if (window_timer <= 10 && attack_pressed){
				window += 1;
				window_timer = 0;
			}
			} else {
			if (window_timer == 15 && !attack_pressed){
				if (window == 3){
				set_state(PS_IDLE);
				}
				if (window == 6){
				window = 10;
				window_timer = 0;
				}
			}
			if (window_timer <= 15 && attack_pressed){
				window += 1;
				window_timer = 0;
			}
			}
		}
	}
	if (window == 10){
		can_attack = true;
	}
}

if (attack == AT_USPECIAL){
    if (window == 1){
    	if (window_timer == 5){
    		if (instance_exists(trampoline)){
    			trampoline.should_die = true;
    		}
    		if (free){
    		trampoline = instance_create(x - 36, y + 36, "obj_article3");
    		}
    		if (!free){
    		trampoline = instance_create(x - 36, y + 28, "obj_article3");
    		}
    	}
    }
    if (window == 2){
    	var max_hsp = 5;
		if (hsp > max_hsp){
			hsp = max_hsp;
		}
		if (hsp < -max_hsp){
			hsp = -max_hsp;
		}
    	if (trampoline.bounces == 0 && vsp >= 0 && window_timer < 2){
    		vsp = -8;
    	}
    }
  can_fast_fall = false;
}

if (attack == AT_DSPECIAL){
	if (window == 1 && window_timer == 1){
		if (!free){
		vsp -= 8;
		}
		if (free && !instance_exists(hydrant)){
			vsp = -4;
		}
	}
    if (window == 2 && window_timer == 1 && !hitpause){
    	vsp -= 2;
    	spawn_hit_fx(x, y + 6, 144);
    	if (!instance_exists(hydrant) && hydrant_cooldown == 0){
    	hydrant_hit = create_hitbox(AT_DSPECIAL, 1, x, y + 6);
    	hydrant_cooldown = 999;
    	}
    	}
    	if (window == 2){
    		move_cooldown[AT_DSPECIAL] = 10;
    	}
    can_fast_fall = false;
    can_move = false;
}

if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == 8){
			spawn_hit_fx(x, y - 16, trail);
		}
	}
	if (window == 2){
		if (window_timer == 2 || window_timer == 4 || window_timer == 6 || window_timer == 8){
			spawn_hit_fx(x, y - 16, trail);
		}
	}
}

if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == 21 && !hitpause){
			sound_play(sound_get("sfx_taunt"));
		}
	}
	if (window == 2 && window_timer == 20){
		if (!taunt_down){
			window = 3;
			window_timer = 0;
		}
	}
}
#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

