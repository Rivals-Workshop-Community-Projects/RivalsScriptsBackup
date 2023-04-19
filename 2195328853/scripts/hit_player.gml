//hit_player - called when one of your hitboxes hits a player
if(!was_parried){
	
if my_hitboxID.attack == AT_NSPECIAL {
	if(my_hitboxID.hbox_num == 1){ // blob ball hitbox
		if(instance_exists(blob_ball)){
			if(my_hitboxID == blob_ball.ballhitbox){
				blob_ball.hitstop = my_hitboxID.hitpause;
				if(blob_ball.ballmode == 0 || blob_ball.ballmode == 1){
					blob_ball.hsp = -blob_ball.hsp;
					blob_ball.vsp = -blob_ball.vsp;
				}
				if(blob_ball.ballmode != 3){
					blob_ball.hitplayer = true;
					blob_ball.hitplayertimer = 15;
					blob_ball.ball_timer -= 30;
					blob_ball.ball_timer -= my_hitboxID.hitpause;
				}else if(blob_ball.ballmode == 3){
					blob_ball.hitplayer = true;
					blob_ball.hitplayertimer = 8;
				}if(blob_ball.ball_timer < 11){
        			blob_ball.ball_timer = 11;
        		}
			}
		}if(instance_exists(blob_ball2)){
			if(my_hitboxID == blob_ball2.ballhitbox){
				blob_ball2.hitstop = my_hitboxID.hitpause;
				if(blob_ball2.ballmode == 0 || blob_ball2.ballmode == 1){
					blob_ball2.hsp = -blob_ball2.hsp;
					blob_ball2.vsp = -blob_ball2.vsp;
				}
				if(blob_ball2.ballmode != 3){
					blob_ball2.hitplayer = true;
					blob_ball2.hitplayertimer = 15;
					blob_ball2.ball_timer -= 30;
					blob_ball2.ball_timer -= my_hitboxID.hitpause;
				}else if(blob_ball2.ballmode == 3){
					blob_ball2.hitplayer = true;
					blob_ball2.hitplayertimer = 8;
				}if(blob_ball2.ball_timer < 11){
        			blob_ball2.ball_timer = 11;
        		}
			}
		}if(instance_exists(blob_ball3)){
			if(my_hitboxID == blob_ball3.ballhitbox){
				blob_ball3.hitstop = my_hitboxID.hitpause;
				if(blob_ball3.ballmode == 0 || blob_ball3.ballmode == 1){
					blob_ball3.hsp = -blob_ball3.hsp;
					blob_ball3.vsp = -blob_ball3.vsp;
				}
				if(blob_ball3.ballmode != 3){
					blob_ball3.hitplayer = true;
					blob_ball3.hitplayertimer = 15;
					blob_ball3.ball_timer -= 30;
					blob_ball3.ball_timer -= my_hitboxID.hitpause;
				}else if(blob_ball3.ballmode == 3){
					blob_ball3.hitplayer = true;
					blob_ball3.hitplayertimer = 8;
				}if(blob_ball3.ball_timer < 11){
        			blob_ball3.ball_timer = 11;
        		}
			}
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

if my_hitboxID.attack == AT_TAUNT{
	if(my_hitboxID.hbox_num == 1 && free){
		old_vsp = -7;
	}
}

}