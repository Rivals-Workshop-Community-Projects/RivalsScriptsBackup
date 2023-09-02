/*
hit_player.gml – called when you hit another player with any hitbox. 
Use hit_player_obj to reference the player object that was hit. 
Use hit_player to reference which player you hit (player 1, player 2, etc). 
Use my_hitboxID to reference the hitbox you hit them with. To change the knockback given, edit
*/

// Num Pad notation for Airdash / Nspec / Fspec
#macro UP_DIRECTION 8
#macro UP_RIGHT_DIRECTION 9
#macro RIGHT_DIRECTION 6
#macro DOWN_RIGHT_DIRECTION 3
#macro DOWN_DIRECTION 2
#macro DOWN_LEFT_DIRECTION 1
#macro LEFT_DIRECTION 4
#macro UP_LEFT_DIRECTION 7
#macro NEUTRAL_DIRECTION 5

// Set Mark On Opponent
if(my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR || my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_USPECIAL){
	hit_player_obj.electric_mark = true;
	hit_player_obj.mark_timer = true;
}

// Consume Mark
if(hit_player_obj.electric_mark == true &&
(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_USTRONG)){
	SL_mode_active = true;
	var temp_SL_damage_buffer = 10;
	SL_damage_timer =  temp_SL_damage_buffer * SL_num_of_frames_per_damage; // Convert it to frames
	hit_player_obj.electric_mark = false;
	hitfx_mark_consume_obj = spawn_hit_fx(x, hit_player_obj.y - floor(hit_player_obj.char_height / 2),hfx_mark_consume);
	sound_play(sound_get("howl" ),false,noone,1,1);
	hfx_sl_transform_obj = spawn_hit_fx(x,y - 32,hfx_sl_transform);
}

// Nspecial Command Grab
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 1 && SL_mode_active) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	  && was_parried == false
	  && hit_player_obj.clone == false
	  //&& hit_player_obj.should_make_shockwave == false // Don't activate on Galaxy
	  ){
		
		
		//transition to the 'throw' part of the attack.
		attack_end();
		destroy_hitboxes();
		set_attack_value(AT_FTHROW,AG_SPRITE,sprite_get("sl_nspecial"));
		set_attack(AT_FTHROW);
		sound_play(asset_get("sfx_absa_jabloop"),0,noone,.85,1.5);
		
		//Pass Info about which version hti based on hitbox
		//Normal version is 1-2 / Upward Version is 3-5 / Downward version is 6-8
		
		switch(my_hitboxID.hbox_num){
			case 1:
			case 2:
				nspecial_grab_direction = NEUTRAL_DIRECTION;
				//print(fspecial_grab_direction);
			break;
			
			case 3:
			case 4:
			case 5:
				nspecial_grab_direction = UP_DIRECTION;
				//print(fspecial_grab_direction);
			break;
			
			case 6:
			case 7:
			case 8:
				nspecial_grab_direction = DOWN_DIRECTION;
				//print(fspecial_grab_direction);
			break;
		}
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

// SL Ustrong Command Grab
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.type == 1 && SL_mode_active) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	&& was_parried == false
		&& hit_player_obj.clone == false
		//&& hit_player_obj.should_make_shockwave == false // Don't activate on Galaxy
		){
		
		//transition to the 'throw' part of the attack.
		attack_end();
		destroy_hitboxes();
		set_attack_value(AT_UTHROW,AG_SPRITE,sprite_get("sl_ustrong"));
		set_attack(AT_UTHROW);
		sound_play(asset_get("sfx_absa_jabloop"),0,noone,.85,1.5);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

// SL Dair Command Grab
if (my_hitboxID.attack == AT_DAIR && my_hitboxID.type == 1 && SL_mode_active) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	&& was_parried == false
		&& hit_player_obj.clone == false
		//&& hit_player_obj.should_make_shockwave == false // Don't activate on Galaxy
		){
		
		//transition to the 'throw' part of the attack.
		attack_end();
		destroy_hitboxes();
		set_attack_value(AT_DTHROW,AG_SPRITE,sprite_get("sl_dair"));
		set_attack(AT_DTHROW);
		sound_play(asset_get("sfx_absa_jabloop"),0,noone,.85,1.5);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

// SL Dspecial Command Grab
if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.type == 1 && my_hitboxID.hbox_num == 1) {
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	&& was_parried == false && hit_player_obj.clone == false){
		
		/*
		//transition to the 'throw' part of the attack.
		attack_end();
		destroy_hitboxes();
		set_attack(AT_DTHROW);
		*/
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}


// Fix Custom HFX Not appearing.
if(instance_exists(asset_get("hit_fx_obj"))){
	var temp_self = self;
	var temp_hit_player_obj = hit_player_obj;
	with(asset_get("hit_fx_obj")){
		if(player_id == temp_self){
			depth = temp_hit_player_obj.depth - 1;
		}
	}
}

// Hit Chain Attack HFX spawn (After code to offset depth above)
if((my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_USTRONG)
&& SL_mode_active == true && instance_exists(grabbed_player_obj)){
	create_chain_lightning_hfx(my_hitboxID.attack);
}

//#region Hit SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(attack){
	case AT_JAB:
		insert_sfx_on_hit("slice-hit",1,.6,1.2,false);
		insert_sfx_on_hit("slice-hit",2,.6,.8,false);
		insert_sfx_on_hit("sfx_orca_crunch",3,.6,1.25,true);
	break;
	case AT_FTILT:
		insert_sfx_on_hit("slice-hit",1,.6,1,false);
		insert_sfx_on_hit("sfx_blow_heavy2",1,.6,1.5,true);
	break;
	case AT_UTILT:
		insert_sfx_on_hit("slice-hit",1,.6,1.1,false);
	break;
	case AT_DTILT:
		insert_sfx_on_hit("slice-hit",1,.6,1.2,false);
	break;
	case AT_FSTRONG:
		insert_sfx_on_hit("slice-hit",1,.6,.9,false);
	break;
	case AT_USTRONG:
		insert_sfx_on_hit("sfx_absa_harderhit",1,.5,1.3,true);// Sweetspot
		insert_sfx_on_hit("sfx_zap",2,.7,1.0,true);// SourSpot
	break;
	case AT_DSTRONG:
		insert_sfx_on_hit("slice-hit",1,.3,1.5,false);
		insert_sfx_on_hit("slice-hit",2,.3,1.55,false);
		insert_sfx_on_hit("slice-hit",3,.3,1.6,false);
		insert_sfx_on_hit("slice-hit",4,.3,1.65,false);
		insert_sfx_on_hit("slice-hit",5,.3,1.7,false);
		insert_sfx_on_hit("slice-hit",6,.6,1,false);
	break;
	case AT_DATTACK:
		insert_sfx_on_hit("slice-hit",1,.6,.9,false);
	break;
	case AT_NAIR:
		insert_sfx_on_hit("slice-hit",1,.4,1.2,false);
		insert_sfx_on_hit("slice-hit",2,.5,1.3,false);
		insert_sfx_on_hit("slice-hit",3,.7,1.1,false);
		insert_sfx_on_hit("slice-hit",4,.7,.95,false);
	break;
	case AT_FAIR:
		insert_sfx_on_hit("slice-hit",1,.6,.95,false);
	break;
	case AT_DAIR:
		insert_sfx_on_hit("sfx_absa_harderhit",1,.5,1.3,true); // Sweetspot
		insert_sfx_on_hit("sfx_blow_heavy1",1,.7,1,true);
		insert_sfx_on_hit("sfx_zap",2,.65,1.0,true); // SourSpot
	break;
	case AT_BAIR:
		insert_sfx_on_hit("slice-hit",1,1,.8,false);
		insert_sfx_on_hit("slice-hit",2,1,.8,false);
		insert_sfx_on_hit("slice-hit",3,1,.8,false);
	break;
	case AT_UAIR:
		insert_sfx_on_hit("slice-hit",1,.5,1.4,false);
		insert_sfx_on_hit("slice-hit",2,.7,.85,false);
		insert_sfx_on_hit("sfx_absa_harderhit",2,.5,.75,true);
		insert_sfx_on_hit("sfx_blow_heavy1",2,1,1,true);
	break;
	case AT_NSPECIAL:
		insert_sfx_on_hit("sfx_absa_kickhit",1,.6,.90,true);// Neutral Sweetspot
		insert_sfx_on_hit("sfx_may_whip2",2,.3,1.15,true);// Neutral SourSpot
		insert_sfx_on_hit("sfx_absa_kickhit",3,.5,.90,true);//Upper Sweetspot
		insert_sfx_on_hit("sfx_may_whip2",4,.3,1.15,true);// Upper SourSpot 
		insert_sfx_on_hit("sfx_may_whip2",5,.3,1.15,true);// Upper SourSpot 
		insert_sfx_on_hit("sfx_absa_kickhit",6,.5,.90,true);// Down Sweetspot
		insert_sfx_on_hit("sfx_may_whip2",7,.3,1.15,true);// Down SourSpot 
		insert_sfx_on_hit("sfx_may_whip2",8,.3,1.15,true);// Down SourSpot 
	break;
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		insert_sfx_on_hit("thunder",1,.6,1.5,false); // Strong Box
	break;
	case AT_DSPECIAL:
		insert_sfx_on_hit("sfx_absa_kickhit",1,.7,1,true);// Sweetspot
	break;
	case AT_DSPECIAL_2:
		insert_sfx_on_hit("sfx_absa_kickhit",1,.7,1,true);// Sweetspot
		insert_sfx_on_hit("sfx_abyss_explosion_big",1,.7,1,true);// Sweetspot
	break;
	case AT_USPECIAL:
		insert_sfx_on_hit("slice-hit",1,.7,.9,false); // Strong Box
		insert_sfx_on_hit("thunder",1,.7,1.0,false); // Strong Box
		insert_sfx_on_hit("slice-hit",1,.5,1,false); // Medium Box
		insert_sfx_on_hit("slice-hit",1,.3,1.2,false); // Weak Box
	break;
	case 49: // AT_FINAL_STRONG
		insert_sfx_on_hit("sfx_abyss_explosion_big",1,.7,1.0,true); // Hit 1 Body
		insert_sfx_on_hit("sfx_abyss_explosion_big",2,.7,1.0,true); // Hit 1 Shockwave
		insert_sfx_on_hit("thunder",3,.9,0.7,false); // Hit 2
	default:
	break;
}

//#endregion

#define create_chain_lightning_hfx(attack)
{
	var temp_hfx_angle;
	switch(attack){
		case AT_NSPECIAL:
			switch(nspecial_grab_direction){
				case UP_DIRECTION:
					temp_hfx_angle = 30;
				break;
				case NEUTRAL_DIRECTION:
					temp_hfx_angle = 0;
				break;
				case DOWN_DIRECTION:
					temp_hfx_angle = -30;
				break;
				default:
					temp_hfx_angle = 0;
				break;
			}
		break;
		case AT_DAIR:
			temp_hfx_angle = 270;
		break;
		case AT_USTRONG:
		temp_hfx_angle = 90;
		break;
	}
	var temp_hfx_obj = spawn_hit_fx(x,y-32,hfx_nspecial_chain_lightning);
	temp_hfx_obj.draw_angle = temp_hfx_angle * spr_dir;
	temp_hfx_obj.depth = depth - 1;
	//print(depth);
	//print(temp_hfx_obj.depth);
}

#define insert_sfx_on_hit(temp_sound_string,temp_hitbox_num,temp_volume,temp_pitch,use_asset_version)
{
	if(my_hitboxID.hbox_num == temp_hitbox_num){
		switch(use_asset_version){
			case 0: // False
				temp_sfx_obj = sound_play(sound_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			case 1: // True
				temp_sfx_obj = sound_play(asset_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			default: // Error
				temp_sfx_obj = noone; 
			break;
		}
		return temp_sfx_obj;
	}
}