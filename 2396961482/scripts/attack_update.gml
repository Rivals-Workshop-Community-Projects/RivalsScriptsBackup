//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//I hope i didnt make ur code too messy when i did some slight changes. 

switch (attack)
{
    case AT_NSPECIAL:
        if (window == 1 && window_timer == 1) move_cooldown[AT_NSPECIAL] = 65;
        //Fast Fall disable
        if (window == 1 && !was_parried) can_jump = false;
        can_fast_fall = false;
        can_move = false;
        break;

    case AT_DAIR:
        if (window == !2) can_fast_fall = false;//makes it so that you can hitfall this move
        if (window == 1)
        {
            hsp /= 1.2;
            if (window_timer == 1) move_cooldown[AT_DAIR] = 40;
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
                    if (get_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE) == 0  && special_pressed)
                    {
                        set_attack(AT_USPECIAL);
                        window = 4;
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

//jump cancel from fspecial jank
if (attack == AT_FSPECIAL && has_hit && window == 2){
    can_jump = true;}
//Stop
if (attack == AT_FSPECIAL){
    go_through = false;}
//Ledge Snap    
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR && window == 2){
    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED);
    }
    if (window == 2){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 40; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
}
}



    
