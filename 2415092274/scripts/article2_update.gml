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
			get_player_color( player ) == 11||
			get_player_color( player ) == 14||
			get_player_color( player ) == 22||
			get_player_color( player ) == 23){
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
				if (tmp_id.fsp_level>-1){
					tmp_id.fsp_level--;
				}
			}
			if (tmp_hb_id.attack==AT_USTRONG){
				var ring = instance_create( tmp_id.x, tmp_id.y-30, "obj_article1" );
				ring.r_dur = 20
				tmp_id.white_flash_timer = 20;
				sound_play(sound_get("blink"), false, noone, 0.8);
				tmp_id.window=2;
				tmp_id.window_timer=0;
				tmp_id.old_vsp=-14;//-13
				with (tmp_id){
					attack_end() 
					destroy_hitboxes()
				}
			}
			if (tmp_hb_id.attack==AT_FSTRONG){
				var ring = instance_create( tmp_id.x, tmp_id.y-30, "obj_article1" );
				ring.r_dur = 20
				tmp_id.white_flash_timer = 20;
				sound_play(sound_get("blink"), false, noone, 0.8);
				tmp_id.window=2;
				tmp_id.window_timer=0;
				with (tmp_id){
					attack_end() 
					destroy_hitboxes()
					set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
					set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 9);
					set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
					set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 0);
				}
			}
			if (tmp_hb_id.attack==AT_DSTRONG){
				var ring = instance_create( tmp_id.x, tmp_id.y-30, "obj_article1" );
				ring.r_dur = 20
				tmp_id.white_flash_timer = 20;
				sound_play(sound_get("blink"), false, noone, 0.8);
				tmp_id.window=2;
				tmp_id.window_timer=0;
				//tmp_hb_id
				if (tmp_hb_id.hbox_num == 1){
					tmp_id.old_hsp = 14*tmp_id.spr_dir
				}
				if (tmp_hb_id.hbox_num == 2){
					tmp_id.old_hsp = -14*tmp_id.spr_dir
				}
				with (tmp_id){
					attack_end() 
					destroy_hitboxes()
					set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
					set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
				}
			}
			if (tmp_hb_id.attack==AT_USPECIAL){
				if (tmp_hb_id.hbox_num != 6 && tmp_hb_id.hbox_num != 7){
					var ring = instance_create( tmp_id.x, tmp_id.y-30, "obj_article1" );
					ring.r_dur = 20
					tmp_id.white_flash_timer = 20;
					sound_play(sound_get("blink"), false, noone, 0.8);
					tmp_id.window=8;
					tmp_id.window_timer=0;
					with (tmp_id){
						attack_end() 
						destroy_hitboxes()
					}
					tmp_id.usp_did = false;
					tmp_id.move_cooldown[AT_USPECIAL] = 0;
				}else{
					var ring = instance_create( tmp_id.x, tmp_id.y-30, "obj_article1" );
					ring.r_dur = 20
					tmp_id.white_flash_timer = 20;
					sound_play(sound_get("blink"), false, noone, 0.8);
					tmp_id.window=9;
					tmp_id.window_timer=0;
					with (tmp_id){
						attack_end() 
						destroy_hitboxes()
					}
					tmp_id.usp_did = false;
					tmp_id.move_cooldown[AT_USPECIAL] = 0;
				}
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
















