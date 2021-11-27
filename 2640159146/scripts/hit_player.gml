user_event(11);

//hit_player.gml
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num = 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 4;
		window_timer = 0;
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

//hit_player.gml
if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num = 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 4;
		window_timer = 0;
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

if(my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num == 1 and !hit_player_obj.clone){
	fspecial_grabbed_player = hit_player_obj;
			destroy_hitboxes();

}

//hit_player.gml
if (my_hitboxID.attack == AT_FSTRONG_2 && my_hitboxID.hbox_num = 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 4;
		window_timer = 0;
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

if (my_hitboxID.attack == AT_USPECIAL && hit_player_obj.state == PS_HITSTUN) {
	if (my_hitboxID.hbox_num <= 2) {
		target = hit_player_obj;
		//target.x = my_hitboxID.x;
		//target.y = my_hitboxID.y;
	}
}



//Made it so that Nspecial and Fspecial drain meter (Krankees)
if (burst != 1) 
{
	if (my_hitboxID.attack != AT_NSPECIAL and my_hitboxID.attack != AT_FSPECIAL and my_hitboxID.attack != AT_FSTRONG)
	{
		bloodmeter += (my_hitboxID.damage * 2.25);
	}
	else if (my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FSTRONG)
	{
		if (my_hitboxID.hbox_num == 2)
		bloodmeter -= 10;
	}
}
//gnome
switch(my_hitboxID.attack) {
	case AT_FAIR: 
		sound_play(sound_get("swingstrong"), 0, noone, 1, 1)
		sound_play(asset_get("sfx_icehit_medium2"), 0, noone, .7, 1.4)
		break;
	case AT_DTILT: 
		sound_play(asset_get("sfx_icehit_medium2"), 0, noone, .7, 1.4)
	break;
	case AT_DAIR: 
		sound_play(sound_get("swingstrong"), 0, noone, 1.6, 1)
	break;
	case AT_BAIR: 
		sound_play(sound_get("swingstrong"), 0, noone, 1, .95)
		sound_play(asset_get("sfx_icehit_medium2"), 0, noone, 1, 1)
		break;
	case AT_DSTRONG: 
	if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3 sound_play(sound_get("swingstrong"), 0, noone, 1, 1.05)
	if my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4 sound_play(sound_get("swingstrong"), 0, noone, 1, .9)
	sound_play(asset_get("sfx_icehit_medium2"), 0, noone, 1, 1)
	break;
	case AT_USTRONG: 
		sound_play(sound_get("swingstrong"), 0, noone, 1, .8)
		sound_play(asset_get("sfx_icehit_medium2"), 0, noone, .7, 1.4)
	break;
}

//hit_player.gml

if my_hitboxID.type == 1 && my_hitboxID.attack != AT_NAIR {
  
  if my_hitboxID.damage >= 5 {
        sound_play(sound_get("swingstrong"),false,noone, 0.4 + my_hitboxID.damage/30)    
       
  } else {
        sound_play(sound_get("swingmid"),false,noone, 0.4 + my_hitboxID.damage/30)   
  
  }
       sound_play(asset_get("sfx_icehit_medium2"),false,noone, 0.3 + my_hitboxID.damage/20)    

 }
 
 if attack == AT_DSPECIAL_AIR {
 		djumps = 0;
 }
 
if(burst == 1){
 	switch(my_hitboxID.attack){
 		case AT_FSTRONG_2:
 		case AT_FSPECIAL:
 			if(my_hitboxID.hbox_num == 1){
 				break;
 			}
 		case AT_DSTRONG:
 		 	spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-32, hfx_claw);
 		 	break;
 		case AT_NSPECIAL:
 			if(my_hitboxID.hbox_num == 1){
 				break;
 			}
 		case AT_USTRONG:
 			spawn_hit_fx(x+spr_dir*32, hit_player_obj.y-52, hfx_clawup);
 		 	break;
 	}
}
 