//Every time you start a move, you should be able to get bar from it
ollie_move_should_get_bar = true;

if attack == AT_FSPECIAL {
    riding_plat = false;
}

if attack == AT_DATTACK
{
    should_jc_dattack = false;
}

if attack == AT_NSPECIAL and ollie_bar_current_level != 1
{
    attack = AT_NSPECIAL_2;
}

//force end of combo
if attack == AT_DSPECIAL
{
    ollie_bar_buffer = ollie_bar_buffer_max;
    ollie_combo_end_timer = ollie_combo_end_threshold
    
    ollie_display_end_combo_value = min(array_length(ollie_move_combo_array), sprite_get_number(sprite_get("ollie_streak")))-1;
    ollie_bar_amount += array_length(ollie_move_combo_array) * ollie_move_increment;
    if ollie_bar_current_level == ollie_bar_max_level
    {
        ollie_bar_amount = min(ollie_bar_amount, ollie_levelclear_threshold);
    }
    
    //Reset combo
    ollie_move_combo_array = [];
    
    //Play a sound
    sound_play(asset_get("mfx_star"))
}

if attack == AT_TAUNT
{
    print("this is taunt!")
}