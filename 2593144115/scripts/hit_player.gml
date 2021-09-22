if (my_hitboxID.attack == AT_DAIR)
{
   if (my_hitboxID.hbox_num = 1) old_vsp = -4;
   if (my_hitboxID.hbox_num > 1) old_vsp = -6;
}

if (my_hitboxID.attack == AT_FTILT) 
{
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack(AT_FTILT2);
		
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

if ( my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num > 1 ||
my_hitboxID.attack == AT_FSTRONG || 
my_hitboxID.attack == AT_FSPECIAL ||
my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num = 3){
    if (my_hitboxID.was_parried = false){

        if (!hit_player_obj.amaya_venom) {
            //sound_play(sound_get("mark"));
        }
	    hit_player_obj.amaya_venom = true;
            hit_player_obj.amaya_venom_id = id;
            hit_player_obj.amaya_venom_count++;
            amaya_venom_consumed = false;
            if (my_hitboxID.attack == AT_FSTRONG ||
            my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num = 3 ||
            my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num = 2 ||
            my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num >= 3) hit_player_obj.amaya_venom_count++; //hitboxes that inflict 2+ venom
            if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num = 2) hit_player_obj.amaya_venom_count++; //hitboxes that inflict 3+ venom
            if (hit_player_obj.amaya_venom_count > 4) hit_player_obj.amaya_venom_count = 4;
            else hit_player_obj.amaya_venom_timer = 0;
        }
}

if (my_hitboxID.attack == AT_NSPECIAL && instance_exists(venombubble_ins))
{
    venombubble_ins.bubble_has_hit++;
}

if (my_hitboxID.attack == AT_DSPECIAL && hit_player_obj.amaya_venom && hit_player_obj.amaya_venom_id == id){
    if (my_hitboxID.hbox_num == 1){
        amaya_venom_consumed = true;
        hit_player_obj.should_make_shockwave = false;
    } else {
		hit_player_obj.amaya_venom = false;
                hit_player_obj.amaya_venom_count = 0;
	}
}

//scripts are seperate incase i want to edit one move in particular

if (my_hitboxID.attack == AT_USPECIAL && hit_player_obj.amaya_venom && hit_player_obj.amaya_venom_id == id){
    if (my_hitboxID.hbox_num == 2){
        amaya_venom_consumed = true;
        hit_player_obj.should_make_shockwave = false;
    } else if (my_hitboxID.hbox_num == 3){
		hit_player_obj.amaya_venom = false;
                hit_player_obj.amaya_venom_count = 0;
	}
}

time_since_last_hit = 0;