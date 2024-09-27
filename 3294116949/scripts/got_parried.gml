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