
if("should_make_shockwave" not in hit_player_obj)hit_player_obj.should_make_shockwave = false;
if("activated_kill_effect" not in hit_player_obj)hit_player_obj.activated_kill_effect = false;
if(my_hitboxID.hitstun_factor < 0)hit_player_obj.should_make_shockwave = false;

//extra hitpause and shake code
extrahitpauseon = my_hitboxID.type==1?true:false;
shaketarget = hit_player_obj;hitpausesetpos = true;hitpausecap = 40;shakecap = 50;

if(my_hitboxID.attack == AT_NSPECIAL){
	if(my_hitboxID.hbox_num == 1){
		my_hitboxID.destroyed = true;
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	if(my_hitboxID.hbox_num <= 7){
		hit_player_obj.should_make_shockwave = false;
	}
	set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 110);set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 95);
	set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 110);set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 95);
}

if(my_hitboxID.attack == AT_DSPECIAL_AIR){
	if(my_hitboxID.hbox_num == 1){
		window = 8;window_timer = 0;
		vsp = -12;old_vsp = -12;destroy_hitboxes();
		upb = false;move_cooldown[AT_USPECIAL] = 0;fspecialcooldown = false;
	}
	
	if(my_hitboxID.hbox_num == 3){
		set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 16);
	}
}

if(my_hitboxID.attack == AT_DTILT){
	my_hitboxID.destroyed = true;
	//sound_play(asset_get("sfx_waterhit_heavy"));
}

if(my_hitboxID.attack == AT_DATTACK){
	sound_play(sound_get("Take Down"));
}

if(my_hitboxID.attack == AT_JAB){
	window_timer = 3;sound_play(sound_get("Bite"));
}

if(my_hitboxID.attack == AT_NAIR){
	if(my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_waterhit_heavy"));
	}else{
		sound_play(asset_get("sfx_waterhit_medium"));
	}
}
if(my_hitboxID.attack == AT_FAIR){
	my_hitboxID.destroyed = true;
	sound_play(sound_get("Bubble Pop"));
}
if(my_hitboxID.attack == AT_DAIR){
	sound_play(sound_get("Iron Tail2"));
}

//hitboxes that trigger the silly angle 0 galaxy thing
if(my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_FSTRONG
|| my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK){
	//trigger silly angle 0 thing (if galaxy)
	if(hit_player_obj.should_make_shockwave)killtarget = hit_player_obj;
}

if(hit_player_obj.should_make_shockwave || crit && (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num > 7 || my_hitboxID.attack != AT_FSPECIAL)){
	sound_play(sound_get("Hit Super Effective"));
	if(crit){
		spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-25,304);
	}
}

