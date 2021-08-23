if (my_hitboxID.attack == AT_FSPECIAL && window  == 2) {
    window = 3;
    window_timer = 0;
    hsp = 0;
    destroy_hitboxes();
}

if (my_hitboxID.attack == AT_NSPECIAL && window  == 2) {
    window = 3;
    window_timer = 0;
    hsp = 0;
    destroy_hitboxes();
}


if (my_hitboxID.attack == AT_DSPECIAL && window  == 4){
	window = 6;
}

//Grabbing opponent
if (my_hitboxID.attack == AT_NSPECIAL && wario_grab == false){
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	        
	        //Timer is the opponent percentage + 60
	        grab_timer = get_player_damage(hit_player_obj.player) + 60;
	        
	        
	        grab_dir = 3;
	        wario_grab = true;
            window = 3;
            window_timer = 1;
	        hit_player_obj.x = x+40*spr_dir;
	        hit_player_obj.y = y;
	        
	  }
}

//Get out of the grab state when throwing the opponent
if (my_hitboxID.attack == AT_NSPECIAL_2){
	wario_grab = false;
	djumps = 0;
}