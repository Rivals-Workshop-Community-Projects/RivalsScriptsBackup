if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(20*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-60, .4);
    }
}
switch my_hitboxID.attack {
    
    case AT_FSTRONG:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     
    break;
    case AT_NSPECIAL:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     
    break;
    case AT_USPECIAL:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
     
    break;
}


