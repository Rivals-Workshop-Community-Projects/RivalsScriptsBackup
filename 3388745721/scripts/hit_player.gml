

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(50*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .4);
    }
}
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 1){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(52*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .4);
    }
}

switch my_hitboxID.attack {
	case AT_DATTACK:
	if my_hitboxID.hbox_num == 1 {
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1"));
    }	
    if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_zetter_upb_hit"));
    }	
	break;
	case AT_FSTRONG:
    if my_hitboxID.hbox_num == 1 {
        sound_play(asset_get("sfx_ell_uspecial_explode")); 
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
        sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
    }
    break;
    case AT_DSTRONG:
    if my_hitboxID.hbox_num <= 3 {
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
    }
    if my_hitboxID.hbox_num == 4 {
        sound_play(asset_get("sfx_ell_uspecial_explode")); 
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
    }
    break;
	case AT_NSPECIAL_2:
     if my_hitboxID.hbox_num <= 4 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 5{
     	sound_play(asset_get("sfx_ell_uspecial_explode")); 
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
        sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
    break;
    case AT_FSPECIAL_2:
    if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_ell_big_missile_ground"));
     }
    break;
    case AT_USPECIAL_2:
    if my_hitboxID.hbox_num <= 4 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 5{
     	sound_play(asset_get("sfx_ell_uspecial_explode")); 
        sound_play(asset_get("sfx_ori_spirit_flame_hit_1")); 
        sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
        take_damage(player,1,5);
     }
    break;
	case AT_DSPECIAL:
     if my_hitboxID.hbox_num == 1 {
         sound_play(sound_get("heal"));
         take_damage(player,1,-2);
         old_hsp = 0;
     }
     if my_hitboxID.hbox_num == 2 {
         take_damage(player,1,-2);
         old_hsp = 0;
     }
     if my_hitboxID.hbox_num == 3 {
         take_damage(player,1,-2);
         old_hsp = 0;
     }
    break;
    case AT_DSPECIAL_2:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 2 {
     	sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 3 {
     	sound_play(asset_get("sfx_blow_medium2"),false,noone,0.8);
     }
     if my_hitboxID.hbox_num == 4 {
     	sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
     }
    break;
}
	
