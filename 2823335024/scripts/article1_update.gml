//article1_update - tv

//print_debug( "HI IM TV IM ALIVE AND ACTIVE" )
//print_debug( string(state_timer) )

if (init == 0){
    init = 1;
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id){
			if (state < 2){
				state = 4;
				state_timer = 0;
			}
        }
    }
	tv_hb_link = create_hitbox( AT_DSTRONG, 1, x, y-20 )
}
state_timer++;

if (tv_hb_link != -4){
	tv_hb_link.x = x
	tv_hb_link.y = y-20
	tv_hb_link.hitbox_timer = 1
}

// // // // STATE 0 - START (AIR)

if (state == 0){
    image_index = 0
	
	vsp = 10;
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 4;
		state_timer = 0;
		if (tv_hb_link != -4){
			tv_hb_link.destroyed = true;
			tv_hb_link = -4;
		}
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
    if (!free){
        state = 2;
        state_timer = 0;
		vsp = 0;
		if (tv_hb_link != -4){
			tv_hb_link.destroyed = true;
			tv_hb_link = -4;
		}
		create_hitbox( AT_DSTRONG, 2, x, y-20 )
		sound_play(asset_get("sfx_zetter_downb"));
    }
	if (state_timer>80){
		state = 4;
		state_timer = 0;
		//print_debug( "EXPIRY" )
		//print_debug( "EXPIRY" )
		//print_debug( "EXPIRY" )
		//print_debug( "EXPIRY" )
		//print_debug( "EXPIRY" )
	}
}

// // // // STATE 1 - IDLE

if (state == 1){
	image_index = 0
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 4;
		state_timer = 0;
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	//here's a secret.
	//this is n/a code. partially.
	//a glimpse of it, if you will.
	if (place_meeting(x,y, asset_get("pHitBox"))){
		tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
		tmp_id = tmp_hb_id.player_id;
		if (tmp_id != player_id&&tmp_hb_id.type != 1){
			//nothing
		}else{
				if (tmp_id == player_id && tmp_hb_id.attack == AT_FSTRONG && tmp_hb_id.hbox_num == 2 && abs(tmp_hb_id.hsp)==18){ //temporary values...
				//wiimote devastation
					state = 5;
					state_timer = 0;
				}else{
				//normal fall over
					state = 3;
					state_timer = 0;
				}
				sound_stop(tmp_hb_id.sound_effect);
				sound_play(tmp_hb_id.sound_effect);
				spawn_hit_fx( tmp_hb_id.x, tmp_hb_id.y, tmp_hb_id.hit_effect )
				tmp_id.old_hsp = tmp_id.hsp;
				tmp_id.old_vsp = tmp_id.vsp;
				tmp_id.hitpause = true;
				tmp_id.hitstop = 9;
				tmp_id.hitstop_full = 9;
				tmp_id.has_hit = true;
				hitstop = 9;
				if (tmp_hb_id.attack == AT_BAIR){
					spr_dir = tmp_hb_id.spr_dir*-1;
				}else{
					spr_dir = tmp_hb_id.spr_dir;
				}
		}
	}
	
}

// // // // STATE 2 - STOMP

var stomp_time = 12;
if (state == 2){
    image_index = 1 + state_timer * 3 / stomp_time;
	
	
    if (state_timer == stomp_time){
        state = 1;
        state_timer = 0;
		image_index = 0;
    }
}

// // // // STATE 3 - FALL OVER

var fall_time = 24;
if (state == 3){
    image_index = 4 + state_timer * 3 / fall_time;
	
	
    if (state_timer == fall_time){
		spawn_hit_fx( x+(48*spr_dir), y-10, 143 )
		var tmp_hb_tmp = create_hitbox( AT_DSTRONG, 3, x+(48*spr_dir), y-10 )
		tmp_hb_tmp.player = tmp_id.player
        state = 4;
        state_timer = 0;
		sound_play(sound_get("explosion"));
    }
}

// // // // STATE 4 - DISAPPEAR

var end_time = 10;
if (state == 4){
    image_index = 7 + state_timer * 3 / end_time;
	
	
    if (state_timer == end_time){
        instance_destroy();
        exit;
    }
}

// // // // STATE 5 - EXPLODE

var explode_time = 80;
if (state == 5){
    image_index = 10 + state_timer * 5 / explode_time;
	
	
    if (state_timer == explode_time){
		spawn_hit_fx( x, y-40, 143 )
		spawn_hit_fx( x+60, y-80, 143 )
		spawn_hit_fx( x-60, y-80, 143 )
		spawn_hit_fx( x+60, y+40, 143 )
		spawn_hit_fx( x-60, y+40, 143 )
		create_hitbox( AT_DSTRONG, 4, x, y-40 )
		create_hitbox( AT_DSTRONG, 4, x+60, y-80 )
		create_hitbox( AT_DSTRONG, 4, x-60, y-80 )
		create_hitbox( AT_DSTRONG, 4, x+60, y+40 )
		create_hitbox( AT_DSTRONG, 4, x-60, y+40 )
		sound_play(sound_get("explosion"),false,noone,1,1.5);
		sound_play(sound_get("explosion"),false,noone,1,0.8);
		sound_play(sound_get("explosion"));
		
        instance_destroy();
        exit;
    }
}









