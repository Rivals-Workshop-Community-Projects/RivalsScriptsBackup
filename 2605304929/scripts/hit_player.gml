/* Maw's Code
## `hit_player.gml` - 'Grab' Opponents On Hit, Transition to 'Throw'
```GML
//hit_player.gml */

//#region Other
// Nspecial exception
if (my_hitboxID.attack == AT_NSPECIAL && hit_player_obj.ground_type == 2) { // ground_type	Is 1 while on a solid block and 2 while on a platform.
	with(hit_player_obj){
	free = true;
	fall_through = true;
	}
}
//#endregion

//#region Element Build Up and Flag Logic
// This Section needs to come before the grab set due to it affecting which attack it goes into.
var element = Resolve_Element(my_hitboxID.attack);
var element_build_up = my_hitboxID.damage;
var element_applied_player = hit_player_obj;

	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.
if((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	&& was_parried == false
	&& hit_player_obj.clone == false){
		Apply_Element_Build_Up(element,element_build_up,element_applied_player);
		
		// Electrically Buffed Water Attack
		if(hit_player_obj.status_effect_electric > electric_buff_water_attack_threshold && element == "water" ){ // 20 damage threshold & activates with opposite element
			hit_player_obj.status_effect_electric = 0;
			electric_buff_water_attack_flag = true;
			
			var attack_temp = my_hitboxID.attack;
			var hbox_num_temp = my_hitboxID.hbox_num;
			var hitbox_x_temp = my_hitboxID.x;
			var hitbox_y_temp = my_hitboxID.y;
			var hitfx_consume_elec_temp = hitfx_consume_elec;
			var sfx_thunder_temp = sound_get("thunder");
			
			destroy_hitboxes();
			
			var elec_boosted_hitbox = create_hitbox(attack_temp,hbox_num_temp,hitbox_x_temp,hitbox_y_temp);
			with(elec_boosted_hitbox){
				hbox_group = -1;
				hitpause = 120;
				damage = 12;
				camera_shake = 1;
				hit_effect = hitfx_consume_elec_temp;
				sound_effect = sfx_thunder_temp;
			}
			
			// Logic to end the attack to prevent multi hits from consuming it.
			/*
			iasa_script();
			if(state == PS_ATTACK_AIR){
				destroy_hitboxes();
				attack_end();
				state = PS_IDLE_AIR;
				hurtboxID.sprite_index = hurtbox_spr; // resets the hurbox, thanks Shampoo!
			}
			if(state == PS_ATTACK_GROUND){
				destroy_hitboxes();
				attack_end();
				state = PS_IDLE;
				hurtboxID.sprite_index = hurtbox_spr; // resets the hurbox, thanks Shampoo!
			}
			*/
			// Logic to get info from the attack that activated it. 
			//var temp_angle = my_hitboxID.kb_angle
			
			//Set Hitbox Variables for the consume effect
			//set_hitbox_value(AT_NSPECIAL,5,HG_ANGLE,temp_angle); // Only using angle right now
			
			// Need to load values to attack script here for nspecial 2nd hitbox
			//var elec_consume_hitbox = create_hitbox(AT_NSPECIAL,5,hit_player_obj.x,hit_player_obj.y);
			electric_buff_water_attack_flag = false;
			hit_player_obj.status_effect_electric = 0;
		}
		// Water Buffed Electrical Attack
		if(hit_player_obj.status_effect_water > water_buff_electric_attack_threshold && element == "grab" ){ // damage threshold & activates with opposite element
			hit_player_obj.status_effect_water = 0;
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
if (my_hitboxID.attack == AT_EXTRA_1) {

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
	my_hitboxID.attack == AT_FSTRONG ||
	my_hitboxID.attack == AT_NAIR ||
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
// Water Hitfx
if(my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2 ||
	my_hitboxID.attack == AT_USTRONG ||
	my_hitboxID.attack == AT_DSTRONG ||
	my_hitboxID.attack == AT_FTILT ||
	my_hitboxID.attack == AT_DATTACK ||
	my_hitboxID.attack == AT_FAIR ||
	my_hitboxID.attack == AT_BAIR)
	{
	var hitfx_water_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_water);
		hitfx_water_object.depth = depth - 1;
	}
	
// Lighting Hitfx
if(my_hitboxID.attack == AT_USPECIAL || //my_hitboxID.attack == AT_UTHROW || my_hitboxID.attack == AT_USPECIAL_2 ||
	my_hitboxID.attack == AT_FSPECIAL || //my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_FSPECIAL_2 ||
	my_hitboxID.attack == AT_DSPECIAL || //my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_DSPECIAL_2 ||
	my_hitboxID.attack == AT_EXTRA_1 || //my_hitboxID.attack == AT_NSPECIAL_2 || my_hitboxID.attack == AT_EXTRA_3 ||
	my_hitboxID.attack == AT_EXTRA_2 //|| my_hitboxID.attack == AT_NTHROW)
)
	{
	var hitfx_elec_object = spawn_hit_fx(hit_player_obj.x + (hitfx_x_offset_temp*spr_dir), hit_player_obj.y - (hit_player_obj.char_height/2), hitfx_large_elec);
		hitfx_elec_object.depth = depth - 1;
	}
//#endregion

#define Resolve_Element(hitbox_attack_name)
{
	var element = "non-elemental"; // Default Case
	if(hitbox_attack_name == AT_FTILT ||
	hitbox_attack_name == AT_UTILT ||
	hitbox_attack_name == AT_DTILT ||
	hitbox_attack_name == AT_JAB ||
	hitbox_attack_name == AT_BAIR ||
	hitbox_attack_name == AT_FAIR ||
	hitbox_attack_name == AT_NAIR ||
	hitbox_attack_name == AT_DAIR ||
	hitbox_attack_name == AT_UAIR ||
	hitbox_attack_name == AT_DATTACK ||
	hitbox_attack_name == AT_USTRONG ||
	hitbox_attack_name == AT_DSTRONG ||
    hitbox_attack_name == AT_FSTRONG)
    {element = "water";}

	//Electric
	if(hitbox_attack_name == AT_FTHROW ||
	hitbox_attack_name == AT_UTHROW ||
	hitbox_attack_name == AT_DTHROW ||
	hitbox_attack_name == AT_NTHROW ||
	hitbox_attack_name == AT_NSPECIAL ||
	hitbox_attack_name == AT_NSPECIAL_AIR ||
	hitbox_attack_name == AT_NSPECIAL_2 ||
	hitbox_attack_name == AT_FSPECIAL_2 ||
	hitbox_attack_name == AT_USPECIAL_2 ||
	hitbox_attack_name == AT_DSPECIAL_2 ||
	hitbox_attack_name == AT_EXTRA_3
	)
	{element = "electric";}
	
	// Grab Elements
	if(hitbox_attack_name == AT_FSPECIAL||
	hitbox_attack_name == AT_USPECIAL ||
	hitbox_attack_name == AT_EXTRA_1 ||
	hitbox_attack_name == AT_EXTRA_2 )
	{element = "grab";}
	
	// Dspecial Exception
	if(hitbox_attack_name == AT_DSPECIAL ||
	hitbox_attack_name == AT_DSPECIAL_AIR)
	{
		if(my_hitboxID.hbox_num == 1){element = "electric";}
		if(my_hitboxID.hbox_num == 2){element = "grab";}
	}
	
	if(hitbox_attack_name == AT_NSPECIAL)
	{
		if(my_hitboxID.hbox_num != 5){element = "electric";}
		if(my_hitboxID.hbox_num == 5){element = "water";} // Consume Hitbox, not actually related to nspecial
	}
	
	return element;
}

#define Apply_Element_Build_Up(element,element_build_up,element_applied_player)
{
	if(element == "non-elemental"){
		return;
	}
	
	if(element == "water"){
		with(element_applied_player){
			status_effect_water = status_effect_water + element_build_up;
		}
	}
	
	if(element == "electric"){
		with(element_applied_player){
			status_effect_electric = status_effect_electric + element_build_up;
		}
	}
	
	if(element == "both"){
		with(element_applied_player){
			status_effect_electric = status_effect_electric + element_build_up;
			status_effect_water = status_effect_water + element_build_up;
		}
	}
}