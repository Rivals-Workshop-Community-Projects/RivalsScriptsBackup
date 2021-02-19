//hit_player - called when one of your hitboxes hits a player

if (attack == AT_FSPECIAL){
    if (window == 2 && grabbedid == noone && hit_player_obj.clone = false && hit_player_obj.super_armor = false){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
	window = 4;
	let_go = false;
    }
}

if (hit_player_obj.clone = true){
    	grabbedid = noone;	
    }

if (my_hitboxID.attack == AT_USPECIAL){
//	cargo_timer = 0;
	hit_player_obj.x = barrel.x;
	hit_player_obj.y = barrel.y;
	barrel.shoulddie = true;
}

if (runeC || has_rune("C")){
	if (my_hitboxID.attack == AT_USPECIAL && launch_now = false){
		hit_player_obj.burned = true;
    	hit_player_obj.burnt_id = id;
	}
}

if (my_hitboxID.attack == AT_NSPECIAL){
	barrel_explode = true;
	hit_player_obj.outline_color = [ 100, 51, 10];
}
else {
	hit_player_obj.outline_color = [ 0, 0, 0];
}


