/* Maw's Code
## `hit_player.gml` - 'Grab' Opponents On Hit, Transition to 'Throw'
```GML
//hit_player.gml */

//#region Element Build Up and Flag Logic
// This Section needs to come before the grab set due to it affecting which attack it goes into.
var element = Resolve_Element(my_hitboxID.attack);
var element_applied_player = hit_player_obj;
	
if((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	&& was_parried == false
	&& hit_player_obj.clone == false){
		Apply_Element_Build_Up(element,element_applied_player);
		// Water Buffed Electrical Attack
		if(hit_player_obj.status_effect_water == true && element == "grab" ){ // damage threshold & activates with opposite element
			hit_player_obj.status_effect_water = false;
			water_buff_electric_attack_flag = true; // Old Use was in attack Update
		}
	}
//#endregion

//#region Command Grab Section

//From Mawral's Template, these check
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.


// Uspecial Command Grab
if (my_hitboxID.attack == AT_USPECIAL) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		attack_end();
		set_attack(AT_UTHROW);
		
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

//Fspecial Command Grab
if (my_hitboxID.attack == AT_FSPECIAL) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		attack_end();
		set_attack(AT_FTHROW);
		
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

//DSpecial Command Grab
if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR) && (my_hitboxID.hbox_num == 3)) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		attack_end();
		set_attack(AT_DTHROW);
		
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

// Nspecial Air Command Grab
if (my_hitboxID.attack == AT_NSPECIAL_AIR) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		attack_end();
		set_attack(AT_NTHROW);
		
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

// A+B Input Grounded Command Grab
if (my_hitboxID.attack == AT_NSPECIAL) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		attack_end();
		set_attack(AT_NSPECIAL_2);
		
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

// Final Smash Grab 
// 
if (my_hitboxID.attack == AT_FINAL_SMASH_GRAB) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		attack_end();
		set_attack(AT_FINAL_SMASH_THROW);
		
		instance_create(room_width / 2,room_height / 2,"obj_article1");
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

//#endregion

//#region Execute Command Grab Section

if(water_buff_electric_attack_flag == 1){
	hitfx_consume_water_obj = spawn_hit_fx(x,y-80,hitfx_consume_water);
	hitfx_boosted_grab_obj = spawn_hit_fx(x,y-36,hitfx_boosted_grab);
	
	sound_play(asset_get("sfx_ice_uspecial_jump"));
	switch(attack){
		case AT_UTHROW: 
			attack_end(); 
			set_attack(AT_USPECIAL_2);
			// Runs this section again
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
				&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
				&& was_parried == false
				&& hit_player_obj.clone == false) {
				//if this attack hasn't grabbed a player yet, grab the player we just hit.
				if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
				//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
				else {
					var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
					var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
					if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
				}
			}
			water_buff_electric_attack_flag = false;
			break;
			
		case AT_FTHROW: 
			attack_end(); 
			set_attack(AT_FSPECIAL_2);
			// Runs this section again
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
				&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
				&& was_parried == false
				&& hit_player_obj.clone == false) {
				//if this attack hasn't grabbed a player yet, grab the player we just hit.
				if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
				//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
				else {
					var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
					var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
					if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
				}
			}
			water_buff_electric_attack_flag = false;
			break;
			
		case AT_DTHROW: 
			attack_end(); 
			set_attack(AT_DSPECIAL_2);
			window = 1;
			window_timer = 1;
			// Runs this section again
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
				&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
				&& was_parried == false
				&& hit_player_obj.clone == false) {
				//if this attack hasn't grabbed a player yet, grab the player we just hit.
				if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
				//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
				else {
					var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
					var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
					if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
				}
			}
			water_buff_electric_attack_flag = false;
			break;
	
		case AT_NSPECIAL_2: // Grounded
			attack_end(); 
			set_attack(AT_EXTRA_2);
			// Runs this section again
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
				&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
				&& was_parried == false
				&& hit_player_obj.clone == false) {
				//if this attack hasn't grabbed a player yet, grab the player we just hit.
				if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
				//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
				else {
					var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
					var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
					if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
				}
			}
			water_buff_electric_attack_flag = false;
			break;
		case AT_NTHROW: // Aerial
			attack_end(); 
			set_attack(AT_EXTRA_3);
			// Runs this section again
			if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
				&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
				&& was_parried == false
				&& hit_player_obj.clone == false) {
				//if this attack hasn't grabbed a player yet, grab the player we just hit.
				if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
				//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
				else {
					var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
					var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
					if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
				}
			}
			water_buff_electric_attack_flag = false;
			break;
	}
}
//#endregion

//#region HitFX Layering
//HitFX Layering
var hitfx_x_temp;
var hitfx_y_temp;
var hitfx_x_offset_temp;
var hitfx_y_offset_temp;
with(my_hitboxID){
	hitfx_x_temp = x;
	hitfx_y_temp = y;
	hitfx_x_offset_temp = hit_effect_x;
	hitfx_y_offset_temp = hit_effect_y;
}

//SFX / HFX Layering Indiviual
switch(my_hitboxID.attack){
	case AT_JAB:
		if(my_hitboxID.hbox_num == 1){
		var hitfx_water_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_water_paw);
			hitfx_water_paw_object.depth = depth - 1;
			}
		if(my_hitboxID.hbox_num == 2){
			var hitfx_water_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_water);
			hitfx_water_paw_object.depth = depth - 1;
			sound_play(asset_get("sfx_waterhit_medium"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
			}
		if(my_hitboxID.hbox_num == 3 ){
			var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_combined);
			hitfx_water_object.depth = depth - 1;
			sound_play(sound_get( "quick-shock"),false,noone,.5,1); // soundID,looping,panning,volume,pitch
			}
			break;
	case AT_FAIR:
		if(my_hitboxID.hbox_num == 1){sound_play(sound_get( "lightning_ps1" ),false,noone,1,1.5);} // soundID,looping,panning,volume,pitch}{)
		if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
			var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_combined);
			hitfx_water_object.depth = depth - 1;
		}
		break;
	case AT_UAIR:
		sound_play(asset_get( "sfx_blow_medium1" ),false,noone,.8,2); // soundID,looping,panning,volume,pitch
		var water_fit_fx_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), 302); // 302 - basic small with spin effect in center
		water_fit_fx_object.depth = depth - 1; 
		break;
	case AT_DSPECIAL:
	case AT_DSPECIAL_AIR:
		var hitfx_elec_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_elec_paw);
		hitfx_elec_paw_object.depth = depth - 1;
		if(my_hitboxID.hbox_num == 1){
			sound_play(sound_get( "quick-shock"),false,noone,.75,1); // soundID,looping,panning,volume,pitch
		}
	case AT_FTILT:
		sound_play(asset_get("sfx_waterhit_medium"),false,noone,.8,1); // soundID,looping,panning,volume,pitch
		break;
	default:
		break;
}

//Elec Paw Hitfx
switch(my_hitboxID.attack){
	case AT_EXTRA_3: 
	case AT_FTHROW:
	case AT_UTHROW:
	case AT_DTHROW:
	if(my_hitboxID.hbox_num == 6 ){
		var hitfx_elec_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_elec_paw);
		hitfx_elec_paw_object.depth = depth - 1;
	}
	break;
	case AT_USPECIAL:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL:
	case AT_DSPECIAL_AIR:
	case AT_NTHROW:
	var hitfx_elec_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_elec_paw);
		hitfx_elec_paw_object.depth = depth - 1;
		break;
	case AT_DSPECIAL_AIR:
		switch(my_hitboxID.hbox_num){
			case 1:
			case 2:
			case 3:
				var hitfx_elec_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_elec_paw);
				hitfx_elec_paw_object.depth = depth - 1;
				break;
			default:
				break;
			}
		break;
	default:
		break;
}
// Elec HFX obbject
switch(my_hitboxID.attack){
	case AT_USPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_NSPECIAL:
	case AT_NSPECIAL_AIR: // // Lighting Hitfx
		var hitfx_elec_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_elec);
		hitfx_elec_object.depth = depth - 1;
		break;
	case AT_FSPECIAL_2:
	if(my_hitboxID.hbox_num == 4){
		var hitfx_elec_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_elec);
		hitfx_elec_object.depth = depth - 1;
		break;
	}
	default:
		break;
}
// Lightning Clould HFX
switch(my_hitboxID.attack){
	case AT_USPECIAL_2:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL_2:
	case AT_EXTRA_3:
	case 48: // AT_FINAL_SMASH_THROW
		if(my_hitboxID.hbox_num == get_num_hitboxes(my_hitboxID.attack)){
		sound_play(sound_get( "thunder_3" ),false,noone,1,1); // soundID,looping,panning,volume,pitch
		var hitfx_elec_consume_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_consume_elec);
		hitfx_elec_consume_object.depth = depth - 1;
		}
		break;
	default:
		break;
}
// Water Elec hfx
switch(my_hitboxID.attack){
	case AT_USTRONG:
	case AT_DSTRONG:
	case AT_FSTRONG:
	case AT_BAIR:
		var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_combined);
		hitfx_water_object.depth = depth - 1;
		sound_play(sound_get( "quick-shock" ),false,noone,1,1); // soundID,looping,panning,volume,pitch
		//print("in_loop")
		break;
	default:
		break;
}
//Water Paw fx
switch(my_hitboxID.attack){
	case AT_UTILT:
	case AT_DTILT:
	case AT_DAIR:
	case AT_NAIR:
		var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_water_paw);
		hitfx_water_object.depth = depth - 1;
		sound_play(asset_get( "sfx_waterhit_heavy" ),false,noone,.5,2); // soundID,looping,panning,volume,pitch
		break;
	case AT_DSPECIAL_AIR:
		switch(my_hitboxID.hbox_num){
			case 4:
			case 5:
				var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_water_paw);
				hitfx_water_object.depth = depth - 1;
				sound_play(asset_get( "sfx_waterhit_heavy" ),false,noone,.5,2); // soundID,looping,panning,volume,pitch
				//print("in loop");
				break;
			default:
				break;
		}
		break;
	default:
		break;
}

// Water FX
switch(my_hitboxID.attack){
	case AT_FTILT:
	case AT_DATTACK:
		var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_water);
		hitfx_water_object.depth = depth - 1;
		sound_play(asset_get( "sfx_waterhit_heavy" ),false,noone,.5,2); // soundID,looping,panning,volume,pitch
		break;
	default:
		break;
}
//#endregion

#define Resolve_Element(hitbox_attack_name)
{
	var element = "non-elemental"; // Default Case
	if(
	hitbox_attack_name == AT_BAIR ||
	hitbox_attack_name == AT_USTRONG ||
	hitbox_attack_name == AT_DSTRONG ||
    hitbox_attack_name == AT_FSTRONG)
    {element = "water";}
	
	// Grab Elements
	if(hitbox_attack_name == AT_FSPECIAL||
	hitbox_attack_name == AT_USPECIAL ||
	hitbox_attack_name == AT_NSPECIAL ||
	hitbox_attack_name == AT_NSPECIAL_AIR)
	{element = "grab";}
	
	//Jab Hitboxes
	if(hitbox_attack_name == AT_JAB){
		if(my_hitboxID.hbox_num == 3){element = "water";}
	}
	// Fair Hitboxes
	if(hitbox_attack_name == AT_FAIR){
		if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){element = "water";}
	}
	// Dspecial Exception
	if(hitbox_attack_name == AT_DSPECIAL ||
	hitbox_attack_name == AT_DSPECIAL_AIR)
	{
		if(my_hitboxID.hbox_num == 1){element = "non-elemental";}
		if(my_hitboxID.hbox_num == 2){element = "non-elemental";}
		if(my_hitboxID.hbox_num == 3){element = "grab";}
	}
	
	return element;
}

#define Apply_Element_Build_Up(element,element_applied_player)
{
	if(element == "non-elemental"){
		return;
	}
	
	if(element == "water"){
		with(element_applied_player){
			status_effect_water = true;
			buildup_water_fx_timer = 0;
		}
	}
}