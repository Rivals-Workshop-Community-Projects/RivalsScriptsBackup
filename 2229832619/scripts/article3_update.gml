//article3_update - slash

//most of it is a better version of Acid Rainbows' raincloud code
//which, in turn, is made from Guadua's bamboo code

if (!afterimage_mode){ //if normal slash.

if (init == 0){
    init = 1;
    
    with (asset_get("obj_article3")){
        if (id != other.id && player_id == other.player_id){
			if (state < 2){
				state = 2;
				state_timer = 0;
			}
        }
    }
}

state_timer++;

// // // // STATE 0 - START
if (state == 0){
	state_end = 14;//8
	
	with(asset_get("obj_article1")){
		if (player_id == other.player_id){
			if (place_meeting(x, y, other.id)){
				if (state == 1){
					sound_play(sound_get("swing3"));
					image_angle = other.image_angle;
					var hfx = spawn_hit_fx( x, y, player_id.na_ms_fx )
					hfx.draw_angle = other.image_angle+90
					state = 4;
					state_timer = 0;
					//other.state = 2;
					//other.state_timer = 0;
					hitstop = 9;
				}
			}
		}
	}
		
    if (state_timer == state_end){
        state = 1;
        state_timer = 0;
    }
}

// // // // STATE 1 - IDLE
if (state == 1){
	state_end = 300; //200
	
	/*
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2;
		state_timer = 0;
	}
	*/
	
	with(asset_get("oPlayer")){
		if (id != other.player_id){
			if (place_meeting(x, y, other.id)){
				other.state = 3;
				other.state_timer = 0;
				if (state == PS_HITSTUN){
					other.quicker = true;
				}
				var usp_angle_e = other.image_angle / 180 * -3.14;
				var hbdisp = point_distance(x, y-round(char_height/2), other.x, other.y);;
				other.tmp_x_str = other.x+round(hbdisp * cos(usp_angle_e));
				other.tmp_y_str = other.y+round(hbdisp * sin(usp_angle_e));
				//other.tmp_x_str = x;
				//other.tmp_y_str = y-round(char_height/2);
			}
		}
	}
	
	player_id.usp_ls_cooldown = 5;
	
    if (state_timer == state_end){
        state = 2;
        state_timer = 0;
    }
}

// // // // STATE 2 - DISAPPEARING
if (state == 2){
	state_end = 15;
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}

// // // // STATE 3 - ANTICIPATION
if (state == 3){
	if (quicker){
	state_end = 5;//13
	}else{
	state_end = 10;//13
	}
	if (state_timer==1){
		sound_play(sound_get("prem"), false, noone, 1, 1.1);
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
	
    if (state_timer == state_end){
			sound_stop(sound_get("prem"));
		with(player_id){
			sound_play(sound_get("swing3"));
			spawn_hit_fx( other.tmp_x_str, other.tmp_y_str, na_ss_fx ) //y+30
			create_hitbox( AT_USPECIAL, 5, other.tmp_x_str, other.tmp_y_str );
			steve_death_message = "I want you to retrace your steps";
			usp_ls_cooldown = 90;
		}
        state = 2;
        state_timer = 0;
    }
}

if (state == 0){
	image_alpha = ease_linear( 0, alp2, state_timer, state_end )/10;//10
}
if (state == 1){
	image_alpha = alp2/10;//10
}
if (state == 2){
	image_alpha = ease_linear( alp2, 0, state_timer, state_end )/10;//10
}
if (state == 3){
	image_alpha = alp2/10;//10
}


}else{ //if afterimage.
	
	state_end = 16+1;
	sprite_index = sprite_get("uspecial_ai")
	image_index = ease_linear( 0, 3, state_timer, state_end )
	state_timer++;
	image_alpha = ease_linear( 1, 0, state_timer, state_end );
	image_xscale = 1;
	image_yscale = 1;
	
	var tst_v = (backward)?-8:1
	hsp = (1 * cos(ai_angle_pass))*-1;
	vsp = (1 * sin(ai_angle_pass))*-1;
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
	
}












