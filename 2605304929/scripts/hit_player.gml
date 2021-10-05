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
if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR) && my_hitboxID.hbox_num == 2) {

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

// A+B Input Air Command Grab
if (my_hitboxID.attack == AT_EXTRA_2) {

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

//#endregion

//#region Execute Command Grab Section

if(water_buff_electric_attack_flag == 1){
	spawn_hit_fx(x,y-80,hitfx_consume_water);
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
	
		case AT_NSPECIAL_2: 
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
		case AT_NTHROW: 
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
// Water Paw Effects
if(my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 ||
	my_hitboxID.attack == AT_UTILT ||
	my_hitboxID.attack == AT_DTILT ||
	my_hitboxID.attack == AT_FTILT ||
	my_hitboxID.attack == AT_NAIR ||
	my_hitboxID.attack == AT_DATTACK ||
	my_hitboxID.attack == AT_DAIR)
	{
	var hitfx_water_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_water_paw);
		hitfx_water_paw_object.depth = depth - 1;
	}
// Elec Paw Effects
if(my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == 5 ||
	my_hitboxID.attack == AT_USPECIAL ||
	my_hitboxID.attack == AT_FSPECIAL ||
	my_hitboxID.attack == AT_FSPECIAL_2 ||
	my_hitboxID.attack == AT_DSPECIAL ||
	my_hitboxID.attack == AT_DSPECIAL_AIR ||
	my_hitboxID.attack == AT_NTHROW
	)
	{
	var hitfx_elec_paw_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_elec_paw);
		hitfx_elec_paw_object.depth = depth - 1;
	}
// Water Elec Combined Hitfx That applies the buff
if((my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 )||
	my_hitboxID.attack == AT_USTRONG ||
	my_hitboxID.attack == AT_DSTRONG ||
	my_hitboxID.attack == AT_FSTRONG ||
	(my_hitboxID.attack == AT_FAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)) ||
	my_hitboxID.attack == AT_BAIR)
	{
	var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_combined);
		hitfx_water_object.depth = depth - 1;
		sound_play(asset_get( "sfx_absa_boltcloud" ),false,noone,.5,2); // soundID,looping,panning,volume,pitch
	}
	
// Lighting Hitfx
if(my_hitboxID.attack == AT_USPECIAL || //my_hitboxID.attack == AT_UTHROW || my_hitboxID.attack == AT_USPECIAL_2 ||
	my_hitboxID.attack == AT_FSPECIAL || //my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_FSPECIAL_2 ||
	my_hitboxID.attack == AT_DSPECIAL || //my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_DSPECIAL_2 ||
	my_hitboxID.attack == AT_NSPECIAL || //my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_EXTRA_3 ||
	my_hitboxID.attack == AT_EXTRA_2 //|| my_hitboxID.attack == AT_NTHROW)
)
	{
	var hitfx_elec_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_elec);
		hitfx_elec_object.depth = depth - 1;
	}


// Fair SFX
if(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1){
	sound_play(sound_get( "lightning" ),false,noone,1,1.5); // soundID,looping,panning,volume,pitch}{
}
// Grab Ending Attacks SFX
if(my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == get_num_hitboxes(AT_USPECIAL_2)){
	sound_play(sound_get( "thunder" ),false,noone,1,.75); // soundID,looping,panning,volume,pitch
	var hitfx_elec_consume_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_consume_elec);
	hitfx_elec_consume_object.depth = depth - 1;
}

if(my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == get_num_hitboxes(AT_FSPECIAL_2)){
	sound_play(sound_get( "thunder" ),false,noone,1,.75); // soundID,looping,panning,volume,pitch
	var hitfx_elec_consume_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_consume_elec);
	hitfx_elec_consume_object.depth = depth - 1;
}

if(my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == get_num_hitboxes(AT_DSPECIAL_2)){
	sound_play(sound_get( "thunder" ),false,noone,1,.75); // soundID,looping,panning,volume,pitch
	var hitfx_elec_consume_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_consume_elec);
	hitfx_elec_consume_object.depth = depth - 1;
}

if(my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == get_num_hitboxes(AT_EXTRA_3)){
	sound_play(sound_get( "thunder" ),false,noone,1,.75); // soundID,looping,panning,volume,pitch
	var hitfx_elec_consume_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_consume_elec);
	hitfx_elec_consume_object.depth = depth - 1;
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
	hitbox_attack_name == AT_NSPECIAL ||
	hitbox_attack_name == AT_EXTRA_2)
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
		if(my_hitboxID.hbox_num == 2){element = "grab";}
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
		}
	}
}