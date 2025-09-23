// if(my_hitboxID.attack == AT_UTILT){
//     set_state( PS_PRATFALL );
// }
// if(my_hitboxID.attack == AT_DAIR){
//     set_state( PS_PRATFALL );
// }
// if(my_hitboxID.attack == AT_NSPECIAL){
//     set_state( PS_PRATFALL );
// }
// if(my_hitboxID.attack == AT_DSTRONG){
//     set_state( PS_PRATFALL );
// }

// if(my_hitboxID.attack == AT_EXTRA_1) and ((axe.state == 2) or (axe.state == 3)){
//     set_state( PS_PRATFALL );
//     print("missed me with that straight mf");
// }

// if(my_hitboxID.attack == AT_EXTRA_2){
//         	lamp.state=2;
// 	    player_id.lamp_number--;
//     print("Lantern explodes");
    
// }

if(my_hitboxID.attack == AT_NSPECIAL){
	my_hitboxID.destroyed = true;
	if(instance_exists(axe)) with(axe) {
		returning = false;
		was_parried = true;
        if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
        state_timer=0;
        state = 3;
    	is_hittable = false;
    	ignores_walls = true;
    	sprite_index = sprite_get("spinning_axe2");
    	return_magnintude = 0;
    	return_dir = point_direction(x, y, player_id.x, player_id.y);
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	hsp = clamp(hsp, -3, 3);
	old_hsp = clamp(hsp, -3, 3);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 3);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 3);
    set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 3);
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	/*my_hitboxID.has_bounced = false;
	my_hitboxID.vsp = max(my_hitboxID.vsp, -my_hitboxID.vsp);
	my_hitboxID.free = true;
	my_hitboxID.y -= my_hitboxID.vsp;
	*/
	was_parried = true;	
	my_hitboxID.destroyed = true;
}