/*
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(20*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-60, .4);
    }
}
*/
//
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num < 4 and free){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x, .35);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-30, .35);
        old_vsp = -4;
    }
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num == 4){
        old_vsp = -4;
    }
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL)
    {
        if(my_hitboxID.hbox_num == 1)
        {
            window = 4;
            window_timer = 0;
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
            grabbed_player_obj = hit_player_obj;
            grabbed_player_relative_x = floor(grabbed_player_obj.x - x);
            grabbed_player_relative_y = floor(grabbed_player_obj.y - y);
        }
        else
        {
            reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
            grabbed_player_obj = noone; 
            if(my_hitboxID.hbox_num == 2)   
                hit_player_obj.x = lerp(floor(hit_player_obj.x), x-40*spr_dir, .8);
        }
    }
}
if(my_hitboxID.attack == AT_USPECIAL and (my_hitboxID.hbox_num == 3 or my_hitboxID.hbox_num == 5)){
	sound_play(sound_get("crit"));
	}
	
if(my_hitboxID.attack == AT_DATTACK and (my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2 or my_hitboxID.hbox_num == 3 or my_hitboxID.hbox_num == 4)){
	sound_play(asset_get("sfx_blow_medium1"));
	}
	
	if(my_hitboxID.attack == AT_DATTACK and (my_hitboxID.hbox_num == 5)){
	sound_play(asset_get("sfx_blow_medium3"));
	}
	
	
	
