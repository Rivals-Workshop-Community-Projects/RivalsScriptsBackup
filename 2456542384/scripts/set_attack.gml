if attack == AT_DATTACK {
    set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
}
if attack == AT_USTRONG {
    set_attack_value(AT_USTRONG,AG_CATEGORY,0);
    //grab variables reset
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
}
if attack == AT_FSPECIAL {
    grabbed_wall = false;
    //grab variables reset
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
}
if attack == AT_NSPECIAL {
    set_attack_value(AT_NSPECIAL,AG_NUM_WINDOWS,3);
    //grab variables reset
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
}
if attack == AT_USPECIAL {
    grabbed_wall = false;
    can_use_uspecial = false;
    //grab variables reset
    reset_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE);
    reset_hitbox_value(AT_USPECIAL, 3, HG_ANGLE);
    reset_attack_value(AT_USPECIAL,AG_NUM_WINDOWS);
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
}
if attack == AT_DAIR {
    grabbed_wall = false;
    grabbed_player_obj = noone; 
    grabbed_player_relative_x = 0;
    grabbed_player_relative_y = 0;
}

if attack == AT_TAUNT {
    should_bite = false;
}
//flower activator
if attack == AT_DSPECIAL && (instance_exists(dros_flower) || flower_cooldown_rn > 0 || place_meeting(x,y+1,asset_get("par_jumpthrough")) || free) {//use dspecial 2 if flower exists, is on cooldown, or you're on a platform
    attack = AT_DSPECIAL_2;
}

if (attack == AT_UAIR && vsp >= 0){
    vsp -= 4;
}

//woo yeah windows top 8 gaming
if attack == AT_TAUNT && get_player_color(player) == 17 {
    attack = AT_TAUNT_2;
}

//user_event(13); no phone for now