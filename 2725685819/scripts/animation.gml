

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}



//Trailer stuff
// with (oPlayer){
// 	draw_indicator = false;
// }

// var mid_x = -1;
// var mid_y = -1;
// var nearest_player = noone;

// with (oPlayer){
// 	if (player != other.player && get_player_team( player ) != get_player_team( other.player )){

// 			nearest_player = id;
// 			mid_x = (other.x + x)/2;
// 			mid_y = (other.y + y)/2;

// 	}
// }
// var prev_x = view_get_xview() + (view_get_wview()/2);
// var prev_y = view_get_yview() + (view_get_hview()/2);


// var cam_x = lerp(prev_x,mid_x,0.5);
// var cam_y = lerp(prev_y,mid_y,0.5);

// set_view_position( cam_x, cam_y );
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){

	switch(attack){

		case AT_EXTRA_2:
		hurtboxID.sprite_index = hurtbox_spr;
		
		if (window <= 2){
			sprite_index = asset_get("empty_sprite");
		}

		if (window != 4)
			draw_indicator = false;
		

		break;

		case AT_EXTRA_1:
		hurtboxID.sprite_index = hurtbox_spr;
		break;

		case AT_USPECIAL:
		if (window == 2)
			{
				sprite_index = asset_get("empty_sprite");
				draw_indicator = false;
				image_index = 5;
			}
		break;


	}

}


if (state == PS_CROUCH && attack == AT_DTILT && prev_state == PS_ATTACK_GROUND && state_timer <= 3){
image_index = 3;
}

if (state == PS_WALK && walkstart < 6)
{
	sprite_index = sprite_get("walkstart");
	image_index = walkstart;
	walkstart += walkstart_speed;
	// print_debug(string(walkstart));
} else if (state != PS_WALK){
	walkstart = 0;
}

if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
{
	if (state_timer < 15 && state_timer > 3)
	sprite_index = asset_get("empty_sprite");
	
}



//pressdown phone
// if (state == clamp(state,5,6) && attack == AT_PHONE && window == 2 && attack_down)
// {
// 	image_index = 3;
// }

//intro



if (get_training_cpu_action() == CPU_FIGHT) && !hikari_exists{
	



	//vergil intro
	if (get_player_color(player) == 6) {
		if (floor(animtimer) < 4)
		draw_indicator = false;
		
		if  (intro_timer < 60){
		sprite_index = sprite_get("vergil_intro");
		image_index = 0;
		}
		else if (intro_timer < intro_full){
			if (animtimer < 5){
			sprite_index = sprite_get("vergil_intro");
			image_index = animtimer;
			
			

			
			if (intro_timer == 72)
			sound_play(sound_get("chair_scrape"),0,0,0.8,1);
			
			animtimer += 0.15;
			}
			else{
			chairtimer += 0.2;
			if (chairtimer == 2)
			sound_play(sound_get("warp"),0,0,0.4,1);
			
			}
		}

	}
		//dante intro
	else if (get_player_color(player) == 7){
		if (floor(animtimer) < 6)
		draw_indicator = false;
				
				
		if (intro_timer < intro_full){
			
			if (intro_timer > 10) {
				if (floor(animtimer) < 14){
				sprite_index = sprite_get("dante_intro");
				image_index = animtimer;
				

				
				if (intro_timer == 30)
				sound_play(sound_get("chair_scrape"),0,0,0.8,1);	

				if (intro_timer == 56)
				sound_play(sound_get("warp"),0,0,0.3,1);
	
				if (intro_timer == 66)
				sound_play(asset_get("sfx_bite"),0,0,0.7,1);
	
				if (intro_timer == 78)
				sound_play(sound_get("warp"),0,0,0.3,1);
	
				animtimer += 0.15;
				}
			}
			else {
				sprite_index = sprite_get("dante_intro");
				image_index = 0;
			}
			
		}
	}
	
	//voidfox
	else if (get_player_color(player) == 8){
		if (floor(animtimer) < 11)
		draw_indicator = false;
		
		
		if (intro_timer < intro_full){
			
			if (intro_timer > 20) {
				if (floor(animtimer) < 13){
				sprite_index = sprite_get("void_intro");
				image_index = animtimer;


				if (intro_timer == 30)
				sound_play(sound_get("slicel"));	

				if (intro_timer == 40)
				sound_play(sound_get("slice"));
	
				if (intro_timer == 42)
				sound_play(sound_get("slicef2"),0,0,0.4,0.7);
	
				if (intro_timer == 80){
				sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.3, 1);
				sound_play(asset_get("sfx_swipe_weak2"),0,0,1,0.7);
				}
	
				animtimer += 0.15;
				}
			}
			else {
				sprite_index = sprite_get("void_intro");
				image_index = 0;
			}
			
		}
	}
	
	//neco
	else if (get_player_color(player) == 9){
		if (floor(animtimer) < 2)
		draw_indicator = false;


		if (intro_timer < intro_full){
				if intro_timer == 25
				sound_play(sound_get("neco_intro_1"));
				
			if (intro_timer > 30) {
				if (floor(animtimer) < 24){
				sprite_index = sprite_get("neco_intro");
				image_index = animtimer;
				


				
				if (intro_timer == 100) {
				sound_stop(sound_get("neco_intro_1"));
				sound_play(sound_get("neco_sneeze"));
				}
				animtimer += 0.16;
				
				animtimer = clamp(animtimer,0,14);
				}
			}
			else {
				sprite_index = asset_get("empty_sprite");
				image_index = 0;
			}
			
		}
	}
	
		//vanilla intro
	else {

		if (intro_timer < intro_full){
			
			if (intro_timer > 10) {
				if (floor(animtimer) < 14){
				sprite_index = sprite_get("intro");
				image_index = animtimer;
	
				if (intro_timer == 20)
				sound_play(asset_get("sfx_swipe_weak1"));
	
				if (intro_timer == 30)
				sound_play(asset_get("sfx_swipe_weak2"));
				
				if (intro_timer == 42)
				sound_play(asset_get("sfx_clairen_swing_weak"),0,0,0.3, 1.2	);
				
				if (intro_timer == 58) {
				sound_play(sound_get("saya"));
				sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.3,.8);
				sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.3, 1);
				}
	
				animtimer += 0.15;
				}
			}
			else {
				sprite_index = sprite_get("intro");
				image_index = 0;
			}
			
		}
	}

	
	
}

//vanilla taunt random tapping
if (state == clamp(state,5,6) && attack == AT_TAUNT_2)
{
	
	
	if (window == 2 && random_func( 0, 15, true ) == 1)
	image_index = 3;
}


//landing lag sheathing
if (state == PS_LANDING_LAG && (attack == AT_FAIR || attack == AT_UAIR || attack == AT_BAIR) && saya_check_window != 1) //sheatinglanding lag
{
	sprite_index = sprite_get("landinglag_iai");
	if state_timer == 1
	sound_play(sound_get("saya"));
}





//faster hitbox_update
with(pHitBox){

	if (player == other.player){

		if (attack == AT_EXTRA_2){
			if (hbox_num == 8){
				x = other.grabbed_player.x;
				y = other.grabbed_player.y;
			}
		}

	}


}



//check for hikari
if (get_gameplay_time() < 4){
	
	with(oPlayer){
	    if ("turpix_exists" in self){
	        other.hikari_exists = true;
	        other.hikari_y = y;
	    }
	}
	
		if (ground_type == 2){
		hikari_exists = false;
		}
		if (hikari_y != y){
		hikari_exists = false;
		}

	
}





//hikari intro
if (hikari_exists){

go_through = true;
	
	if (get_gameplay_time() == 4)
	{
	spawning_y = y;
	spawning_x = x;
		
	var stage_top = get_stage_data( SD_Y_POS );
    var stage_mid = ((room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_X_POS ))/2 ;
    
    y = stage_top;
    x = stage_mid;
    spr_dir = -spr_dir;
    set_state(25);
	}
	
	
	if (get_gameplay_time() < 40){
		sprite_index = sprite_get("walk");
		image_index = state_timer/10;

		
		hsp = 1.2 * spr_dir;
		
		
		
	}else if (get_gameplay_time() < 40 + 30){
		if (get_gameplay_time() == 40){
		set_state(25);
		spr_dir = -spr_dir;
		}
		
		
		sprite_index = sprite_get("jab");
		if (get_gameplay_time() < 50 + 20){
		image_index = clamp(state_timer*0.3, 0,1);
		}

		if (get_gameplay_time() == 45){
			hikari_circle = 0;
		}
		
	}else if (get_gameplay_time() < 90){
		sprite_index = sprite_get("jab");
		image_index = state_timer*0.12;
		
		x = lerp(x, spawning_x, 0.5);
		
		if (free)
		sprite_index = sprite_get("hurt");
	}
	else if (get_gameplay_time() > 2*60 - 1){
		state = PS_IDLE;
		x = spawning_x;
		y = spawning_y;
	}
		

	if (get_gameplay_time() == 90){
		if (vergil){
			sound_play(sound_get("vergil_intro"));
		}
	}
	
	
	x += hsp;

}



if (get_gameplay_time() == 60*2){
hikari_exists = false;
state = PS_IDLE;
}










