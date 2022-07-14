if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num < 5){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-30, .35);
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+40*spr_dir, .35);
    }
}

//hit_player.gml
if (my_hitboxID.attack == AT_DSPECIAL)
{
	if (my_hitboxID.hbox_num == 1) 
	{
		
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
	            set_attack_value(attack, AG_NUM_WINDOWS, 5);
	            window = 4;
	            window_timer = 1;//0
			
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
			with(pHitBox)
			{
				if (hbox_num == 3)
				{
					destroyed = true; //if the grab hitbox lands, previous phanto will be destroyed
				}
			}
		}
	}
	else if (my_hitboxID.hbox_num == 2) // add code that spawns the phanto, which will track the player it hits
	{				
		//if (phantom == noone) {
		create_hitbox(AT_DSPECIAL, 3, x, y - 500);
		keymarked = 1;
		phantom = hit_player_obj;
	}
	else if (my_hitboxID.hbox_num == 3) //if phanto hits opponent, phanto will stop tracking opponent and opponent will no longer be keymarked.
	{
		if (hit_player_obj = phantom)
		{
			phantom = noone;
			keymarked = 0;
		}
	}
}

//Charizard6903 code
if (my_hitboxID.attack == AT_DAIR){
    window = 4;
    dairbounce = false;
}
