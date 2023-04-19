//article1_post_draw.gml
//"AS" is Article State

#macro AS_NEUTRAL_AIR 0
#macro AS_NEUTRAL_GROUND 1
#macro AS_GOT_HIT 2
#macro AS_TIMEOUT 3 

#macro AS_ARTICLE_DESTROY 99

switch(state){
	case AS_NEUTRAL_AIR: // Fnction Unique Only to Air
		Priming_Draw_Function();
		Draw_Time_Function();
	break;
	case AS_NEUTRAL_GROUND:
		Priming_Draw_Function();
		Draw_Time_Function();
	break;
	
	
	
	case AS_TIMEOUT:
	if(state_timer == 1){
		sound_play(sound_get("blarp2"));
	}
	if(flash_timer <= 0){ // Flash 4 times in the 20 sec state
		flash_timer = 5;
	}
	default:
	break;
}

if(flash_timer > 0){
	gpu_set_fog(true,c_red,0,0);
    draw_sprite_ext(sprite_index, image_index, x, y + 10, spr_dir * 1.5, 1.5, image_angle, 1, 1 / flash_timer);
    gpu_set_fog(false,c_red,0,0);
    flash_timer--
}
	/*
	case AS_NEUTRAL_GROUND
	var time_until_armed = priming_timer - state_timer;
	// Bomb Flashing on priming
	if((state == 0 || state == 1) &&
	time_until_armed == 7 || 
	time_until_armed == 5 || 
	time_until_armed == 3 || 
	time_until_armed == 1){ 
	    gpu_set_fog(true,c_red,0,0);
	    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * 1.5, 1.5, image_angle, 1, .5);
	    gpu_set_fog(false,c_red,0,0);
	    if(article1_priming_timer == 1){sound_play(sound_get( "blarp2" ),false,noone,1,1);}
	}
	
	// Bomb Flashing near end of timer
	if(article1_timer == 180 || article1_timer == 120 || article1_timer == 60 || article1_timer == 30 || article1_timer == 15){ 
	    gpu_set_fog(true,c_red,0,0);
	    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * 1.5, 1.5, image_angle, 1, .5);
	    gpu_set_fog(false,c_red,0,0);
	    sound_play(sound_get( "blarp2" ),false,noone,1,2);
	}
	*/
/*
	// Clock face on bomb
	if(article1_landed == true && article1_destroy == false && article1_timer >= 0){
		// Fetch current timer
		var small_hand_sprite = sprite_get("klock_hand_small");
		var big_hand_sprite = sprite_get("klock_hand_big");
		// Small Hand
		var article1_small_hand_deg_delta = 360 / article1_total_timer;
		var article1_small_hand_deg_current = article1_small_hand_deg_current + (article1_small_hand_deg_delta * article1_timer);
		// Big hand
		var article1_big_hand_rotations = 4;
		var article1_big_hand_deg_delta = article1_small_hand_deg_delta * 4;
		var article1_big_hand_deg_current = article1_big_hand_deg_current + (article1_big_hand_deg_delta * article1_timer);
		//Draw the Scripts
		//print_debug("in_loop" +string(article1_timer));
		draw_sprite_ext(small_hand_sprite,1,x + 0,y + 1,1.5,1,article1_small_hand_deg_current + 90,c_white,1);
		draw_sprite_ext(big_hand_sprite,1,x + 0,y + 1,1,1,article1_big_hand_deg_current + 90,c_white,1);
	}
}
*/

	// Draw everything in Post
	//draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);

	//Setting for visual hurtbox in training mode
	if get_match_setting(SET_HITBOX_VIS) {
		draw_sprite_ext(mask_index,image_index,x,y,1,1,image_angle,c_white,0.5);
	}
	// Debug -------------------------------------
	/*
	draw_debug_text( x -20, y + 20,"State: " + string(state));
	draw_debug_text( x -20, y + 40,"State Timer: " + string(state_timer));
	draw_debug_text( x -20, y + 60,"Free: " + string(free));
	draw_debug_text( x -20, y + 80,"x: " + string(x));
	draw_debug_text( x -20, y + 100,"y: " + string(y));
	*/
	/*
	draw_debug_text( x -20, y + 120,"Has Been Hit: " + string(article1_hurtbox_has_been_hit));
	*/
	
	//#define draw_large_hand(article1_timer);

#define Priming_Draw_Function()
{
		if(article_timer < priming_timer){
			draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, image_angle, c_dkgray, 1);
		}
		// Priming Section
		if(article_timer == priming_timer && !hitpause ){
			flash_timer = 5;
		}
}
#define Draw_Time_Function()
{
	var time_precise = (total_lifetime - article_timer) / 60;
	var time_countdown = floor(time_precise);
	
	// Display Text
	draw_debug_text( x + (spr_dir * -2) , y - 25, string(time_countdown));
	// Play Sound on tick
	if(time_precise == 3 || time_precise == 2 || time_precise == 1){
		sound_play(sound_get("blarp"),false,noone,1,1)
	}
	//draw_text_ext_transformed_color(x + (spr_dir * -2),y-25,string(time_countdown),1,0,1,1,0,c_red,c_red,c_red,c_red,1);
}