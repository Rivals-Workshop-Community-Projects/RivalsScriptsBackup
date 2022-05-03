//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
	case AT_USPECIAL_2:
	case AT_EXTRA_1:
	case AT_DSPECIAL_2:
	case AT_FSPECIAL_2:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	case AT_FTILT:
			if window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 50, y, "dash_start", -spr_dir);
		}
		break;
	case AT_DATTACK:
		if window == 3 && window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 50, y, "dash_start", -spr_dir);
		}
		break;
	case AT_USTRONG:
	if(window == 2 && window_timer = 2){
		sound_play(asset_get("sfx_orcane_dsmash"));
	}
	case AT_USTRONG_2:
		if window == 2 && window_timer == 2{
			spawn_base_dust(x + spr_dir * 70, y, "dash_start", -spr_dir);

		}
		break;
	case AT_DSTRONG_2:
		if window == 2 && window_timer == 2{
			spawn_base_dust(x + spr_dir * 70, y, "dash_start", -spr_dir);

		}if window == 2 && window_timer == 8{
			spawn_base_dust(x + spr_dir * -70, y, "dash_start", spr_dir);

		}
		break;
	case AT_DSTRONG:
		if window == 2 && window_timer == 3{
			spawn_base_dust(x + spr_dir * 70, y, "dash_start", -spr_dir);
			sound_play(asset_get("sfx_orcane_fspecial"));
		}if window == 2 && window_timer == 11{
			spawn_base_dust(x + spr_dir * -70, y, "dash_start", spr_dir);
			sound_play(asset_get("sfx_orcane_fspecial"));
		}
		break;
}

if(attack == AT_FTILT){
if(window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)-1){
	vfx = spawn_hit_fx(x + spr_dir * 140, y - 40, spice_effect);
	vfx.depth = -10;
}
}

if(attack == AT_JAB){
	if(window == 1 && window_timer = get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)-1){
		sound_play(sound_get("sfx_snap"));
		vfx = spawn_hit_fx(x + spr_dir * 60, y - 55, spark_effect);
	}
}

if(attack == AT_DTILT){
	if(window == 1 && window_timer = get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_orcane_fspecial"));
	}
}

if(attack == AT_USPECIAL){
	hud_offset = 40;
	can_fast_fall = false;
	can_wall_jump = true;
	if(window == 1 && window_timer = 1){
		uspec_angle = 0
	}
	if(window == 2 && window_timer = 1){
		sound_play(asset_get("sfx_bubblemouth"));
	}if(window == 2 || window == 3){
		if(window_timer % 2 == 0 && !hitpause){
			snd_rng = random_func(0, 4, true);
			if (snd_rng == 0) {
			create_hitbox(AT_USPECIAL, 1, x + spr_dir, y);
			}if (snd_rng == 1) {
			create_hitbox(AT_USPECIAL, 2, x + spr_dir, y);
			}if (snd_rng == 2) {
			create_hitbox(AT_USPECIAL, 3, x + spr_dir, y);
			}if (snd_rng == 3) {
			create_hitbox(AT_USPECIAL, 4, x + spr_dir, y);
			}
		}
	}
	//angle
	if(window == 2 || window == 3){
			if(spr_dir == 1){
				if(right_pressed || right_down){
					uspec_angle = 1;
				}if(left_pressed || left_down){
					uspec_angle = 2;
				}
			}	if(spr_dir == -1){
				if(right_pressed || right_down){
					uspec_angle = 2;
				}if(left_pressed || left_down){
					uspec_angle = 1;
				}
			}if(joy_pad_idle){
				uspec_angle = 0;
			}	
		if(uspec_angle == 0){
			spr_angle = 0;
		}if(spr_dir == 1){
				if(uspec_angle == 1){
			spr_angle = -10;
		}	if(uspec_angle == 2){
			spr_angle = 10;
		}
		}if(spr_dir == -1){
				if(uspec_angle == 1){
			spr_angle = 10;
		}	if(uspec_angle == 2){
			spr_angle = -10;
			}
		}
	}if(window == 4){
		spr_angle = 0;
	}
}

if(attack == AT_NSPECIAL){
	if(window == 2 && window_timer == 1){
		if(has_pot){
		instance_create(x + spr_dir * 20, y-8, ("obj_article1"));
		has_pot = false;
		}
	}
}

if(attack == AT_FSPECIAL){
	if(window == 1 && window_timer = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)-1){
		move_cooldown[AT_FSPECIAL] = 240;
		move_cooldown[AT_FSPECIAL_2] = 30;
		has_shrimp = false;
	}
}
if(attack == AT_FSPECIAL_2){
	if(window == 1 && window_timer = get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH)-1){
		move_cooldown[AT_FSPECIAL_2] = 120;
	}
}

if(attack == AT_FAIR){
	if(window == 1 && window_timer = get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_swipe_medium2"), false, noone, 1, 0.9);
	}
}if(attack == AT_UAIR){
	if(window == 1 && window_timer = get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 1, 1.05);
	}
}

if(attack == AT_USPECIAL_2){
	can_fast_fall = false;
	if(window == 1 && window_timer = get_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_ori_dtilt_perform"));
		spawn_hit_fx(x + spr_dir * -10 , y - 60, uspec_effect);
		vsp = 0;
	}if(window == 3 && !free){
		set_state(PS_PRATFALL);
	}if(window == 3 || window == 4){
		can_wall_jump = true;
	}
}if(attack == AT_EXTRA_1){
	can_fast_fall = false;
	if(window == 1 && window_timer = get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_ori_dtilt_perform"));
		spawn_hit_fx(x + spr_dir * -10 , y - 60, uspec_effect);
		vsp = 0;
	}if(window == 3 && !free){
		set_state(PS_PRATFALL);
	}if(window == 3 || window == 4){
		can_wall_jump = true;
	}if(window == 2 || window == 3){
		if(window_timer % 2 == 0){
		spawn_hit_fx(x + spr_dir, y, uspec_after_effect);	
		}
	}
}

if(attack == AT_DSPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	if(window != 2){
		can_move = false;
	}if(window == 2){
		can_move = true;
		}if(window == 1 && window_timer = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)-1){
		spawn_hit_fx(x + spr_dir * 10 , y, 150);
		vsp = 0;
	}if(window == 3 && window_timer = get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_waterwarp"));
	}if(window == 4){
		if(window_timer % 3 == 0){
		spawn_hit_fx(x + spr_dir * 10, y - 45, dspec_effect);	
		}
	}
if(window == 2 && window_timer = 2){
	move_cooldown[AT_DSPECIAL] = 99999;
	move_cooldown[AT_DSPECIAL_2] = 99999;
	}
	if(window == 2 && window_timer = get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)-1){
		if(left_down || left_pressed){
			spr_dir = -1;
		}	if(right_down || right_pressed){
			spr_dir = 1;
		}
	}if(window == 2 || window == 3 && free){
		if(shield_pressed || shield_down){
			if(has_airdodge){
			set_state(PS_AIR_DODGE);
			}
		}
	}
}

if(attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	can_wall_jump = true;
	can_move = false;
if(window == 1 && window_timer = 1){
	move_cooldown[AT_DSPECIAL] = 99999;
	move_cooldown[AT_DSPECIAL_2] = 99999;
	}
	if(window == 1 && free){
		set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 7);
	}	if(window == 1 && !free){
		set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
	}
	if(has_hit){
		set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
	}if(window == 3 && window_timer = get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH)-1){
	move_cooldown[AT_DSPECIAL] = 99999;
	move_cooldown[AT_DSPECIAL_2] = 99999;
	}
}

if(attack == AT_FSTRONG){
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 9 + strong_charge/7);
	if(window == 2 && window_timer = 1){
		sound_play(asset_get("sfx_orca_soak"));
	}
}
if(attack == AT_TAUNT){
	if(window == 2 && window_timer = get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH)-1){
		if(taunt_down){
	window_timer = 0;
		}
	}if(window == 2 && window_timer % 5 == 0 && !hitpause){
	salt = create_hitbox(AT_TAUNT, 1, x + spr_dir * 38, y - 55);	
	snd_rng = random_func(0, 8, true);
	if (snd_rng == 0) {
		salt.hsp = 2 * spr_dir;
		salt.vsp = 1;
		salt.length = 30;
	}if (snd_rng == 1) {
		salt.hsp = 3 * spr_dir;
		salt.vsp = 1.5;
		salt.length = 35;
	}if (snd_rng == 2) {
		salt.hsp = 2.5 * spr_dir;
		salt.vsp = 2;
		salt.length = 25;
	}if (snd_rng == 3) {
		salt.hsp = 2 * spr_dir;
		salt.vsp = 2.5;
		salt.length = 30;
	}if (snd_rng == 4) {
		salt.hsp = 1.2 * spr_dir;
		salt.vsp = 2;
		salt.length = 35;
	}if (snd_rng == 5) {
		salt.hsp = -0.5 * spr_dir;
		salt.vsp = 2.5;
		salt.length = 40;
	}if (snd_rng == 6) {
		salt.hsp = 0.75 * spr_dir;
		salt.vsp = 3;
		salt.length = 30;
	}if (snd_rng == 7) {
		salt.hsp = 1.1 * spr_dir;
		salt.vsp = 2;
		salt.length = 40;
	}
	}
	if(window == 1 && window_timer = 6){
		sound_play(asset_get("mfx_flashy_shing"), false, noone, 9);
	}
}

if(attack == AT_DAIR){
	hud_offset = 20;
}if(attack == AT_UTILT){
	hud_offset = 50;
}if(attack == AT_UAIR){
	hud_offset = 50;
}if(attack == AT_USTRONG_2 || attack == AT_USTRONG){
	hud_offset = 70;
}


if(attack == AT_USPECIAL && window == 1 && window_timer <= 4){
    if(shield_pressed || shield_down){
    	if(!is_scalding){
    	destroy_hitboxes();
		set_attack(AT_USPECIAL_2);
		window = 1;
		window_timer = 0;
    	}if(is_scalding){
    	destroy_hitboxes();
		set_attack(AT_EXTRA_1);
		window = 1;
		window_timer = 0;
    	}
    }
}

if(attack == AT_NSPECIAL_2){
	if(window == 1 && window_timer = 1){
		sound_play(asset_get("sfx_forsburn_cape_swipe"));
	}
}
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