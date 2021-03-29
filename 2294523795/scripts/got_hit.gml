///
 ///2B please, no sfx_blow, no, no, it hurt me, just dont, AHHhhh
 if string_count("2b", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME))) > 0 {

if enemy_hitboxID.attack != AT_NAIR and ((enemy_hitboxID.attack != AT_USPECIAL) or (enemy_hitboxID.attack ==  AT_USPECIAL && vsp > 0)) 
and ((enemy_hitboxID.attack != AT_FSTRONG) or (enemy_hitboxID.attack ==  AT_FSTRONG && enemy_hitboxID.hbox_num > 1)){
	
sound_stop(asset_get("sfx_blow_weak1"))
sound_stop(asset_get("sfx_blow_weak2"))
sound_stop(asset_get("sfx_blow_medium1"))
sound_stop(asset_get("sfx_blow_medium2"))
sound_stop(asset_get("sfx_blow_medium3"))
sound_stop(asset_get("sfx_blow_heavy1"))
sound_stop(asset_get("sfx_blow_heavy2"))

if enemy_hitboxID.damage < 4 {
   sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.4)
      sound_play(sound_get("slicel"))
}

if enemy_hitboxID.damage <= 8 and enemy_hitboxID.damage >= 4 {
	   sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.4)
	   	   sound_play(sound_get("slice"))
	spawn_hit_fx(x,y - 40, 303 )
}

if enemy_hitboxID.damage > 8 {
       sound_play(sound_get("sliceh2"))
	 	   sound_play(asset_get("sfx_ori_energyhit_heavy"))
	spawn_hit_fx(x,y - 40, 305 )
}
}
}