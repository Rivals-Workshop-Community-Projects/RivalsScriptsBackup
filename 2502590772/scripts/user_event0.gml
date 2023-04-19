//user_event0.gml - plusle and minun constants.
//called in init.gml.

if (is_master_player || is_solo_player) {
	
    hh_knockback_multiplier = 1;		//multiplicative
    hh_damage_multiplier = 1.6; 		//multiplicative
    hh_hitpause_increment = 5;			//additive
    hh_base_knockback_increment = 4;	//additive
    
    hh_percent_per_level = 5;
    hh_charge_percent_array = [1, 15, 25];
    hh_maximum_charge_level = 3;
    
    hh_maximum_charge_expiry_timer = 30;
    
    
	if (is_master_player) exit;
}

partner_input_buffer_delay = 7; //the input delay between the leader and partner
uspecial_travel_speed = 30; //the travel speed of uspecial (multiply by 6 for total distance)
uspecial_maximum_team_up_distance = 120; //max distance for uspecial to team up with the partner
uspecial_land_cancel_multiplier = 0.5; //multiplier when uspecial is land-cancelled.