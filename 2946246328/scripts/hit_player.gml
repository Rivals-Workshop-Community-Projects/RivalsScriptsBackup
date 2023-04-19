/*
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(20*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-60, .4);
    }
}
*/
//
if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && id == my_hitboxID.player_id){
	my_hitboxID.nspecial_in_hitpause += my_hitboxID.hitpause;
}



if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USTRONG and my_hitboxID.hbox_num < 2){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x, .35);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-90, .35);
    }
}
if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2 ){
    sound_play(asset_get("sfx_absa_uair"), false, noone, 1,1);
}
if(my_hitboxID.attack == AT_DAIR){
    old_vsp = -2;
}
if(my_hitboxID.attack == AT_EXTRA_1){
	if (my_hitboxID.hbox_num == 1){
    	window = 4;
    	window_timer = 0;
    	old_vsp = -8;
	}
	if (my_hitboxID.hbox_num == 2){
    	old_vsp = -4;
	}
    
}

    
/*
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num < 3){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+20*spr_dir, .35);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-30, .35);
        old_vsp = -4;
    }
}
*/


if(my_hitboxID.attack == AT_USPECIAL) && my_hitboxID.hbox_num <= 4 && (!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0) { 
	hit_player_obj.x = x;
	hit_player_obj.y = y - char_height / 2;
}
	

        