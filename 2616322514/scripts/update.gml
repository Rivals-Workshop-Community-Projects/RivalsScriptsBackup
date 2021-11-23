muno_event_type = 1;
user_event(14);

if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

if (instance_exists(terrain) && terrain.state == 1){
if (place_meeting(x, y, terrain) && electro_charged == false){
	spawn_hit_fx( x - 10*spr_dir, y - 40, electro_burst );
	sound_play(sound_get("sfx_charge"));
	electro_charged = true;
}
if (!place_meeting(x, y, terrain) && electro_charged == true && state != PS_ATTACK_GROUND && state != PS_WAVELAND && state != PS_ATTACK_AIR && force_discharge == false){
	spawn_hit_fx( x - 10*spr_dir, y - 40, electro_burst );
    sound_play(sound_get("sfx_terrain_disappear"));
	electro_charged = false;
}
} else if electro_charged == true && state != PS_ATTACK_GROUND && state != PS_WAVELAND && state != PS_ATTACK_AIR && force_discharge == false{
	spawn_hit_fx( x - 10*spr_dir, y - 40, electro_burst );
    sound_play(sound_get("sfx_terrain_disappear"));
	electro_charged = false;
}
if (force_discharge == true && electro_charged == true){
	spawn_hit_fx( x - 10*spr_dir, y - 40, electro_burst );
    sound_play(sound_get("sfx_terrain_disappear"));
	electro_charged = false;
	force_discharge = false;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && electro_start == true){
	electro_start = false;
}

if (free == false or state_cat == SC_HITSTUN or state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL_2] = 0;
}

with (oPlayer){
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state_cat != SC_HITSTUN && countered == true{
		countered = false;
	}
}

if (electro_charged == true){
	wave_land_adj       = 2;
	wave_land_time      = 12;
} else{ wave_land_adj       = 1.3;
wave_land_time      = 6;
}

if "superTrue" in self {
if superTrue == 1 {
set_attack(49);
///type your super code
superTrue = 0

}
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if (attack == AT_USPECIAL && window == 2){
    if (times_through < 3){
    if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) / 2 && uspecial_frame == 0){
        uspecial_frame = 1;
    } else if (window_timer == 1 && uspecial_frame == 1){
        uspecial_frame = 0;
    }
    } else if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) / 2 && uspecial_frame != 3){
        uspecial_frame = 3;
    }
}
}