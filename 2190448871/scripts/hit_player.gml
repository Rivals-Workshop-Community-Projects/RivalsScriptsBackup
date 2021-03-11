if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 {
	sound_play(sound_get("pound2"));
	set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, 0);
	window = 4;
	window_timer = 0;
	old_vsp = -9;
}

if my_hitboxID.attack == AT_DSPECIAL_2 {
	mariospeed += 5;
}

// if my_hitboxID.attack == AT_FSPECIAL {
// 	if mariospeed < 15 {
// 		mariospeed += my_hitboxID.damage;
// 	} else {
// 		mariospeed *= 1.4
// 	}
// }

mariospeed += ceil(my_hitboxID.damage * 0.4);
//scuttle = 0
draincooldown = 90;


if(isAllowedCancel()){
	white_flash_timer = hitstop_full;
}



// if qpu && my_hitboxID.type == 1 {
// hitstop *= 0.75;
// }

// if old_hsp > 0{
// 	if old_hsp > base_air_max{
// 		old_hsp = base_air_max;
// 	}
// }else{
// 	if old_hsp < -1*base_air_max{
// 		old_hsp = -1*base_air_max;
// 	}
// }

#define isAllowedCancel()

return (attack == AT_DTILT or attack == AT_DATTACK or attack == AT_FSPECIAL or attack == AT_DAIR)