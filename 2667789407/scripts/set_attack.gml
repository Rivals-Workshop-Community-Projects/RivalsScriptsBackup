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
    unown_attack_is_fresh = (attack != AT_PHONE);
    
    adjust_unown_attack_grid();
    unown_recalculate_stats = true;
}

lev_bypass = false; //failsafe
unown_diagonal_leniency = unown_diagonal_leniency_max; // see attack_update.gml


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
    
    // the supersonic epiphany
    // numpad_notaion = 5 + (up_down-down_down)*3 + (right_down-left_down)
    
    var dp = dir_pressed;
    var final_dir =  5 + (dp.down - dp.up)*3 + (dp.right - dp.left);
    
    return result_array[final_dir - 1];
}

//=========================================================
#define adjust_unown_attack_grid()
{
    var bonus = unown_current_bonus;
    
    //apply buffs based on current word boost
    for (var hb = 1; hb <= get_num_hitboxes(attack); hb++)
    {
        apply_word_bonus(bonus, attack, hb, HG_DAMAGE, HG_UNOWN_DAMAGE_BONUS);
        apply_word_bonus(bonus, attack, hb, HG_BASE_KNOCKBACK, HG_UNOWN_KNOCKBACK_BONUS);
        apply_word_bonus(bonus, attack, hb, HG_KNOCKBACK_SCALING, HG_UNOWN_SCALING_BONUS);
    }
}

#define apply_word_bonus(cur_mult, atk, hnum, base_index, bonus_index)
{
    if (0 < get_hitbox_value(atk, hnum, bonus_index))
    {
        reset_hitbox_value(atk, hnum, base_index);
        
        // total = base + charge * bonus
        var value = get_hitbox_value(atk, hnum, base_index)
           + (cur_mult * get_hitbox_value(atk, hnum, bonus_index) );
        set_hitbox_value(atk, hnum, base_index, value);
    }
}



