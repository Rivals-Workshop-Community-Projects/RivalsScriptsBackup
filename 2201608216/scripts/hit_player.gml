// Variable Definition
var hitmove = my_hitboxID.attack;

if (hitmove == AT_USPECIAL){
		UpSpecialHitReset = true;
}

if (hitmove == AT_DSPECIAL && my_hitboxID.hbox_num == 4){
		sound_play(asset_get("sfx_fish_collect"));
}

if (hitmove == AT_FSPECIAL){
		hit_player_obj.should_make_shockwave = false;
}

if (hitmove == AT_UAIR){
		set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 0);
		sound_stop(asset_get("sfx_shovel_hit_light1"));
}

if hitmove == AT_DSPECIAL  {
	move_cooldown[AT_DSPECIAL] = 30
}