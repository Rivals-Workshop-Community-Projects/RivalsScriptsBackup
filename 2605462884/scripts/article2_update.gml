//item thrower

if (init == 0){
    init = 1;
    
    with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id){
			state = 2;
			state_timer = 18;
        }
    }
}

player_id.dattack_c_cooldown = true;

state_timer++;
//print("state "+string(state)+" - state_timer "+string(state_timer))
if (arror_timer<arror_timer_max){arror_timer++;}

if (free){vsp+=0.1;air_timer++;} if (air_timer>80&&state!=2){state=2;state_timer=0;/*print("airtimer despawn")*/}

/*//what is this honestly??????????????????????????????? when did i write this????????????????? what is this for???????
//uh ok it seems to be a leftover from code i copypasted
if ( place_meeting(x, y-1, player_id) ){
	if (!player_id.free){
		if (state_timer>20&&state_timer<state_end-2){
			state_timer = clamp(state_timer+2,0,18);
		}
	}
}*/
if (state==0){
	state_end = 60;
	if (state_timer>=state_end){
		if (shoot_count>=shoot_max){
			state = 2;
			state_timer = 0;
			//arror_timer = 0;
			//arror_timer_max = 20;
		}else if (shoot_count==shoot_max-1){
			state = 1;
			state_timer = 0;
			arror_timer = 0;
			arror_timer_max = 140;
			image_index++;
		}else{
			state = 1;
			state_timer = 0;
			arror_timer = 0;
			arror_timer_max = 120;
			image_index++;
		}
	}
}
if (state==1){
	state_end = 60;
	if(state_timer==1){
		var tmp_check = instance_place(x, y, asset_get("oPlayer"));
		//if (place_meeting(x-(42*spr_dir), y, asset_get("oPlayer"))){
		if (tmp_check != -4){
			if (!tmp_check.invincible&&!tmp_check.attack_invince&&!tmp_check.initial_invince){
				//this throws the player
				tmp_check.spr_dir = spr_dir;
				tmp_check.y = tmp_check.y-2
				tmp_check.free = true;
				tmp_check.state = PS_FIRST_JUMP
				tmp_check.hurtboxID.sprite_index = tmp_check.hurtbox_spr
				/*oh my god
				tmp_check.hit_player_obj = player_id;
				tmp_check.last_player = player_id.player;
				tmp_check.last_player_hit_me = player_id.player;
				tmp_check.last_attack = AT_DATTACK;
				tmp_check.last_hbox_num = 1;
				tmp_check.landing_lag_time = 3;
				*/
				with(tmp_check){
					attack_end()
				}
				if (tmp_check==player_id){
					for (var i = 0; i <= tmp_check.fst_track_amt; i += 1){
						if (tmp_check.fst_track[i]!=-4){
							tmp_check.fst_track[i].state_timer = tmp_check.fst_track[i].state_end;
							tmp_check.fst_track[i] = -4;
						}
					}
				}
				tmp_check.state_timer = 0;
				tmp_check.vsp = -8;
				tmp_check.hsp = 9*spr_dir;
				sound_play(sound_get("drop_in_trash_softer"));
				sound_play(sound_get("jump"))
				sent_player = true;
			}
		}else{
			sound_play(sound_get("jump"),false,noone,0.85)
			var s_item = create_hitbox( AT_DTILT, 1, x+(16*spr_dir), y-16 )
			s_item.image_index = random_func( id%5, 14, true );
			s_item.vsp = -5
			s_item.hsp = 7*spr_dir;
			s_item.thrower = true;
		}
		shoot_count++;
	}
	if (state_timer>=state_end){
		sent_player = false;
		state = 0;
		state_timer = 0;
		image_index--;
	}
}
if (state==2){
	state_end = 20;
	if (state_timer>=state_end){
		player_id.dattack_c_cooldown = false;
		instance_destroy();
		exit;
	}
}