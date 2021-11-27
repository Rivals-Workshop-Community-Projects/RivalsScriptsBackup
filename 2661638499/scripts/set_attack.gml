/// set_attack.gml(dummy_atk) to prevent GMEdit from panicking

var target_form = UNOWN_ATK.A;

var dir_pressed = {up:false, down:false, left:false, right:false};
//===============================================================
var UNOWN_STRONGS = noone;
var UNOWN_SPECIALS = noone;
var UNOWN_STANDARDS = noone;
with (UNOWN_ATK) //shortcut
{
    UNOWN_STANDARDS = [C, M, V, 
                       H, O, D, 
                       J, U, S];

    UNOWN_STRONGS   = [Z, W, K, 
                       X, X, E, 
                       P, A, Q];
                      
    UNOWN_SPECIALS  = [G, Y, T, 
                       N, I, F, 
                       R, B, L];
}
//===============================================================
//Input parsing
if (is_special_pressed(DIR_ANY))
{
    dir_pressed.up = is_special_pressed(DIR_UP);
    dir_pressed.down = is_special_pressed(DIR_DOWN);
    dir_pressed.left = is_special_pressed(DIR_LEFT);
    dir_pressed.right = is_special_pressed(DIR_RIGHT);
    
    target_form = check_dir(dir_pressed, UNOWN_SPECIALS);
}
//?? unsure why "is_strong_pressed(DIR_ANY)" doesnt work for the strong-attack controller setting
else if (up_strong_pressed || down_strong_pressed
    || left_strong_pressed || right_strong_pressed) || (strong_down)
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
    
    target_form = check_dir(dir_pressed, UNOWN_STRONGS);
}
else if (is_attack_pressed(DIR_ANY))
{
    dir_pressed.up = is_attack_pressed(DIR_UP);
    dir_pressed.down = is_attack_pressed(DIR_DOWN);
    dir_pressed.left = is_attack_pressed(DIR_LEFT);
    dir_pressed.right = is_attack_pressed(DIR_RIGHT);
    
    target_form = check_dir(dir_pressed, UNOWN_STANDARDS);
}
else if (taunt_pressed) //signal for !
{
    target_form = UNOWN_ATK.EM;
}
clear_button_buffer(PC_TAUNT_PRESSED);

//===============================================================
//setup the attack proper 
attack = unown_form_data[target_form].atk;

if (attack == UNOWN_ATK.C && unown_c_used)
{
    move_cooldown[attack] = 3;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);

if (attack == AT_PHONE)
{
    target_form = UNOWN_ATK.I;
}

if !(move_cooldown[attack] > 0)
{
    hurtbox_spr = unown_form_data[target_form].hurtbox;
    unown_current_form = target_form;
    unown_attack_is_fresh = true;
}

lev_bypass = false; //failsafe


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




