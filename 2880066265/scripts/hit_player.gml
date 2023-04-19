// Tornado dragging
if (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num >= 6)){
	other.eust_wildRide = true;
	other.eust_wildTime = 10;
	other.eust_wildID = id;
	eust_tornaTrack++;
	y -= 8;
}

// Fear effect
if (my_hitboxID.attack == AT_NSPECIAL && eust_isFearing && other.eust_fearCooldown == 0){
	other.eust_fearTime = floor((other.eust_fearMax + 10*(get_player_damage(other.player)/20))*(1-(spr_dir == hit_player_obj.eust_lastDir)/4));
	other.eust_fearCooldown = other.eust_fearMax + 120;
	other.eust_fearID = id;
	other.eust_outlineFlag = true;
}

// Dash attack fear delayed launch
if (my_hitboxID.attack == AT_DATTACK){
	other.eust_fearLaunchV = other.old_vsp; other.eust_fearLaunchU = other.old_hsp;
	other.eust_fearTime = 20 + (35 * has_rune("F"));
	//other.eust_fearCooldown = other.eust_fearTime + 240;
	other.eust_fearID = id;
	other.eust_willLaunch = true;
	other.eust_outlineFlag = true;
}

// Ass Kicker effect
if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1){
	if (spr_dir == hit_player_obj.eust_lastDir || has_rune("G")){	//Backstab check disabled when Rune G is active
		hit_player_obj.hitstun_factor = 8;
		hit_player_obj.hitstop *= 3;
		hitstop *= 3;
		//hit_player_obj.should_make_shockwave = true;
		hit_player_obj.eust_assKicked = 15;
		hit_player_obj.orig_knock *= 2.5;
		hit_player_obj.old_vsp *= 4;
		hit_player_obj.vsp *= 4;
		hit_player_obj.old_hsp = 0;
		hit_player_obj.hsp = 0;
		hit_player_obj.spr_dir = hit_player_obj.eust_lastDir;
		sound_play(sound_get("ass_kicked"));
		shake_camera( floor(hit_player_obj.orig_knock*0.5), floor(hit_player_obj.orig_knock*0.4) )
		take_damage(hit_player_obj.player, player, floor(my_hitboxID.damage * 1.2));
		spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - 20, 197);
		if(hit_player_obj.old_vsp < -24){eust_assKickSFX = true;}
	}
}

//disable shockwave on certain attacks
if (my_hitboxID.attack == AT_UAIR || (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num < 3) || my_hitboxID.attack == 49){
	hit_player_obj.should_make_shockwave = false;
}

// Fair alignment
if (my_hitboxID.attack = AT_FAIR && my_hitboxID.hbox_num != 3){
	old_vsp -= 1;
//	hit_player_obj.vsp = vsp*4;
//	hit_player_obj.hsp = hsp + spr_dir*2;
	hit_player_obj.old_vsp += 2*(old_vsp);
	hit_player_obj.old_hsp += 4*(old_hsp);
}

// Particle Stuff

if (my_hitboxID.attack = AT_BAIR){
	bairsplat = spawn_hit_fx( my_hitboxID.x, my_hitboxID.y - 10, bair_splaser);
	bairsplat.desired_length = 24;
	bairsplat.depth = -7;
	if (my_hitboxID.hbox_num != 3){eust_bobStop = false;}	//Whether or not the projectile is getting created
}

if (my_hitboxID.attack = 42){
	bairsplat = spawn_hit_fx( other.x, other.y - 20, bair_splaser);
	bairsplat.desired_length = 24;
	bairsplat.depth = -7;
}




// Final Smash Alpha Variant
if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 1){
	sound_play(asset_get("sfx_shovel_hit_heavy2"));
	other.eust_isUhOhed = true;
	eust_uhOhX = other.x;
	eust_uhOhY = other.y;
	eust_baseX = x;
	eust_baseY = y;
	eust_baseF = spr_dir;
	eust_isSmashing = 1;
}

//Final Smash - Reduce Charge on UAir
if (my_hitboxID.attack == AT_UAIR){
	if ("fs_charge_mult" in self){fs_charge_mult = 0.2;}
} else {
	if ("fs_charge_mult" in self){fs_charge_mult = 1.3;}
}