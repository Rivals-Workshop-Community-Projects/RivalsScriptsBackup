
















if(attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR){
	fs_force_fs = true;
}else{
	fs_force_fs = false;
}

if "superTrue" in self {
	if superTrue == 1 {
		set_attack( 49 );
	superTrue = 0

	}
}


if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_TUMBLE) && vsp > 3 && (jump_down || up_down) && (flutterTimer > 1) {
	set_attack(AT_EXTRA_1);
}

if (state == PS_ATTACK_AIR) and (attack == AT_EXTRA_1) {
	air_accel = float_air_accel;
} else {
	air_accel = default_air_accel;
	}

if !free && flutterTimer <= 60 {
    flutterTimer ++;
	flutterAttack = 0;
	if(flutterTimer % 10 == 0){
	sound_play(sound_get("Hidden_Power"));
	}
}

if state == PS_WALL_JUMP {
	if(state_timer = 0){
	flutterTimer += 30;	
	}
}

if(flutterTimer < 0){
	sound_play(sound_get("low_fly"));
	flutterTimer = 0;
}







//game start stuff
if (get_gameplay_time() == 10) {
    set_attack(AT_EXTRA_2);
}



if (timestop == true && (state_timer mod 1) == 0){
with (asset_get("oPlayer")) {
        if (player != other.player) {
        	//old_vsp = vsp;
        	//old_hsp = hsp;
            //hsp = 0;
            //vsp = 0;
            //can_fast_fall = false;
            //can_move = false;
            if (hitstop == 0 or abs(vsp) > 1 or abs(hsp) > 1 or !(state == PS_RESPAWN || state == PS_DEAD)){
            hitstop = 1;
            hitstop_full = 1;
            //old_vsp = vsp;
            //old_hsp = hsp;
            //vsp = 0;
            //hsp = 0;
            hitpause = true;
            }
        }
    }
}
if (timestop == true){
with (asset_get("oPlayer")) {
        if (player != other.player) {
        	old_vsp = vsp;
        	old_hsp = hsp;
            hsp = 0;
            vsp = 0;
            can_fast_fall = false;
            can_move = false;
            joy_pad_idle = true;
        }
    }
}


