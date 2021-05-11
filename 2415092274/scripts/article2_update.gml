//article2_update - moon

//most of it is a better version of Acid Rainbows' raincloud code
//which, in turn, is made from Guadua's bamboo code

if (init == 0){
    init = 1;
	
	with(player_id){
		if (get_player_color( player ) == 7){
			other.sprite_index = sprite_get("moon_gb");
		}
		if (get_player_color( player ) == 8||
			get_player_color( player ) == 10||
			get_player_color( player ) == 13||
			get_player_color( player ) == 21||
			get_player_color( player ) == 22){
			other.sprite_index = sprite_get("moon_alt");
			other.altmoon = true;
		}
	}
    
    with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id){
			if (state < 2){
				state = 2;
				state_timer = 0;
				state_end = 6;
			}
        }
    }
}


var r_alpha = (state==3)?(ease_quadIn( 0.9*100, 0, state_timer, state_end )/100):0.9;

alp_start = r_alpha;

fake_angle -= 0.1

state_timer++;

// // // // STATE 0 - START
if (state == 0){
	state_end = 32;
    image_index = 0 + state_timer * 5 / state_end;
	
    if (state_timer == state_end){
        state = 1;
        state_timer = 0;
    }
}

// // // // STATE 1 - IDLE
if (state == 1){
	state_end = 30;
    image_index = 5 + state_timer * 3 / state_end;
	
	if (place_meeting(x,y, asset_get("pHitBox"))){
		var tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
		var tmp_id = tmp_hb_id.player_id;
		if (tmp_id == player_id){
			state = 2;
			state_timer = 0;
			sound_stop(tmp_hb_id.sound_effect);
			sound_play(tmp_hb_id.sound_effect);
			spawn_hit_fx( tmp_hb_id.x, tmp_hb_id.y, tmp_hb_id.hit_effect )
			if (tmp_id.hitpause = false){
				tmp_id.old_hsp = tmp_id.hsp;
				tmp_id.old_vsp = tmp_id.vsp;
				tmp_id.hitpause = true;
			}
			if (tmp_hb_id.attack==AT_FSPECIAL){
				if (tmp_id.fsp_level<3){
					tmp_id.fsp_level++;
				}
			}
			if (tmp_hb_id.attack==AT_USTRONG){
				tmp_id.window=2;
				tmp_id.window_timer=0;
				tmp_id.old_vsp=-14;//-13
			}
			if (tmp_hb_id.attack==AT_FSTRONG){
				tmp_id.window=2;
				tmp_id.window_timer=0;
			}
			if (tmp_hb_id.attack==AT_DSTRONG){
				tmp_id.window=2;
				tmp_id.window_timer=0;
			}
			tmp_id.hitstop = tmp_hb_id.hitpause;//9
			tmp_id.hitstop_full = tmp_hb_id.hitpause;//9
			hitstop = tmp_hb_id.hitpause;//9
			state_end = round(4+tmp_hb_id.hitpause);
			tmp_id.has_hit = true;
			tmp_id.has_hit_player = true;
			fake_mhID = tmp_hb_id;
			fake_hpo = id;
			shake_camera(4, 2)
			user_event( 1 );
		}
	}
	
    if (state_timer == state_end){
        state_timer = 0;
		image_index = 5
    }
}

// // // // STATE 2 - ANTICIPATION
if (state == 2){
    image_index = 8;
	/*
	if (state_timer==1){
		sound_play(sound_get("prem"));
		with(player_id){
			spawn_hit_fx( other.tmp_x_str, other.tmp_y_str, 66 )
		}
	}
	
	alp2 = ease_cubeIn( 4, 9, state_timer, state_end );
		//print_debug( "ALP2 "+string(alp2) )
	
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2;
		state_timer = 0;
	}
	*/
	
    if (state_timer == state_end){
        state = 3;
        state_timer = 0;
    }
}

// // // // STATE 3 - DISAPPEARING
if (state == 3){
	state_end = 15;
    image_index = 9 + state_timer * 3 / state_end;
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}
















