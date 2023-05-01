var spent_bar = false;
switch (my_hitboxID.attack)
{
    case AT_UTHROW:
    case AT_DTHROW:
    case AT_FTHROW:
        sound_play(sound_get("utilt_sweet"), false, noone, 0.5, 1.06)
    break;
    case AT_UTILT:
        if my_hitboxID.hbox_num == 2{
            sound_play(sound_get("utilt_sweet"), false, noone, 0.55, 1)
        }        
    break;
    case AT_BAIR:
        if my_hitboxID.hbox_num == 2 {
            sound_play(asset_get("sfx_pom_tailhit_back"), false, noone, 1, 0.97)
        }
    break;
    case AT_DSPECIAL:
        if hit_player_obj.free
        {
            hit_player_obj.y = lerp(hit_player_obj.y, y, 0.1)
        }
    break;
    case AT_DAIR:
        if my_hitboxID.hbox_num == 1 and !hit_player_obj.super_armor {
            hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, 0.1)
        }
    break;
    case AT_UAIR:
        sound_play(asset_get("sfx_pom_tailhit_forward"), false, noone, 1, 0.9)
        sound_play(asset_get("sfx_pom_slap2"), false, noone, 0.7, 1)
    break;
    case AT_FSPECIAL:
    {
        destroy_hitboxes();
        window = 3;
        window_timer = 0;
        
        old_vsp = -10;
        old_hsp = 0;
    }

    case AT_FSTRONG:
    case AT_USTRONG:
    case AT_DSTRONG:
        if array_length(ollie_move_combo_array) != 0
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
            spent_bar = true;
        }
    break;
}

if spent_bar exit;
if attack == AT_UTILT and my_hitboxID.hbox_num == 1 exit;

//If you are able to put the move in the meter, put it in.
if (ollie_move_should_get_bar and array_find_index(ollie_combo_moves, my_hitboxID.attack) != -1 and (array_length(ollie_move_combo_array) == 0 or ollie_move_combo_array[array_length(ollie_move_combo_array) - 1] != my_hitboxID.attack))
{
    ollie_display_shake_amount = 30;
    ollie_move_should_get_bar = false;
    sound_play(sound_get("orch_hit"),false,noone,1, 1+(array_length(ollie_move_combo_array)/12.5) )
    array_push(ollie_move_combo_array,my_hitboxID.attack);
    ollie_combo_end_timer = 0;
}



