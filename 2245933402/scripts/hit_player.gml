///


if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
    sound_play(asset_get("sfx_icehit_medium1"));
    spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 303)
}

if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 3 {
    sound_play(asset_get("sfx_icehit_medium1"));
    spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 40, 303)
}

if my_hitboxID.attack == AT_NSPECIAL && hit_player_obj.free = false {
	hit_player_obj.x += 10 * spr_dir
}

if my_hitboxID.attack == AT_NSPECIAL {
	hit_player_obj.x += 4 * spr_dir
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 {
    move_cooldown[AT_FTILT] = 2
    shake_camera(2,2)
      sound_play(asset_get("sfx_blow_medium2"));
}

if ostyle == 3 {
if my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num <= 5 && gun = 0{
	if nbullet < 5 {
    nbullet += 1
	}
}

if my_hitboxID.attack == AT_JAB && gun = 0{
	if nbullet < 5 {
    nbullet += 2
	}
}

if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num <= 2{
	bbullet = 2 
}

if my_hitboxID.attack == AT_FAIR or my_hitboxID.attack == AT_FTILT {
	if bbullet ==  0 {
		sound_play(sound_get("SGL"));

	}
	
	bbullet = 2
}

if my_hitboxID.attack == AT_UAIR  {
	if bullet ==  0 {
		sound_play(sound_get("SGL"));

	}
	bullet = 1 
}

if my_hitboxID.attack == AT_DTILT  {
	if dbullet ==  0 {
		sound_play(sound_get("SGL"));
		sound_play(sound_get("GL"));
	}
	dbullet = 1
}
}


if ostyle == 1 {
	


if my_hitboxID.damage > 3 {
	     spawn_hit_fx (hit_player_obj.x  + (random_func(1, 36, true))*spr_dir, hit_player_obj.y - 30 - random_func(2, 66, true) , 113)
	   	 sound_play(asset_get("sfx_ori_energyhit_medium")); 
	   	 with hit_player_obj {
                 take_damage( player, -1 , 2)
         }	
}


}