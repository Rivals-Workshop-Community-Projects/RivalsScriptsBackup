if state_cat == SC_HITSTUN && hurt_img != 5 image_index = 1 - (hurt_img == 3? !free: hitstop>0);

// sprite_index = asset_get("stinky_idle")

if(attack == AT_INTRO && state == PS_ATTACK_GROUND){
    switch(window){
        case 1:
        draw_y = 100;
        break;
        case 2:
        draw_y = 50;
        break;
        case 3:
        draw_y = -2;
        break;
        default:
        draw_y = 0;
        break;
    }
}