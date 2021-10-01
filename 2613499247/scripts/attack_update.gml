//B - Reversals

if (attack == AT_UAIR)
{
    if (window == 1 && window_timer == 1){
        can_fast_fall = false;
        can_move = false;

        if(right_down)
            spr_dir = 1;
        if(left_down)
            spr_dir = -1;}
}

if (attack == AT_NAIR || attack == AT_JAB)
{
    if (window == 4 && window_timer == 1){
        can_fast_fall = false;
        can_move = false;

        if(right_down)
            spr_dir = 1;
        if(left_down)
            spr_dir = -1;}
}
//Cooldowns
if (attack == AT_UAIR){
    move_cooldown[AT_UAIR] = 80;}
    
if (attack == AT_JAB){
    move_cooldown[AT_JAB] = 25;
    move_cooldown[AT_NAIR] = 25;
}
if (attack == AT_NAIR){
    move_cooldown[AT_NAIR] = 999;
}
//Jab into CLJ
if(attack == AT_JAB)
{
    if(window == 1)
        set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
        

    if (window == 2 && jump_pressed || window == 1 && jump_pressed ){
        set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
        window = 4;
        window_timer = 0;
        //vsp = -5;
        can_fast_fall = false;
        can_move = false;
    }
}
if(attack == AT_NAIR)
{
    if(window == 1)
        set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
        

    if (window == 2 && jump_pressed || window == 1 && jump_pressed ){
        set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
        window = 4;
        window_timer = 0;
        //vsp = -5;
        can_fast_fall = false;
        can_move = false;
    }
}