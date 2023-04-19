// Rune I
if(attack == AT_FSTRONG && hbox_num == 4){
	if(hitbox_timer%3 == 0){
		var fs_shockwave = spawn_hit_fx( x, y, fstr_hfx );
		fs_shockwave.desired_length = 16;
		fs_shockwave.depth = -6;
	}
	if(hitbox_timer%6 == 0){sound_play(sound_get("fstrong_runei"));}
	if(!position_meeting(x, y + 1, asset_get("par_block")) && !position_meeting(x, y + 1, asset_get("par_jumpthrough"))){destroyed = true;}
	if(position_meeting(x, y - 1, asset_get("par_block"))){destroyed = true;}
}

if(attack == AT_BAIR && hbox_num == 3){
	if(hitbox_timer%25 == 1){sound_play(sound_get("bigbob_orb"));}
	if(destroyed || hitbox_timer == 120){
		sound_play(sound_get("bigbob_whiff"));
		bairsplat = spawn_hit_fx( x, y - 10, bair_splaser);
		bairsplat.desired_length = 24;
		bairsplat.depth = -7;
	}
}