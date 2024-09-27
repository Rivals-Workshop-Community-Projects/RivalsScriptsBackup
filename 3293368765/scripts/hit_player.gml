//hit_player.gml
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == tn_uspec_grab_box_num) {
	
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
        window = tn_uspec_throw_window;
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

if (my_hitboxID.attack == AT_NSPECIAL && tn_nspec_will_charge) {
    hit_player_obj.orig_knock *= tn_nspec_will_mult;
}

if(my_hitboxID.attack == AT_DAIR){
	fast_falling = false;
}

if(my_hitboxID.attack == AT_NSPECIAL_2){
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, fx_cat)
}

if(has_rune("G")){
	if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num = 2 hit_player_obj.teenah_shock = noone;
	if(my_hitboxID.attack != AT_DSPECIAL && (my_hitboxID.force_flinch != 1 || (my_hitboxID.force_flinch == 1 && hit_player_obj.free))){
		hit_player_obj.teenah_shock = self;
		hit_player_obj.hitpause_shock = true;
		hit_player_obj.can_bounce = false;
		hit_player_obj.can_tech = false;
		// hit_player_obj.can_wall_tech = false;
	}
}