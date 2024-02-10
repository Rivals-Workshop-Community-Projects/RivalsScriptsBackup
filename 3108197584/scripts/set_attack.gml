///#args attack
//set_attack
pseudo_grab = [];

if target_practice_mode && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL move_cooldown[attack] = 10;

if !move_cooldown[attack] switch attack{
    case AT_FSTRONG:
    double_fire = 0;
    break;
    
    case AT_DAIR:
    if (left_down && spr_dir) || (right_down && !spr_dir) spr_dir *= -1;
    break;
    
    case AT_UAIR:
    attack_end(AT_USPECIAL_2);
    break;
    
    case AT_NSPECIAL:
    multi_missile = 1;
    break;
    
    case AT_FSPECIAL:
    hit_drone = 0;
    if free attack = AT_FSPECIAL_AIR;
    break;
    
    case AT_DSPECIAL:
    if instance_exists(drone) window = 2;
    break;
    
    case AT_USPECIAL:
    set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1 + 6*free);
    usp_angle = 0;
    break;
}

rune_cancel = 0;