
var target_attack = UNOWN_ATK.A;

var dir_pressed = {up:false, down:false, left:false, right:false};
if (is_special_pressed(DIR_ANY))
{
    dir_pressed.up = is_special_pressed(DIR_UP);
    dir_pressed.down = is_special_pressed(DIR_DOWN);
    dir_pressed.left = is_special_pressed(DIR_LEFT);
    dir_pressed.right = is_special_pressed(DIR_RIGHT);
    
    with (UNOWN_ATK) // SPECIALS pattern
        target_attack = check_dir(dir_pressed, [T, T, T, 
                                                F, I, F, 
                                                B, B, L]);
}
else if (is_attack_pressed(DIR_ANY))
{
    dir_pressed.up = is_attack_pressed(DIR_UP);
    dir_pressed.down = is_attack_pressed(DIR_DOWN);
    dir_pressed.left = is_attack_pressed(DIR_LEFT);
    dir_pressed.right = is_attack_pressed(DIR_RIGHT);
    
    with (UNOWN_ATK) // ATTACKS pattern
        target_attack = check_dir(dir_pressed, [C, M, V, 
                                                H, O, D, 
                                                J, U, U]);
}
else if (is_strong_pressed(DIR_ANY)) || (strong_down)
{
    if (is_strong_pressed(DIR_ANY))
    {
        dir_pressed.up = is_strong_pressed(DIR_UP);
        dir_pressed.down = is_strong_pressed(DIR_DOWN);
        dir_pressed.left = is_strong_pressed(DIR_LEFT);
        dir_pressed.right = is_strong_pressed(DIR_RIGHT);
    }
    else if (strong_down)
    {
        dir_pressed.up = up_down;
        dir_pressed.down = down_down;
        dir_pressed.left = left_down;
        dir_pressed.right = right_down;
    }
    
    with (UNOWN_ATK) //STRONGS pattern (NSTRONG should not be unique)
        target_attack = check_dir(dir_pressed, [Z, W, K, 
                                                X, X, E, 
                                                P, A, Q]);
}
else if (taunt_pressed) //signal for !
{
    target_attack = UNOWN_ATK.EM;
}
clear_button_buffer(PC_TAUNT_PRESSED);

attack = unown_form_data[target_attack].atk;
hurtbox_spr = unown_form_data[target_attack].hurtbox;
unown_current_form = target_attack;
unown_attack_is_fresh = true;

lev_bypass = false; //failsafe


// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);

//=========================================================
#define check_dir(dir_pressed, result_array)
{
    //Numpad notation but not really
    // 1 2 3
    //  \|/
    // 4-5-6
    //  /|\
    // 7 8 9
    // just to make the arrays above more readable
    
    var final_dir = 0;
    var dp = dir_pressed;
    if (dp.down)
    { final_dir = dp.left ? 7 : (!dp.right ? 8 : 9); }
    else if (dp.up)
    { final_dir = dp.left ? 1 : (!dp.right ? 2 : 3); }
    else
    { final_dir = dp.left ? 4 : (!dp.right ? 5 : 6); }
    
    return result_array[final_dir - 1];
}




