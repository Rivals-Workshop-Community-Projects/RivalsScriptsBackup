//B - Reversals / Mach Cancel
switch (attack)
{
	case AT_NSPECIAL:
	case AT_USPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	trigger_b_reverse();
		break;

      case AT_JAB:
      case AT_FTILT:
      case AT_UTILT:
      case AT_DTILT:
      case AT_NAIR:
      case AT_FAIR:
      case AT_BAIR:
      case AT_UAIR:
      case AT_DAIR:
      case AT_NSPECIAL_AIR: //gus jab
      case AT_FSTRONG_2: //gus forward attack
      case AT_USTRONG_2: //gus up attack
	      if (mach_timer > 0)
            {
			move_cooldown[AT_TAUNT] = 2;
		    can_attack = has_hit && !hitpause;
		    can_jump = can_attack;
		}
		break;
}

if (!free){
	set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED, -1);
	if (attack == AT_NSPECIAL_AIR){
		was_parried = false;
	}
} else {
	reset_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED);
	reset_window_value(AT_FSTRONG_2, 1, AG_WINDOW_VSPEED);
	reset_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED);
}

if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 3){
		sound_play(asset_get("sfx_blow_heavy1"));
	}
}


if (attack == AT_USTRONG){
	if (window == 1 && window_timer == 4){
		sound_play(sound_get("sfx_succ"));
	}
	if (window == 3 && window_timer == 1){
		on_brick = false;
    	if (!instance_exists(brick)){
    		brick = instance_create(x - 38*spr_dir, y - 46, "obj_article1");
    		brick.state = 4;
    		brick.state_timer = 0;
    		if (mach_mode){
    			brick.vsp = -18;
    		} else brick.vsp = -12 - strong_charge*0.1;
    	}
	}
}

if (attack == AT_DATTACK){
	if (window == 1){
		if (!on_brick){
			on_brick = true;
			if (instance_exists(brick)){
			    spawn_hit_fx(brick.x, brick.y, 144);
				brick.should_die = true;
			    spawn_hit_fx(x, y, 144);
			}
		}
	}
}
if (attack == AT_NSPECIAL){
	if (window == 1){
		switch spr_dir{
			case 1:
			if (hsp < 6.5){
				hsp += 0.75;
			}
			if (hsp > 6.5){
				hsp = 6.5;
			}
			break;
			case -1:
			if (hsp > -6.5){
				hsp -= 0.75;
			}
			if (hsp < -6.5){
				hsp = -6.5;
			}
			
			break;
		}
	}
	if (!on_brick){
	} else{
	}
    can_wall_jump = true;
    if (window == 1 && window_timer == 5){
        air_time = 0;
    sound_play(mach_ground, true, false, 1.2, 1);
    }
    if (window == 2 || window == 3){
        mach_timer = 80;
    if (was_parried){
        window = 4;
        window_timer = 0;
    }
        can_attack = true;
        can_strong = true;
        can_special = true;
        can_ustrong = true;
        move_cooldown[AT_NSPECIAL] = 2;
        if (!hitpause){
        hsp = 6.5*spr_dir;
        }
    }
    if (window == 2){
        if (free){
            can_jump = true;
        }
        if (!free){
            air_time = 0;
            /*if right_pressed && spr_dir = -1 || left_pressed && spr_dir = 1{
                set_state(PS_WALK_TURN);
            sound_stop(mach_ground);
            }*/
        }
        if (jump_pressed && !free && !hitpause){
            sound_stop(mach_ground);
            sound_play(mach_air, true, false, 1.2, 1);
            vsp -= 8;
            window = 3;
            window_timer = 0;
        }
        if (special_pressed && joy_pad_idle){
            window = 4;
            window_timer = 0;
            sound_stop(mach_ground);
            sound_stop(mach_air);
        }
    }
    if (window == 3){
        air_time ++;
        
        if (jump_down && air_time < 3){
        	vsp -= 1.5;
        }
        if (air_time > 10){
        can_jump = true;
        }
        if !free && window_timer > 3{
            sound_stop(mach_air);
            sound_play(mach_ground, true, false, 1.2, 1);
            window = 2;
            window_timer = 0;
        }
    }
    if (window == 2 || window == 3){
    	if (!on_brick && place_meeting(x, y, brick)){
			    var poof_fx = spawn_hit_fx(x, y - 16, 144);
			    poof_fx.depth = -10;
			    brick.should_die = true;
			    on_brick = true;
			    var prev_window = window;
			    var prev_timer = window_timer;
			    if (!free){
				    set_state(PS_ATTACK_GROUND);
			    }
			    if (free){
			    	set_state(PS_ATTACK_AIR);
			    }
			    set_attack(AT_NSPECIAL);
			    hurtboxID.sprite_index = sprite_get("nspecial_hurt")
			    window = prev_window;
			    window_timer = prev_timer;
    	}
    }
}

if (attack == AT_JAB){
	was_parried = false;
}

if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == 8){
			sound_play(sound_get("ground_hit"));
		}
	}
}

if (attack == AT_FSPECIAL){
	if (window == 1){
    	if (on_brick){
    	on_brick = false;
    	if (!instance_exists(brick)){
    		brick = instance_create(x + 12*spr_dir, y - 2, "obj_article1");
    		brick.state = 2;
    		brick.state_timer = 0;
    		brick.hsp = 0;
    		brick.vsp = -4;
    	}
    	}
		if (mach_mode){
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8.5);
		} else reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
		if (window_timer == 5){
			if (free){
				vsp = -5;
			}
		}
	}
    if (window == 2){
		if (window_timer == 8 && !hitpause || window_timer == 16 && !hitpause){
			sound_play(sound_get("lariatspin"));
		}
		if (has_hit){
			can_jump = true;
		}
    	move_cooldown[AT_FSPECIAL] = 30;
    }
    if (window == 3){
    	move_cooldown[AT_FSPECIAL] = 30;
    }
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
    if (window == 1){
    	if (!on_brick){
    		spawn_hit_fx(brick.x, brick.y, 144);
    		brick.should_die = true;
    		on_brick = true;
    	}
    	if (window_timer == 2){
    		sound_play(sound_get(mach_mode ? "uppercut2" : "groundpoundstart"));
    	}
    	if (window_timer == 3){
    		spawn_base_dust(x, y, "djump", 0);
    		if (!hitpause){
    		vsp = (mach_mode ? -14 : -12);
    		if (mach_mode){create_hitbox(AT_USPECIAL, 3, x, y);}
    		}
    	}
    }
    if (window == 1 || window == 2){
    	can_wall_jump = true;
    }
    if (window == 2){
    	if (vsp < fast_fall + 2 && vsp >= 6){
    		vsp += gravity_speed*2;
    	}
    }
    if (window == 3 && window_timer <= 1){
    	sound_stop(pound_loop);
    }
}

if (attack == AT_DSPECIAL){
    if (window == 1){
    	//debug purposes
    	if (instance_exists(brick)){
    		brick.should_die = true;
    	}
    	if (window_timer == 4){
    		sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.4, 1);
    	}
    }
    if (window == 2){
    	on_brick = false;
    	if (!instance_exists(brick)){
    		brick = instance_create(x + 12*spr_dir, y - 2, "obj_article1");
    		if (free){
    			brick.vsp = -8;
    		}
    		if (mach_mode){
    			brick.vsp = -12;
    		}
    	}
    }
}

if (attack == AT_DSPECIAL_2){
	if (window == 1 && window_timer == 6){
		sound_play(asset_get("sfx_swipe_weak2"));
	}
	if (vsp > 5){
		vsp = 5;
	}
	if (instance_exists(brick) && brick.state != 3 && window == 1 && window_timer == 8){
		brick.state = 3;
		brick.state_timer = 0;
	}
	if (place_meeting(x, y, brick) && !on_brick){
		on_brick = true;
		if (!free){
			set_state(PS_IDLE);
		} else set_state (PS_IDLE_AIR);
		spawn_hit_fx(x, y - 16, 144);
		brick.should_die = true;
		move_cooldown[AT_DSPECIAL] = 30;
	}
}

if (attack == AT_DAIR){
    if (has_hit){
    	move_cooldown[AT_DAIR] = 2;
    }
    if (window == 1){
    	if (!free){
    		set_state(PS_LANDING_LAG);
    	}
    	if (on_brick){
    	on_brick = false;
    	if (!instance_exists(brick)){
    		brick = instance_create(x + 12*spr_dir, y - 2, "obj_article1");
    		brick.state = 2;
    		brick.state_timer = 0;
    		brick.hsp = 0;
    		brick.vsp = -4;
    	}
    	}
    	dust_spawned = false;
        fall_timer = 0;
        if (window_timer <= 1){
            if left_down{
                spr_dir = -1;
            }
            if right_down{
                spr_dir = 1;
            }
        }
    }
    if (window == 2){
    	switch(spr_dir){
    		case 1:
    		if (hsp < -2){
    			hsp = -2;
    		}
    		break;
    		case -1:
    		if (hsp > 2){
    			hsp = 2;
    		}
    		break;
    	}
        can_wall_jump = true;
        mach_timer = 60;
        fall_timer ++;
        if (fall_timer >= 35){
            can_shield = true;
            can_jump = true;
            can_special = true;
        }
        can_fast_fall = false;
    }
    if (!free & !dust_spawned){
    	spawn_base_dust(x, y, "djump", 0);
    	dust_spawned = true;
    }
}

if (attack == AT_TAUNT){
	
	if (window = 1 && window_timer = 1){
          taunt_free = free;
          sound_play(sound_get("sfx_taunt"),0,0,1,0.9 + ((random_func(4,1,false)*0.2)) )
	}
        if (taunt_free && !free){
            iasa_script();
            set_state(PS_LANDING_LAG);
        }
}

#define CreateAfterimage()// written by Lukaru
{
if (afterimage_colour = 1) var _noismage = $5555FF  
else if (afterimage_colour = 2) var _noismage = $77FF77
else var _noismage = c_white


    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:_noismage, timer:0, timerMax:20};
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
