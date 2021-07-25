//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FTILT){
    if (window == 2 && window_timer == 1 && has_hit_player){
        take_damage( player, -1, -10);
    }
}

if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}



if (attack == AT_USTRONG) {
    if (window == 2 && window_timer == 2){
        take_damage( player, -1, 40);
    }
}

if (attack == AT_USPECIAL){
    if (window == 2 && window_timer == 1){
        take_damage( player, -1, 10);
    }
}

if (attack == AT_USPECIAL && window == 3 && get_player_damage( player ) >= 150){
set_state( PS_PRATFALL );
}


if (attack == AT_DSPECIAL && window = 1 && window_timer = 1)
{
    if (buff_ready)
    {
        buff_mode = 1;
    }
}




