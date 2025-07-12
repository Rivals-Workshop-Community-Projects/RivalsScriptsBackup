//
cant_break_clouds = false;

switch(attack){
    case AT_FSPECIAL:
    case AT_FSPECIAL_2:
    case AT_DSPECIAL:
    case AT_DSPECIAL_2:
    cant_break_clouds = true;
    break;
    
    case AT_NSPECIAL:
    cant_break_clouds = true;
    final_upgrade_cooldown = 0;
    //upgrade_cooldown = 0;
    tier = hbox_num;
    bigsmoke = player_id.bigsmoke;
    level2sprite = player_id.t2projsprite;
    level3sprite = player_id.t3projsprite;
    break;
}