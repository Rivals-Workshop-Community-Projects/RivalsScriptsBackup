if ((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR) && hit_player_obj.state != PS_RESPAWN && hit_player_obj.invincible == false){
    if (my_hitboxID.hbox_num == 1 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 1000;
        grabbedid.state = PS_WRAPPED;
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && (hit_player_obj.state != PS_TECH_GROUND || hit_player_obj.state != PS_TECH_FORWARD || hit_player_obj.state != PS_TECH_BACKWARD || hit_player_obj.state != PS_WALL_TECH)){
    hit_player_obj.invincible = false;
}

if (attack == AT_NSPECIAL && state == clamp(state, 5, 6) && my_hitboxID.attack == AT_NSPECIAL) {
  has_hit_player = true;
  has_hit = true;
}

if (attack == AT_USTRONG){
    if (my_hitboxID.hbox_num == 1 && has_hit_player){
		hit_player_obj.x = lerp(hit_player_obj.x, x + spr_dir * 40, 0.7);
		hit_player_obj.y = lerp(hit_player_obj.y, y, 0.7);
	}
	if (my_hitboxID.hbox_num == 2 && has_hit_player){
		hit_player_obj.x = lerp(hit_player_obj.x, x + spr_dir * 45, 0.7);
		hit_player_obj.y = lerp(hit_player_obj.y, y - 15, 0.7);
	}
	if (my_hitboxID.hbox_num == 3 && has_hit_player){
		hit_player_obj.x = lerp(hit_player_obj.x, x + spr_dir * 35, 0.7);
		hit_player_obj.y = lerp(hit_player_obj.y, y - 60, 0.7);
	}
}

if (attack == AT_NSPECIAL_AIR){
    if ((my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6) && has_hit_player){
		hit_player_obj.x = lerp(hit_player_obj.x, x + spr_dir * 30, 0.9);
		hit_player_obj.y = lerp(hit_player_obj.y, y, 0.9);
	}
}