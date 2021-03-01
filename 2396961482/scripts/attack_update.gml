//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
    case AT_NSPECIAL:
        if (window == 1 && window_timer == 1) move_cooldown[AT_NSPECIAL] = 60;
        //Fast Fall disable
        if (window == 1 && !was_parried) can_jump = true;
        can_fast_fall = false;
        can_move = false;
        break;

    case AT_DAIR:
        can_fast_fall = false;
        if (window == 1)
        {
            hsp /= 1.2;
            if (window_timer == 1) move_cooldown[AT_DAIR] = 70;
        }
        break;

        case AT_DSPECIAL:
            switch (window)
            {
                case 2:
                    ///Create Light Barrier
                    if (window_timer == 1 && !hitpause)
                    {
                        my_article = instance_create(x+70*spr_dir, y-50, "obj_article1");
                        airLock = free;
                    }
                case 3:
                    vsp /= 1.3;
                    break;
            }
            break;

        case AT_FSPECIAL:
            switch (window)
            {
                case 1:
                    if (window_timer == 1) reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE);
                    break;
                case 2:
                    can_wall_jump = true;
                    if (place_meeting( x, y, my_article))
                    {
                        window_timer = 0;
                        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
                        hitpause = true;
                        hitstop = 10;
                        old_hsp = hsp;
                        old_vsp = vsp;
                        instance_destroy(my_article);
                        spawn_hit_fx( x+50*spr_dir, y-50, lanternfx );
                        sound_play(asset_get("sfx_ice_shatter_big"));
                    }
                    spawn_hit_fx( x+20*spr_dir, y-24, 29 );
                    break;
                case 3:
                    can_wall_jump = true;
                    if (get_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE) == 0 && has_hit && is_special_pressed(DIR_UP))
                    {
                        set_attack(AT_USPECIAL);
                        window = 2;
                    }
                    break;
            }
            break;

        case AT_USPECIAL:
            switch (window)
            {
                case 1:
                    if (window_timer == 1)
                        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
                    break;
                case 3:
                    can_wall_jump = true;
                case 2:
                    if (place_meeting( x, y, my_article))
                    {
                        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
                        hitpause = true;
                        hitstop = 10;
                        old_hsp = hsp;
                        old_vsp = vsp;
                        instance_destroy(my_article);
                        spawn_hit_fx( x+50*spr_dir, y-50, lanternfx );
                        sound_play(asset_get("sfx_ice_shatter_big"));
                    }
                    break;
            }
            break;
}