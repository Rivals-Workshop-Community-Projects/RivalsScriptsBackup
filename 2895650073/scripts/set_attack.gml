//set_attack

//in_effect_tracker_prev = in_effect_tracker;
//in_effect_tracker = true;

hit_only_once_storage = false;
if (attack==AT_TAUNT){
	if (down_down){
		attack = AT_TAUNT_2
	}
}

if (pratfall_queue==2){
	set_state( PS_PRATFALL )
		//print("<O> <O> <O> <O> <O> <O> <O> <O> <O> <O> <O> <O> <O>")
		//print("  <O> <O> <O> <O> <O> <O> <O> <O> <O> <O> <O> <O> <O>")
}

if (attack==AT_DSPECIAL){
	dsp_phase1 = false;
	dsp_orig_y = 0;
	if (/*free ||*/ move_cooldown[AT_DSPECIAL]>0){
		attack = AT_DSPECIAL_2;
	}
}

if (door_storage != -4){
	if (attack==AT_NSPECIAL && !free){
		if (point_distance(door_storage.x, door_storage.y, x, y) <= 40){
			if (door_storage.state==1){
				attack = AT_NSPECIAL_2;
				if (sign( door_storage.x - x )!=0){
					spr_dir = sign( door_storage.x - x );
				}
			}
		}
	}
}
if (attack != AT_FSTRONG &&
	attack != AT_DSTRONG &&
	attack != AT_USTRONG &&
	attack != AT_USPECIAL &&
	attack != AT_NSPECIAL &&
	attack != AT_NSPECIAL_2 &&
	attack != AT_FSPECIAL &&
	attack != AT_DSPECIAL &&
	attack != AT_DSPECIAL_2 &&
	attack != AT_TAUNT_2 ){
	in_effect_tracker_prev = in_effect_tracker;
	in_effect_tracker = true;
	//white_flash_timer = 3;
	if (!no_equip_sound){
	spawn_hit_fx( x, y, effectequip_faded );
	sound_stop(sound_get("effect_unequip_short"));
	//sound_play(sound_get("effect_equip_short"), false, noone, 0.1);
	}
	//print("detect: equip")
}