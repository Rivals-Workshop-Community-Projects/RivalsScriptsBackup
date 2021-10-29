user_event(14);
if(current_month == 10 && current_day > 26){
    if (state == PS_SPAWN || state == PS_RESPAWN){
    spooky_idle = true;
    }
}

if (state != PS_IDLE && state != PS_SPAWN && state != PS_RESPAWN){
    if (spooky_idle == true){
        spawn_hit_fx( x + 6*spr_dir, y - char_height*.5, 144 );
    spooky_idle = false;
    }
}
/*rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))*/

if (state != PS_ATTACK_GROUND){
		sound_stop(sound_get("sfx_bleep"));
}

//Intro
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (move_cooldown[AT_DSPECIAL] > 0){
	dummy_stage = 1;
} else dummy_stage = 0;
if (has_robot = true && instance_exists(dummy)){
	dummy_stage = 2;
} else dummy_stage = 0;
//this increments introTimer every few frames, depending on the number entered
if (introTimer < 10){
    draw_indicator = false;
} else {
    draw_indicator = true;
}

var maddummy = id;
with dummy{
	if (state == 9 && state_timer == 1){
		with maddummy{
			move_cooldown[AT_DSPECIAL] = 80;
		}
	}
}

if (has_knife == true){
	cooldown_rounds_left = 0;
	cooldown_round_timer = 0;
}


var maddummy = id;
if (instance_exists(knife) == false){
	with (asset_get("pHitBox")){
		if (attack == AT_FSPECIAL && hbox_num == 1 && has_hit == false && player_id == maddummy){
			destroyed = true;
		}
	}
}

if (has_knife == false && cooldown_rounds_left == 0){
	cooldown_rounds_left = 14;
	cooldown_round_timer = cooldown_round_time_init;
}

if (cooldown_rounds_left > 0){
	cooldown_round_timer --;
	if (cooldown_round_timer == 0){
		cooldown_rounds_left -= 1;
		cooldown_round_timer = cooldown_round_time_init;
	}
}

if (cooldown_rounds_left == 1 && cooldown_round_timer == 1){
	has_knife = true;
}

if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL){
	times_through = 0;
	uspecial_hit = false;
}
//Knife Stuff

var maddummy = id;
var the_dummy = dummy;
var the_knife = knife;
var has_rune_H = has_rune("H");
with asset_get("pHitBox"){
	dummy = the_dummy;
	if (attack == AT_NSPECIAL && player_id = maddummy){
		if (has_hit == true && !can_hit_self){
			with maddummy{
		move_cooldown[AT_NSPECIAL] = 0;
			}
		}
		if (was_parried == true && hbox_num == 2){
			//destroyed = true;
		}
	}
	if (attack == AT_FSPECIAL && has_rune_H){
		if (has_hit == true){
			with maddummy{
				has_knife = true;
				move_cooldown[AT_FSPECIAL] = 60;
			}
			with the_knife{
		instance_destroy();
		exit;
			}
		}
	}
}

if (has_knife == false){
	move_cooldown[AT_FSPECIAL] = 2;
}

if (state_cat == SC_HITSTUN or state == PS_PARRY or state == PS_AIR_DODGE or state == PS_PRATFALL){
	if (instance_exists(knife)){
		with knife{
			if state != 2{
				state = 4;
				state_timer = 0;
			}
		}
	}
}

//Cheats I guess


max_djumps = phone_cheats[cheat_more_djumps];

if phone_cheats[cheat_knives] == true && has_knife == false{
	has_knife = true;
}

if phone_cheats[cheat_flight] == true{
	if shield_down && !has_airdodge{
		flying();
	}
}

if phone_cheats[cheat_infinite_dummy] && instance_exists(dummy){
	dummy.idle_timer = 0;
}

if phone_cheats[cheat_rapid] {
	move_cooldown[AT_NSPECIAL] = 0;
	if (attack == AT_NSPECIAL){
		if (window == 2 && window_timer > 10){
			if (special_pressed){
				window = 1;
				window_timer = 14;
			}
		}
	}
}
if !cussing{
	sound_stop(sound_get("sfx_bleep"));
}
if (state != PS_ATTACK_GROUND){
	cussing = false;
}

//Robo Dummy Charge

if (dspecial_charge < 0){
	dspecial_charge = 0;
}

if (state_cat == SC_HITSTUN or state == PS_PARRY or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_AIR_DODGE){
	bar_alpha -= .2;
}

if (bar_alpha < 0){
	bar_alpha = 0;
}
//I forgot what this was for.

if dspecial_charge > 0{
	if dspecial_charge >= 20 && dspecial_charge < 40{
		dummy_charge = 1;
	}
	if dspecial_charge >= 40 && dspecial_charge < 60{
		dummy_charge = 2;
	}
	if dspecial_charge >= 60 && dspecial_charge < 80{
		dummy_charge = 3;
	}
	if dspecial_charge >= 80 && dspecial_charge < 100{
		dummy_charge = 4;
	}
	if dspecial_charge >= 100 && dspecial_charge < 120{
		dummy_charge = 5;
	}
	if dspecial_charge >= 120 && dspecial_charge < 140{
		dummy_charge = 6;
	}
	if dspecial_charge >= 140 && dspecial_charge < 160{
		dummy_charge = 7;
	}
	if dspecial_charge >= 160 && dspecial_charge < 180{
		dummy_charge = 8;
	}
	if dspecial_charge >= 180 && dspecial_charge < 200{
		dummy_charge = 9;
	}
	if dspecial_charge >= 200{
		dummy_charge = 10;
	}
} else dummy_charge = 0;

//More shit if I need to put more here
#define flying()

if (vsp > 0){
	vsp --;
}
if (vsp < 0){
	vsp ++;
}
if (up_down){
	vsp = -6;
}
if (down_down){
	vsp = 6;
}
