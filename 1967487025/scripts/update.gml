if (get_stage_data(SD_Y_POS) == 0){ //custom stage height checker, taken from Monu
    if !initiated{
        custom_stage_y = y;
        initiated = true;
    }
    
    if (!initiated2 && place_meeting(x,y+1,asset_get("par_block"))){
        custom_stage_y = y;
        initiated2 = true;
    }
}


//Rainbow Code, from Anguish and the Kirby team
if get_player_color(player) = 13 {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(246, 19, 19);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	boost_color = color_hsv;
	set_article_color_slot(0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_article_color_slot(5, floor(color_get_red(color_hsv) / 2), floor(color_get_green(color_hsv) / 2), floor(color_get_blue(color_hsv) / 2));

	color_rgb=make_color_rgb(248, 184, 248);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	set_article_color_slot(2, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	
	color_rgb=make_color_rgb(178, 44, 115);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	set_article_color_slot(3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	
	color_rgb=make_color_rgb(0, 101, 238);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	set_article_color_slot(4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	}

init_shader();




if meter_activated color_opacity = 0.4;
else color_opacity = 0;

if !meter_activated || floor((get_gameplay_time() - boost_timer) / 2) >= 9 draw_boost = 0;

//Boost color changes per alt
switch (get_player_color(player)) {
	case 11: // Android
	boost_color = $00a2d7;
	break;
	case 9: // Mephiles
	boost_color = $820170;
	break;
	case 8: // Grey Android
	boost_color = $2e8f2d;
	break;
	case 10: // Rouge
	boost_color = $df00df;
	break;
	case 3: // Hero
	boost_color = $f7c200;
	break;
	case 14: // Chaos
	boost_color = $0000b4;
	break;
	case 7: // Shadic
	boost_color = $ee4700;
	break;
	case 4: // Eclipse
	boost_color = $d7a200;
	break;
	case 5: // Coldsteel
	boost_color = $82224e;
	break;
	case 12: // Blaze
	boost_color = $0000b4;
	break;
	case 6: // Super
	boost_color = $0000b4;
	break;
	case 1: //Rhyphte
	boost_color = $97a800;
	break;
	case 13:
	break;
	case 2: //Seggo
	boost_color = $a3a3a3;
	break;
	default:
	boost_color = $0000b4;
	break;
}

if (meter_current >= drain || meter_activated) {
	rgb[0] = color_get_red(boost_color);
	rgb[1] = color_get_green(boost_color);
	rgb[2] = color_get_blue(boost_color);
	
	var color_spd = 70;
	//if meter_current >= drain2 color_spd = 20;
	if color_timer >= 0.5 color_spd = color_spd * 2;
	
	for (var i = 0; i < 3; i++) {
		if outline_increment color_timer += 1 / color_spd;
		else color_timer -= 1 / color_spd;
		outline[i] = color_timer * rgb[i];
	}
	var color_int = 0.6;
	if meter_current >= drain2 color_int = 1;
	if outline[0] >= rgb[0] * color_int && outline[1] >= rgb[1] * color_int && outline[2] >= rgb[2] * color_int 
		outline_increment = false;
	else if outline[0] <= 0 && outline[1] <= 0 && outline[2] <= 0 outline_increment = true;
	
	if (meter_activated /*|| meter_current >= drain2*/) outline_color = [rgb[0], rgb[1], rgb[2]];
	else outline_color = [floor(outline[0]), floor(outline[1]), floor(outline[2])];
	init_shader();
}
else {
	outline_color = [0, 0, 0 ];
	init_shader();
}




//Code to slow down initial dash

if (state == PS_DASH_START && !runeK) {
	if (spr_dir == right_down - left_down)
		hsp = (4 + 4 * ((state_timer + 1)/initial_dash_time)) * spr_dir;
}

//Intro
var introSpeed = (introTimer < 4)?2:5;
if (introTimer2 < introSpeed && (introTimer != 10 || introTimer != 7)) {
    introTimer2++;
} else if (introTimer2 < 20 && (introTimer == 10 || introTimer == 7)) {
	introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (state == PS_SPAWN) {
	if (introTimer < 12) {
	    draw_indicator = false;
	} else if (introTimer == 12) {
	    draw_indicator = true;
	} 
	
	if (introTimer2 == 0)
		if (introTimer == 0) {
			sound_play(sound_get("teleport1"));
			toggle_draw = true;
		}
		else if (introTimer == 2 && attack_down) sound_play(sound_get("true power"));
	
	if (!disp_on && special_pressed){
		disp_on = true;
		toggle_draw = false;
	}
} else {
	toggle_draw = false;
}

//Invisible indicator when teleorting
if runeO && (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer < 17 
	draw_indicator = false;

if (!free ) {
	used_djump = false;
	if !(attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) used_uspecial = false;
	if !(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) used_fspecial = false;
	used_dspecial = false;
	rune_uspecial = false;
}

// remember when the player entered the double jump state
if (state == PS_DOUBLE_JUMP) {
	used_djump = true;
}


if (used_djump) djumps = 1;

if (used_fspecial) { move_cooldown[AT_FSPECIAL] = 20; }
if (used_dspecial) { move_cooldown[AT_DSPECIAL] += 1;	move_cooldown[AT_DSPECIAL_AIR] += 1; }
if (runeA && runeJ) {
	if rune_uspecial move_cooldown[AT_USPECIAL] = 2;
	if state == PS_WALL_JUMP rune_uspecial = false;
}

if !(draw_indicator) draw_boost = 0;


if (attack == AT_DAIR && prev_state == PS_ATTACK_AIR && state == PS_LANDING_LAG && state_timer == 1) {
	hsp = 4 * spr_dir;
}

if (attack == AT_DAIR && prev_state == PS_ATTACK_AIR) && state_timer = 0 {
	hsp = 0;
}

if(grabbedid != noone && grabbedid.hitstop != 0){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 7){
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

//prevent visual bug when getting hit while holding ftilt
if (attack != AT_FTILT || state != PS_ATTACK_GROUND) {
	draw_ftilt = 0;
}

if (state == PS_PRATFALL) {
	can_fast_fall = true;
}

if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR {
	meter_activated = false;
}

if swallowed { //Kirby ability script starts here
	swallowed = 0
	//Define any assets kirby might need to grab from YOUR CHARACTER
	var ability_spr = sprite_get("kirby_nspecial");
	var ability_hurt = sprite_get("kirby_hurtbox");
	
	var spear_sfx = sound_get("spear");
	var uncharged_spear = sprite_get("uncharged_spear");
	var spear = sprite_get("nspecial_proj");
	var lance = sprite_get("chaos_lance");
	var spear_hit = sound_get("spear_hit");
	var clairen_weak = asset_get("sfx_clairen_tip_weak");
	var clairen_strong = asset_get("sfx_clairen_tip_strong");
	
	with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .07);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 42);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .07);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

for (var i = 3; i <= 5; i++) {
set_window_value(AT_EXTRA_3, i, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_SFX, spear_sfx);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_CUSTOM_AIR_FRICTION, .07);
set_window_value(AT_EXTRA_3, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
}

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 51);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.5);


set_num_hitboxes(AT_EXTRA_3, 3);

for (var i = 1; i <= 3; i++) {
set_hitbox_value(AT_EXTRA_3, i, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, i, HG_WINDOW, 2 + i);
set_hitbox_value(AT_EXTRA_3, i, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_3, i, HG_LIFETIME, 30);
set_hitbox_value(AT_EXTRA_3, i, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, i, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, i, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, i, HG_DAMAGE, 4 * i);
set_hitbox_value(AT_EXTRA_3, i, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, i, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_EXTRA_3, i, HG_BASE_HITPAUSE, 6 + 2 * i);
set_hitbox_value(AT_EXTRA_3, i, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_SPRITE, spear);
set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_3, i, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_3, i, HG_VISUAL_EFFECT_Y_OFFSET, 20);

set_hitbox_value(AT_EXTRA_3, i, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, i, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, i, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_3, i, HG_HEIGHT, 40);
}


set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, uncharged_spear);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .75);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, clairen_weak);

set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, clairen_strong);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 130);


set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, spear_hit);
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, lance);
set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);


set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 23456); //Arbitrary value in a dead window for checking
	} //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & swallowed
	with oPlayer { //Run through all players
	if (was_parried) && get_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES) == 23456 && my_hitboxID.attack == AT_EXTRA_3{
					my_hitboxID.hitbox_timer = 0;
    				my_hitboxID.hsp *= 1.5;
				}
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
			if get_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES) == 23456 {
			/*
			//default nspecial startup
			
		    	if  (window == 1){
			    	if (window_timer == 1) {
			    		kirby_loop = 0;
			    	}
			    	
			    	//go to charge if special is held
			        if (special_down && window_timer == 11){
			        	window = 2;
			        	window_timer = 0;
			        }
			        else if (!special_down && window_timer == 11) {
			        	window = 3;
			        	window_timer = 0;
			        }
		    	}
		    	if (window == 2) {
		    		//loop through charge if special is held
			        if (special_down && window_timer == 11){
			        	window = 2;
			        	window_timer = 0;
			        	kirby_loop++;
			        }
			    	//fire spear
			    	if (kirby_loop == 5 or (!special_down and kirby_loop > 0)) {
			        	window = (kirby_loop == 5)?5:4; //Window is 5 if fully charged, otherwise is 4
			        	window_timer = 0;
			        }
			        if (!special_down and kirby_loop == 0) {
			        	window = 3;
			        	window_timer = 0;
			        }
			        
			        //to fire a lvl 2 spear after 20 frames 
			        if (kirby_loop == 0 && window_timer == 7) {
			        	kirby_loop++;
			        }
		    	}
		        	//endlag
		    if (window == 3 || window == 4) && window_timer == 7 {
		    	window = 6;
		    	window_timer = 0;
		    	move_cooldown[AT_EXTRA_3] = 34;
		    }
    
	*/
				
				
	can_fast_fall = false;
	move_cooldown[AT_EXTRA_3] = 22;
	
	if vsp < 0 {
		vsp += 0.3;
	}
	
	//default nspecial startup
    	if  (window == 1){
	    	if (window_timer == 1) {
	    		kirby_loop = 0;
	    	}
	    	//go to charge only if special is held
	        if (!special_down && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) - 1){
	        	window = 3;
	        	window_timer = 0;
	        }
    	}
    	if (window == 2) {
    		//loop through charge if special is held
	        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1){
	        	kirby_loop++;
	        }
	    	//fire spear
	    	if (kirby_loop == 5 || (!special_down && kirby_loop > 0)) {
	        	window = (kirby_loop == 5)?5:4; //Window is 5 if fully charged, otherwise is 4
	        	window_timer = 0;
	        }
	        if (!special_down && kirby_loop == 0) {
	        	window = 3;
	        	window_timer = 0;
	        }
	        
	        //to fire a lvl 2 spear after 20 frames 
	        if (kirby_loop == 0 && window_timer == 7) {
	        	kirby_loop++;
	        }
    	}
        
    	}
	    
    //endlag
    if (window == 3 || window == 4) && window_timer == 7 {
    	window = 6;
    	window_timer = 0;
    }
    
    //slow down horizontal momentum
    hsp *= 0.93;
    
	}
	}
}
if enemykirby != undefined {
	var myicon = sprite_get("kirby_icon")
	with enemykirby {
		newicon = myicon;
	}
}

//Check if game is paused
if !start_down game_paused = false;
if game_paused start_down = false;
if start_down game_paused = true;

if meter_activated show_note = false;


if runesUpdated || is_level_9 || get_match_setting(SET_RUNES) {
	if runeK { 
		gravity_speed = .45;
		air_accel = .45;
		max_fall = 10; 
		fast_fall = 18;
		
		dash_speed = 12;
		initial_dash_speed = 12; 
		dash_turn_time = 5;
		dash_turn_accel = 4.8;
		walk_speed = 8;
		walk_accel = 1;
		wave_friction = 0.07;
		moonwalk_accel = 1.8;
		
		air_max_speed = 8;
		jump_speed = 11;
		djump_speed = 11;
		short_hop_speed = 6;
		max_jump_hsp = 12;
		leave_ground_max = 12; 
		jump_change = 6;
		walljump_vsp = 9;
		walljump_hsp = 9;
		air_dodge_speed = 12;
		
		roll_forward_max = 14; 
		roll_backward_max = 14;
		techroll_speed = 14;
		
		walk_anim_speed = .27;
		dash_anim_speed = .3;
		
		
		set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, 8);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 12.5);
		
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 14);
		set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 14);
		set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 11.2);
		set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 11.2);
		
	}
	else {
		gravity_speed = .4;
		air_accel = .35;
		max_fall = 8; 
		fast_fall = 12;
		
		dash_speed = 8;
		initial_dash_speed = 8;
		dash_turn_time = 20;
		dash_turn_accel = 1;
		walk_speed = 4;
		walk_accel = 0.4;
		wave_friction = .00;
		moonwalk_accel = 1.4;

		air_max_speed = 5;
		jump_speed = 10;
		djump_speed = 10;
		short_hop_speed = 5.25;
		max_jump_hsp = 7;
		leave_ground_max = 7; 
		jump_change = 3;
		walljump_time = 25;
		walljump_vsp = 8;
		walljump_hsp = 6;
		air_dodge_speed = 8;
		
		roll_forward_max = 9; 
		roll_backward_max = 9;
		techroll_speed = 9;
		
		
		reset_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED);
		reset_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED);
		reset_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED);
		reset_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED);
		reset_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED);
		reset_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED);
	}
	if runeB {
		if !is_level_9 {
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("nair_shadow_smash_down"));
		set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("nair_hit_s"));
		set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("nair_hit_ll"));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("nair_shadow_smash_up"));
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("nair_hit_l"));
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("nair_shadow_smash"));
		set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("nair_hit_l"));
		set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("nair_hit_m"));
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("nair_attack"));
		set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("nair_hit_s"));
		set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("nair_hit_s"));
		set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("nair_hit_m"));
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("nair_fair"));
		set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("nair_hit_m"));
		set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("nair_hit_s"));
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("nair_teleport"));
		}
		
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
		
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 0);
		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
		set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
		set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
		set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
		set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 0.3);
		set_hitbox_value(AT_NAIR, 2, HG_DRIFT_MULTIPLIER, 0.3);
		set_hitbox_value(AT_NAIR, 5, HG_DRIFT_MULTIPLIER, 0.3);
		set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 16);
		
		
		
	}
	else {
		reset_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX);
		reset_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX);
		reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
		reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
		reset_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX);
		reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX);
		reset_window_value(AT_NAIR, 1, AG_WINDOW_SFX);
		reset_hitbox_value(AT_NAIR, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_NAIR, 2, HG_HIT_SFX);
		reset_hitbox_value(AT_NAIR, 5, HG_HIT_SFX);
		reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX);
		reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_FTILT, 1, HG_HIT_SFX);
		reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX);
		reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX);
		
		reset_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
		reset_hitbox_value(AT_NAIR, 1, HG_LIFETIME);
		reset_hitbox_value(AT_NAIR, 2, HG_LIFETIME);
		reset_hitbox_value(AT_NAIR, 3, HG_LIFETIME);
		reset_hitbox_value(AT_NAIR, 4, HG_LIFETIME);
		reset_attack_value(AT_NAIR, AG_LANDING_LAG);
		reset_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME);
		reset_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER);
		reset_hitbox_value(AT_NAIR, 2, HG_DRIFT_MULTIPLIER);
		reset_hitbox_value(AT_NAIR, 5, HG_DRIFT_MULTIPLIER);
		reset_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH);
	}
	if runeC {
		set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 11);
		set_hitbox_value(AT_FTILT, 1, HG_EFFECT, 11);
	}
	else {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT);
		reset_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT);
		reset_hitbox_value(AT_FTILT, 1, HG_EFFECT);
	}
	if runeI {
		drain = meter_max * 0.15;
		drain2 = meter_max * 0.3;
	} 
	else {
		drain = meter_max * 0.3;
		drain2 = meter_max * 0.6;
	}
	if runeD {
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 7);
	}
	else {
		reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
	}
	if runeF {
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
		
	} 
	else {
		reset_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH);
	}
	if runeJ && runeA {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
	}
	else {
		reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
	}
}

if runeA {
	if attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_PRATFALL || state == PS_PRATLAND) prat_land_time = 3;
	else prat_land_time = 16;
}

if runeD {
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_DSPECIAL_AIR] = 0;
}
if runeH && state_cat != SC_HITSTUN && state != PS_SPAWN && state != PS_RESPAWN {
	meter_current += rune_meter?0:(meter_max / (boost_duration * 60));
}

if runeO {
	//&& (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && window == 2
	if shield_down && hit_player_obj.state_cat == SC_HITSTUN &&  state != PS_AIR_DODGE && has_airdodge && !hitpause{
		set_state(PS_AIR_DODGE);
		window = 0;
		window_timer = 0;
		chasing_rune = true;
		y -= 20;
	}
	
	if chasing_rune && state == PS_AIR_DODGE {
		free = true;
		switch (window) {
			case 0: can_fast_fall = false;
			break;
			case 2: window_timer += 1.5;
			case 1:
				x = hit_player_obj.x;
				y = hit_player_obj.y;
			break;
		}
	} 
	else if chasing_rune && hit_player_obj.state_cat != SC_HITSTUN chasing_rune = false;
	
	if has_hit && runeJ && hit_player_obj.hitpause has_airdodge = true;
}

if runeG 
	if rune_meter {
		meter_activated = true;
		meter_current -=  runeH&&runeI?0:(meter_max / (boost_duration * 60)) / (1 + runeI);
		damage_multiplier = chaos_boost;
		KB_multiplier = chaos_boost_KB;
	} else {
		damage_multiplier = 1;
		KB_multiplier = 1;
	}
if meter_current >= meter_max meter_current = meter_max;
if runeG && !rune_meter && meter_current == meter_max && (state == PS_IDLE || state == PS_IDLE_AIR) {
	set_attack(AT_EXTRA_1);
}
if meter_current <= 0 {
	meter_current = 0;
	rune_meter = false;
}

if runeM {
	with (oPlayer) if player != other.player && stopped_time {
		hitpause = true;
		hitstop = 2;
		hitstop_full = 60;
		set_state(PS_HITSTUN);
		if stopped_timer-- < 1 {
			stopped_time = false;
		}
	}
	
	if used_za_wurdo && !(state == PS_ATTACK_GROUND && attack == AT_DSPECIAL_2) {
		used_za_wurdo = false;
		var duration = 240;
		move_cooldown[AT_DSPECIAL_2] = duration;
		move_cooldown[AT_NSPECIAL_2] = duration;
		create_hitbox(AT_DSPECIAL_2, 1, x, y)
		with (oPlayer) if player != other.player && !stopped_time {
			stopped_time = true;
			stopped_timer = duration;
			stopped_sprite = sprite_index;
			stopped_index = image_index;
			stopped_dir = spr_dir;
			stopped_x = x;
			stopped_y = y;
			invincible = false;
			invince_timer = 0;
			set_state(PS_PARRY);
			window = 2;
			window_timer = 19;
			
		}
	}
}










if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 13;
    trummelcodecsprite1 = sprite_get("Codec_TA");
    trummelcodecsprite2 = noone;
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "The blue snail again of all";
    trummelcodecline[page,2] = "places...";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "!!!";
    trummelcodecline[page,2] = "Trummel! That's the gem";
    trummelcodecline[page,3] = "theif from last week!";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Hand back the emerald";
    trummelcodecline[page,2] = "hedgehog! You're not";
    trummelcodecline[page,3] = "getting away this time!";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Hmph. I don't have the";
    trummelcodecline[page,2] = "time for you.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Wait, what's Shadow";
    trummelcodecline[page,2] = "doing in Rivals?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "You know who he is";
    trummelcodecline[page,2] = "Muno? I couldn't find";
    trummelcodecline[page,3] = "anything on him last time.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 6
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That's Shadow The";
    trummelcodecline[page,2] = "Hedgehog. He's from the";
    trummelcodecline[page,3] = "Sonic universe.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "What's up with the red";
    trummelcodecline[page,2] = "flashes? He did something";
    trummelcodecline[page,3] = "last time and KO'd us at";
    trummelcodecline[page,4] = "30.";
    page++; 

    //Page 8
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That's probably his chaos";
    trummelcodecline[page,2] = "boost. Shadow can collect";
    trummelcodecline[page,3] = "chaos energy and expend";
    trummelcodecline[page,4] = "it to boost his attacks.";
    page++;

    //Page 9
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "ew meter";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "Shadow, do you hear me?";
    trummelcodecline[page,2] = "I got the chaos emerald,";
    trummelcodecline[page,3] = "but the gaurds are right";
    trummelcodecline[page,4] = "on my heels.";
    page++; 

    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Wait what?!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;  

    //Page 12
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "They're after another";
    trummelcodecline[page,2] = "emerald! Trum we have";
    trummelcodecline[page,3] = "to stop him!";
    trummelcodecline[page,4] = "";
    page++;   

    //Page 13
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Hold on Rouge, I got";
    trummelcodecline[page,2] = "a talking cloud to deal";
    trummelcodecline[page,3] = "with.";
    trummelcodecline[page,4] = "";
    page++;   
    
}