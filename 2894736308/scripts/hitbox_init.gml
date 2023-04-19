switch(attack){
    
    case AT_FSPECIAL:
        hitpause_timer = -1;
        break;
    
    case AT_TAUNT:
        proj_angle = 60 * spr_dir + (180 * (spr_dir - 1));
        break;
    
}