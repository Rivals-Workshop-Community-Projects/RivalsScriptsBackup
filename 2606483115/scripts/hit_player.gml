//Dattack Stuff
if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num != 6 && !hit_player_obj.super_armor && hit_player_obj.soft_armor < my_hitboxID.damage){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;	
		grabbedid.ungrab = 0;
    }
}

//Dattack Stuff
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num < 7 && !hit_player_obj.super_armor && hit_player_obj.soft_armor < my_hitboxID.damage){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
    }
}

//Strong SFX Layering
if(attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG){
	if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 7){
		sound_play(asset_get("sfx_ell_steam_hit"))
	}
	if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)){
		sound_play(asset_get("sfx_ell_steam_hit"))
	}
}

//Steam Wall Dismiss
if(!(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) && !(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 3)){
	if(steam_wall_no_down <= 0){
		steam_wall_dismiss = true
	}
}

//Steam Geyser Thing
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){
	if(instance_exists(geyser)){
		geyser.state = 3
		geyser.state_timer = 0
		geyser.image_index = 0
	}
}
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 3){
	if(instance_exists(geyser_2)){
		geyser_2.state = 3
		geyser_2.state_timer = 0
		geyser_2.image_index = 0
	}
}

reserve_supply_active = false

/*
if(pedal_to_metal){
	steam += 2
}
*/

//Steam Geyser Scan Hitbox Extended Hitstun If Enemy Is Hit
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){
	if(other.state == PS_HITSTUN || other.state == PS_HITSTUN_LAND){
		other.hitpause = true
		other.hitstop = 8
		other.hitstop_full = 8
		other.old_hsp = 0
		other.old_vsp = 0
	}
}