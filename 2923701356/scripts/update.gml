//This shows a "laggy" meter -- variable controls how long it takes for the meter to update to its true value.
ollie_bar_shown_amount = lerp(ollie_bar_shown_amount, ollie_bar_amount, 0.08);
ollie_bar_buffer = max(ollie_bar_buffer-1,0)
ollie_display_shake_amount = lerp(ollie_display_shake_amount, 0, 0.14);

if ollie_display_end_combo_value != -1
{
    ollie_display_end_timer = min(ollie_display_end_timer+1, ollie_display_end_max_time);
    ollie_display_end_combo_ypos = -ease_backOut(0, 10, ollie_display_end_timer, ollie_display_end_max_time, 35)
    
    if ollie_display_end_timer == ollie_display_end_max_time
    {
        ollie_display_end_combo_value = -1
        ollie_display_end_combo_ypos = 0
        ollie_display_end_timer = 0
    }
}

//

if ollie_display_shake_amount < 1
{
    ollie_display_shake_amount = 0
}

//If ollie's bar is filled up, upate the meter and level.
if (ollie_bar_shown_amount >= ollie_levelclear_threshold and ollie_bar_current_level != ollie_bar_max_level)
{
    ollie_bar_shown_amount = 0;
    ollie_bar_amount -= ollie_levelclear_threshold;
    ollie_bar_current_level++;
    
    // if (ollie_bar_current_level == ollie_bar_max_level)
    // {
    //     ollie_bar_amount = 0;
    // }
    
    //For visuals/sound
    sound_play(asset_get("mfx_player_found"));
    spawn_hit_fx(x,y-(char_height/2),comboend_vfx);
    white_flash_timer = 10;
}

//Just to make sure the laggy meter actually catches up.
if (abs(ollie_bar_shown_amount-ollie_bar_amount) < 1) 
{
    ollie_bar_shown_amount = ollie_bar_amount;
}

//If you've reached the end of the combo, increment the bar.
if (ollie_combo_end_timer == ollie_combo_end_threshold-1)
{
    ollie_bar_buffer = ollie_bar_buffer_max;
    ollie_display_end_combo_value = min(array_length(ollie_move_combo_array), sprite_get_number(sprite_get("ollie_streak")))-1;
    ollie_bar_amount += array_length(ollie_move_combo_array) * ollie_move_increment;
    if ollie_bar_current_level == ollie_bar_max_level
    {
        ollie_bar_amount = min(ollie_bar_amount, ollie_levelclear_threshold);
    }
    
    //Reset combo
    ollie_move_combo_array = [];
    
    //Play a sound
    print("lol")
    sound_play(asset_get("mfx_star"))
}

//Increment bar if you aren't in hitpause
ollie_combo_end_timer = min(ollie_combo_end_timer + (ollie_combo_end_timer == ollie_combo_end_threshold-1 or !hitpause), ollie_combo_end_threshold)

//Bar decreases. If you are in a combo it decreases more slowly. If the bar rearches 0, the level will go down by one
var in_combo = array_length(ollie_move_combo_array) > 0;
var in_attack = (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and (attack == AT_NSPECIAL or attack == AT_NSPECIAL_2);
var out_of_buffer = (ollie_bar_buffer == 0)

var decrease_mult = !(in_combo or in_attack);
var decrease_amount = (ollie_bar_current_level/20) * !hitpause * out_of_buffer;
var not_level_one = (ollie_bar_current_level != 1);
ollie_bar_amount = max(ollie_bar_amount - (decrease_amount)*decrease_mult, -not_level_one);

if (ollie_bar_amount < 0 and not_level_one)
{
    ollie_bar_shown_amount = ollie_levelclear_threshold;
    ollie_bar_amount = ollie_levelclear_threshold-1;
    ollie_bar_current_level--;
}

if (instance_exists(rail_obj))
{
    move_cooldown[AT_NSPECIAL] = 2;
    move_cooldown[AT_NSPECIAL_2] = 2;
}

//thing
var xx, yy;
xx = random_func(5, floor(ollie_display_shake_amount), false) - (ollie_display_shake_amount / 2)
yy = random_func(6, floor(ollie_display_shake_amount), false) - (ollie_display_shake_amount / 2)
ollie_display_shake_pos = [xx,yy]
