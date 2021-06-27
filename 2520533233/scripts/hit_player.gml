
if(hit_player_obj != self){
    teleport_target = hit_player_obj;
}

if(attack == AT_DATTACK and my_hitboxID.hbox_num != 6 and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){

    hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .7);
    hit_player_obj.y = lerp(floor(hit_player_obj.y), y-10, .5);
}

if(attack == AT_DAIR and my_hitboxID.hbox_num != 1 and my_hitboxID.hbox_num != 6 and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    hit_player_obj.y = lerp(floor(hit_player_obj.y), y+25, .4);
}

if(attack == AT_FSTRONG and my_hitboxID.hbox_num == 1 and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+40*spr_dir, .9);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .5);
}

if(attack == AT_EXTRA_3){
    grabbed_player = hit_player_obj;
}