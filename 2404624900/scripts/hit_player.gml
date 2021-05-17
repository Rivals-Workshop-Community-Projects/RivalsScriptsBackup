//hit_player - called when one of your hitboxes hits a player

if (move_cooldown[AT_NSPECIAL] > 0){
	if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_NAIR || my_hitboxID.attack == AT_BAIR){
		move_cooldown[AT_NSPECIAL] -= 40;
	}
	if (my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_DTILT
	|| my_hitboxID.attack == AT_DATTACK){
		move_cooldown[AT_NSPECIAL] -= 60;
	}	
	if (my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG){
		move_cooldown[AT_NSPECIAL] -= 150;
	}
	if (my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_DAIR
	|| my_hitboxID.attack == AT_USPECIAL){
		move_cooldown[AT_NSPECIAL] -= 80;
	}
}

//Izuna Drop
if (hit_player_obj.clone = false && hit_player_obj.super_armor = false){

if (attack == AT_USPECIAL){
	if (my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_NSPECIAL){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
    }
    if (runeF){
    	hit_player_obj.hitstop = 180;	
    }
    else {
    	hit_player_obj.hitstop = 180;	
    }
    izuna = 1;
    sound_play( asset_get( "sfx_blow_weak2" ) );
}
}

}

if ((runeG || has_rune("G")) && my_hitboxID.attack == AT_FSPECIAL){
	spawn_hit_fx( x, y-20, 13);
	x = hit_player_obj.x;
	y = hit_player_obj.y;
	spawn_hit_fx( x, y-20, 13);
	runeG_hit = true;
}

if (runeK){
	if (attack == AT_DAIR) {
    	window = 7;
	}
}