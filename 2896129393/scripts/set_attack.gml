//a
blood_special_boost = false;
if (attack == AT_NSPECIAL or attack == AT_FSPECIAL or attack == AT_DSPECIAL or attack == AT_USPECIAL) && is_bloody {
    blood_special_boost = true;
    
    //base stuff while I don't have custom ones
    sound_play(asset_get("sfx_syl_dspecial_growth"),false,noone,1,1.25);
    //sound_play(asset_get("sfx_syl_fspecial_bite"),false,noone,1,1.4);
    sound_play(asset_get("sfx_zetter_shine"),false,noone,0.65,0.85);
    sound_play(asset_get("sfx_rag_axe_swing"),false,noone,0.55,1.5);
    spawn_hit_fx(x,y-5, 301);
    //spawn_hit_fx(x,y-5, 19)
}
if attack == AT_FSPECIAL {
    fspecial_loops = 0;
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
}
if attack == AT_DSPECIAL {
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
    set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
}
if attack == AT_NSPECIAL && !free {
    nspecial_has_stall = true;
}