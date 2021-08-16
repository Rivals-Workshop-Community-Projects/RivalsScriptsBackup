
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DTILT and my_hitboxID.hbox_num == 1){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+ vsp*6 +60*spr_dir, .5);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .5);
    }
    
    if(my_hitboxID.attack == AT_UTILT and my_hitboxID.hbox_num < 5){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x, .2);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .1);
    }
    
    if(my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num != 14){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+spr_dir*40, .5);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .5);
    }
    
    if(my_hitboxID.attack == AT_NAIR and my_hitboxID.hbox_num == 3){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+spr_dir*40 + 9*hsp, .35);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .1);
    }
}

if(my_hitboxID.attack == AT_NSPECIAL){
    knife_hit = true;
    my_hitboxID.can_hit[hit_player_obj.player] = true;
}

if(my_hitboxID.attack == AT_USTRONG and my_hitboxID.hbox_num == 2){
    if(instance_exists(my_hitboxID.chainsaw)){
        my_hitboxID.chainsaw.hit_count++;
        my_hitboxID.chainsaw.cur_vsp = my_hitboxID.chainsaw.vsp;
    	my_hitboxID.chainsaw.stop_time = 6;
    	my_hitboxID.chainsaw.cur_hsp = my_hitboxID.chainsaw.hsp;
    	if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
            hit_player_obj.x = lerp(floor(hit_player_obj.x), my_hitboxID.chainsaw.x + spr_dir*16, .4);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), my_hitboxID.chainsaw.y, .4);
    	}
    }
}
