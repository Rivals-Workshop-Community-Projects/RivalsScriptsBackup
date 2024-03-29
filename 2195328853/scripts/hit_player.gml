//hit_player - called when one of your hitboxes hits a player
if(!was_parried){
	
if my_hitboxID.attack == AT_NSPECIAL {
	if(my_hitboxID.hbox_num == 1){ // blob ball hitbox
		my_hitboxID.blob_ball.hitstop = my_hitboxID.hitpause;
		if(my_hitboxID.blob_ball.ballmode == 0 || my_hitboxID.blob_ball.ballmode == 1){
			my_hitboxID.blob_ball.hsp = -my_hitboxID.blob_ball.hsp;
			my_hitboxID.blob_ball.vsp = -my_hitboxID.blob_ball.vsp;
		}
		if(my_hitboxID.blob_ball.ballmode != 3){
			my_hitboxID.blob_ball.hitplayer = true;
			my_hitboxID.blob_ball.hitplayertimer = 15;
			my_hitboxID.blob_ball.ball_timer -= 30;
			my_hitboxID.blob_ball.ball_timer -= my_hitboxID.hitpause;
		}else if(my_hitboxID.blob_ball.ballmode == 3){
			my_hitboxID.blob_ball.hitplayer = true;
			my_hitboxID.blob_ball.hitplayertimer = 8;
		}if(my_hitboxID.blob_ball.ball_timer < 11){
			my_hitboxID.blob_ball.ball_timer = 11;
		}
		my_hitboxID.destroyed = true;
	}
}if my_hitboxID.attack == AT_FSPECIAL {
	if(my_hitboxID.hbox_num == 2 /*|| my_hitboxID.hbox_num == 3*/){ //steam cloud hitbox
		sound_play(asset_get("sfx_ell_steam_hit"));
	}
}if my_hitboxID.attack == AT_DSPECIAL {
	if(my_hitboxID.hbox_num >= 3){
		sound_play(asset_get("sfx_ice_back_air"));
	}else if(my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ice_shatter_big"));
	}
}

if my_hitboxID.attack == AT_FSTRONG {
	if(my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_ell_steam_hit"));
	}
}if my_hitboxID.attack == AT_DSTRONG {
	if(my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_ice_back_air"));
	}else if(my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ice_shatter_big"));
	}
}

if my_hitboxID.attack == AT_DAIR{
	if(my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_ice_back_air"));
	}else if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3){
		sound_play(asset_get("sfx_ice_shatter_big"));
	}
}

if(my_hitboxID.attack == AT_UAIR){
	if(my_hitboxID.hbox_num == 2){
		hit_player_obj.should_make_shockwave = false;
		if(!hit_player_obj.free && !hit_player_obj.freemd){
			hit_player_obj.y += 2;hit_player_obj.free = false;
		}
	}
}

if my_hitboxID.attack == AT_TAUNT{
	if(my_hitboxID.hbox_num == 1 && free){
		old_vsp = -7;
	}
}

}