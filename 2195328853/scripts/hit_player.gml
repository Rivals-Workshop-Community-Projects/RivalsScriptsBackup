
if("should_make_shockwave" not in hit_player_obj)hit_player_obj.should_make_shockwave = false;
if("activated_kill_effect" not in hit_player_obj)hit_player_obj.activated_kill_effect = false;
if(my_hitboxID.hitstun_factor < 0)hit_player_obj.should_make_shockwave = false;

//extra hitpause and shake code
extrahitpauseon = my_hitboxID.type==1?true:false;
shaketarget = hit_player_obj;hitpausesetpos = true;hitpausecap = 40;shakecap = 50;

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
		set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 90);set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 90);
		set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 80);set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 80);
	}if my_hitboxID.attack == AT_USTRONG {
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 105);set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 115);
		set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 90);set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
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
		set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 90);set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 100);
	}
	
	if my_hitboxID.attack == AT_TAUNT{
		if(my_hitboxID.hbox_num == 1 && free){
			old_vsp = -7;
		}
	}
}

//hitboxes that trigger the silly angle 0 galaxy thing
if(my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_USPECIAL){
	//trigger silly angle 0 thing (if galaxy)
	if(hit_player_obj.should_make_shockwave)killtarget = hit_player_obj;
}