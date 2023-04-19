//a
if attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 5;
		window_timer = 0;
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 12);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}
if attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 4;
		window_timer = 0;
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_BLEED) == 1 {
    switch(my_hitboxID.attack) {
        case AT_DSPECIAL:
            if blood_special_boost {
                spawn_blood_num(12,hit_player_obj.x,hit_player_obj.y - (hit_player_obj.char_height*0.5),10,5,0,8,1);
            } else {
                spawn_blood_num(6,hit_player_obj.x,hit_player_obj.y - (hit_player_obj.char_height*0.5),5,3,0,6,1);
            }
            break;
        case AT_FSPECIAL:
            if blood_special_boost {
                spawn_blood_num(3,hit_player_obj.x,hit_player_obj.y - (hit_player_obj.char_height*0.5),6,5,0,6,1);
            } else {
                spawn_blood_num(6,hit_player_obj.x,hit_player_obj.y - (hit_player_obj.char_height*0.5),5,3,0,6,1);
            }
            break;
        default:
            spawn_blood_num(6,hit_player_obj.x,hit_player_obj.y - (hit_player_obj.char_height*0.5),5,3,0,6,1);
            break;
    }
}

//gamefeel stuff
switch(my_hitboxID.attack) {
    case AT_JAB:
    	if my_hitboxID.hbox_num < 3 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.45,0.95);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    	}
        break;
    case AT_FTILT:
	    if my_hitboxID.hbox_num == 1 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.35,0.95);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    		sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.3,1.5);
    		sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,1.25);
    		sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,0.85);
    	}
        break;
    case AT_DTILT:
    	sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,0.95);
        break;
    case AT_UTILT:
    	if my_hitboxID.hbox_num == 1 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.35,0.95);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    	}
        break;
    case AT_DATTACK:
    	sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
        break;
    case AT_NAIR:
    	if my_hitboxID.hbox_num == 1 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.35,0.95);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    		sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.3,1.5);
    		sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,1.25);
    		sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,0.85);
    	}
        break;
    case AT_FAIR:
    	sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
        break;
    case AT_BAIR:
    	if my_hitboxID.hbox_num < 3 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.45,0.95);
    		sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.15,1.45);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    		sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.25,1.55);
    	}
        break;
    case AT_UAIR:
    	sound_play(asset_get("sfx_blow_medium2"),false,noone,0.65,1.3);
        break;
    case AT_DAIR:
    	if my_hitboxID.hbox_num == 1 {
    		sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.35,0.95);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.2);
    	}
        break;
    case AT_NSPECIAL:
    	sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.35,1.25);
        break;
    case AT_FSPECIAL:
    	if my_hitboxID.hbox_num < 4 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.45,0.95);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    	}
        break;
    case AT_USPECIAL:
    	if my_hitboxID.hbox_num < 5 {
    		sound_play(asset_get("sfx_blow_weak1"),false,noone,0.45,0.95);
    		sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.25,1.45);
    	} else {
    		sound_play(asset_get("sfx_blow_medium2"),false,noone,0.45,1.3);
    		sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.35,1.55);
    	}
        break;
    case AT_DSPECIAL:
    
        break;
    case AT_FSTRONG:
    	sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.35,0.95);
    	sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.3,1.5);
    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,1.25);
    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,0.85);
        break;
    case AT_DSTRONG:
    	sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.35,0.95);
    	sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.3,1.5);
    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,1.25);
    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,0.85);
        break;
    case AT_USTRONG:
    	sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.35,0.95);
    	sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.3,1.5);
    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,1.25);
    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.25,0.85);
        break;
}


#define make_particle
/// make_particle(_sprite, _subimage, _anim_speed, _num_frames_init, _num_frames_total, _post_drawn, _lifetime, _x, _y, _scale_x = 1, _scale_y = 1, _angle = 0, _alpha = 1, _col = c_white, _fx = 0, _fx2 = 0, _speed_x = 0, _speed_y = 0, _frict_h = 0, _frict_v = 0, _grav = 0, _max_grav = 6, _id = 0)
var _sprite = argument[0], _subimage = argument[1], _anim_speed = argument[2], _num_frames_init = argument[3], _num_frames_total = argument[4], _post_drawn = argument[5], _lifetime = argument[6], _x = argument[7], _y = argument[8];
var _scale_x = argument_count > 9 ? argument[9] : 1;
var _scale_y = argument_count > 10 ? argument[10] : 1;
var _angle = argument_count > 11 ? argument[11] : 0;
var _alpha = argument_count > 12 ? argument[12] : 1;
var _col = argument_count > 13 ? argument[13] : c_white;
var _fx = argument_count > 14 ? argument[14] : 0;
var _fx2 = argument_count > 15 ? argument[15] : 0;
var _speed_x = argument_count > 16 ? argument[16] : 0;
var _speed_y = argument_count > 17 ? argument[17] : 0;
var _frict_h = argument_count > 18 ? argument[18] : 0;
var _frict_v = argument_count > 19 ? argument[19] : 0;
var _grav = argument_count > 20 ? argument[20] : 0;
var _max_grav = argument_count > 21 ? argument[21] : 6;
var _id = argument_count > 22 ? argument[22] : 0;
part_created = false;
//second part of the particle code by bernardo woo yeah
//set stuff
var new_part = {
    dead: false, //true when timer is above lifetime, makes particle invisible & particle slot re-usable
    timer: 0, //current timer
    lifetime: _lifetime, //total lifetime
    post_drawn: _post_drawn, //if true, draw in post_draw, else in pre_draw
    effect: _fx, //optional special effects, defaults to none
    effect_2: _fx2,
    color: _col, //color tint for draw_sprite_ext
    sprite_index: _sprite, //sprite
    image_index: _subimage, //current frame
    anim_speed: _anim_speed, //anim_speed, if set to -1 then animation is linear based on lifetime
    num_frames: _num_frames_total, //total frames that the animation has in case anim_speed is -1
    num_frames_init: _num_frames_init, //first frame of the linear animation
    scale_x: _scale_x, //x scale (left or right)
    scale_y: _scale_y, //y scale (upside down or nah)
    angle: _angle, //angle
    alpha: _alpha, //transparency (from 0 to 1)
    init_alpha: _alpha,
    x: _x, // x position
    y: _y, // y position
    speed_x: _speed_x, //x speed
    speed_y: _speed_y, //y speed
    frict_h: _frict_h, //horizontal friction
    frict_v: _frict_v, //vertical friction
    grav: _grav, //gravity
    max_grav: _max_grav, //max gravity
    part_id: _id //particle id for specific interactions
}

//put it in array
for(var ie=0;ie < array_length(particle_array);ie++) {
    if part_created {
        break;
    }
    if particle_array[ie].dead == true {
        particle_array[ie] = new_part;
        part_created = true;
    } else if ie == array_length(particle_array)-1 {
        var ar_length = array_length(particle_array);
        particle_array[ar_length] = new_part;
        part_created = true;
    }
}

#define spawn_blood_num
/// spawn_blood_num(_num_blood, _x, _y, _xspeed_var, _yspeed_var, _minx, _miny, _add_sprdir)
var _num_blood = argument0, _x = argument1, _y = argument2, _xspeed_var = argument3, _yspeed_var = argument4, _minx = argument5, _miny = argument6, _add_sprdir = argument7;
//leave last one as 1 for not sprdir effect
for(bl=0;bl<_num_blood;bl++) {
    make_particle(sprite_get("blood_drop"),bl,0.25,0,8,true,60,_x,_y, 1,1,0,1,c_white,0,0,
    (random_func(bl,_xspeed_var*2,true) - _xspeed_var  + _minx) * _add_sprdir,
    (random_func(bl+1,_yspeed_var,true) + _miny )*-1,
    0.015,0,0.5,12,0);
}