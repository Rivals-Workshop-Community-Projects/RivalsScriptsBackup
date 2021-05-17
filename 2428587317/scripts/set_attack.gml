//set_attack
if (attack == AT_DSPECIAL && !canTrap){
    
    set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 0);
    window = 3;
    //window_timer = 18;
}
else if(attack == AT_DSPECIAL){
    reset_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH);
}
//if (attack == AT_FSPECIAL){
//    torndir = spr_dir;
//}