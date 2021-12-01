
if(free and state != PS_RESPAWN and state_cat != SC_HITSTUN and down_pressed and !fast_falling and !(state == PS_DOUBLE_JUMP and state_timer < 9) and state != PS_PRATFALL){
	if!(state == PS_ATTACK_AIR and (attack == AT_USPECIAL or attack == AT_DSPECIAL)){
		vsp = 0;
		do_a_fast_fall = true;
	}
}
if(state == PS_DOUBLE_JUMP){
	 if(vsp < -7){
        vsp = -7;
    }
}

if(state == PS_PARRY and state_timer == 0 and get_player_color(player) > 15){
	sound_play(sound_get("parry_grunt"));
}

if(state == PS_LANDING_LAG){
	sound_stop(attack_audio);
}
if(state == PS_PRATFALL){
	can_fast_fall = true;
}

if(wall_lockout > 0){
	wall_lockout--;
}

if(!free and (state == PS_LAND or state == PS_LANDING_LAG or state == PS_PRATLAND) and !place_meeting(x, y+4, fspecial_wall)){
	move_cooldown[AT_FSPECIAL_AIR] = 0;
	move_cooldown[AT_FSPECIAL] = 0;
}

shadowball_hit_timer--;
if(shadowball_hit_player!=noone and (shadowball_hit_player.state == PS_DEAD or shadowball_hit_player.state == PS_RESPAWN)){
	shadowball_hit_timer = 0;
	shadowball_hit = false;
}

if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
    galaxy_timer = 90;
    sound_play(sound_get("supereffective"));
}
galaxy_timer = max(galaxy_timer-1,0)
var time = get_gameplay_time() - 27;
if(time == 3){
	sound_play(sound_get("ball_toss"));
} else if (time == 27){
	sound_play(sound_get("ball_open"));
} else if (time == 52){
	sound_play(sound_get("gengar_cry"));
}


if(bartholomew and time < 6000 and state==PS_ATTACK_GROUND){
	bartholomew = false;
	var seed = random_func(1, 7, true);
	if(seed > 3){
		print("muted 1")
		sound_stop(sound_get("ball_toss"));
	}
	if(seed > 4){
		print("muted 2")
		sound_stop(sound_get("ball_open"));
	}
	if(seed > 5){
		print("muted 3")
		sound_stop(sound_get("gengar_cry"));
	}
}