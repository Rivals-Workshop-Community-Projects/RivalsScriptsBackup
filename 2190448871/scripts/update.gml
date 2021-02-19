gametime = get_gameplay_time();
if scuttle < 0 {
	scuttle += 1
}

if playvoice == 1 {


	if currentclip > 0 sound_stop(currentclip);
	currentclip = sound_play(sound_get(voiceclip));
	
	playvoice = 0;
}
if state == PS_LANDING_LAG && state_timer == 1 && attack == AT_FSPECIAL && special_down && (left_down or right_down) {
	set_attack(AT_FSPECIAL);
}
if get_player_color(player) == 6{
	introdelay = 4;
	if playintro and gametime < 5 {
		sound_play(sound_get("intro_abyss"));
		playintro = 0;
	}
}else{
	if playintro and gametime < 5 {
		sound_play(sound_get("intro"));
		playintro = 0;
	}
}
move_cooldown[AT_DSPECIAL] = (mariospeed >= 100)*2


qpu = (mariospeed >= qpu_speed)
//if qpu sound_play(asset_get("sfx_birdflap"));

if mariospeed > oldspeed {
	draincooldown = 60;
} else if draincooldown > 0{
	draincooldown--;
} else {
	mariospeed -= qpu ? 0.03 : 0.01;
}

mariospeed = clamp(mariospeed,0,100);

walk_speed = base_walk + mariospeed * 0.035;
dash_speed = base_dash + mariospeed * 0.05;
initial_dash_speed = base_dashstart + mariospeed*0.05;
air_max_speed = base_air_max + mariospeed * 0.03;
max_jump_hsp = base_jump_hsp + mariospeed * 0.01;
jump_change = base_jumpchange + mariospeed * 0.01;
leave_ground_max = base_leaveground + mariospeed * 0.05;

if !(state == PS_HITSTUN or state == PS_HITSTUN_LAND){ //MULTIHIT PROTECTION RESET
	multi_hit_protection = 0; //0 BECAUSE ONCE MARIO GETS HIT THIS NUMBER ADDS TO 1
}

if mariospeed < 60 {
	annouced = 0
}
if oldspeed <= 99 && ceil(mariospeed) >= 100 && (attack == AT_DSPECIAL) && annouced == 0{
    voiceclip = "here_we_go";
    playvoice = 1;
    annouced = 1
}



if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
    fspecial_allowed = true;
    fspecial_2_allowed = true;
    move_cooldown[AT_USPECIAL] = 0;
}

if (!fspecial_allowed) {
    move_cooldown[AT_FSPECIAL] = 10000000;
    move_cooldown[AT_FSPECIAL_2] = 10000000;
}
else{
    move_cooldown[AT_FSPECIAL] = 0;
    move_cooldown[AT_FSPECIAL_2] = 0;
}


if (state == PS_DASH or state == PS_DASH_START) and state_timer > 0 {
	if hsp < 0 && spr_dir == 1 {
		if (mariospeed < 100) mariospeed += 0.8;
		if state_timer % 3 == 0 {
			sound_play(sound_get("yah"),false,noone,0.5);
		}
	}
	
	if hsp > 0 && spr_dir == -1 {
		if (mariospeed < 100) mariospeed += 0.8;
		if state_timer % 3 == 0 {
			sound_play(sound_get("yah"),false,noone,0.5);
		}
		
	}

}


if mariospeed > 70 {
	if get_gameplay_time() % 4 == 0 {
		spawn_hit_fx (x,y, af)
	}
}

oldspeed = mariospeed;
