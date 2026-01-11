//Jab Whiff/Hit

if attack == AT_JAB && my_hitboxID.hbox_num == 3{
    
    set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
    set_window_value(AT_JAB, 8, AG_WINDOW_GOTO, 9);
    
}

//UTilt Extra Effects
if attack == AT_UTILT && my_hitboxID.hbox_num == 4{
    var stars = spawn_hit_fx(x - 11 * spr_dir, y - 17, hfx_utilt_finalhit)
    stars.depth -= 10;
}

//NSpecial Effect
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2)
|| (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 2)

   
    var explode = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_nspecial_explode);


//USpecial No Galaxy on Multihit

if attack == AT_USPECIAL{
    
    if my_hitboxID.hbox_num <= 7 {
        
        hit_player_obj.should_make_shockwave = false;
        
    }
    
}

    //DSpecial Command Grab Buuuuullshiiiiit (Zard was here)
if (my_hitboxID.attack == AT_DSPECIAL) {
	
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
		set_attack( AT_DSPECIAL_2 );
		
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

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num >= 2 && my_hitboxID.hbox_num <= 6 && "spongebob_grab_hitbox" in hit_player_obj {
	hit_player_obj.spongebob_grab_hitbox = my_hitboxID;
}