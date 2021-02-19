//hitbox_update
if (attack == AT_DSPECIAL)
{
    switch(hbox_num)
    {
        case 1:
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                destroyed = 1;
            }
            break;
        case 2:
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                destroyed = 1;
                create_hitbox(AT_DSPECIAL, 3, x, y)
            }
            break;
        case 3:
            switch(player_id.banana)
            {
                case 0:
                    if (hitbox_timer == 1)
                    {
                        hsp = 8 * spr_dir;
                        vsp -= 4
                    }
                    break;
                case 1:
                    if (hitbox_timer == 1)
                    {
                        hsp = 6 * spr_dir;
                        vsp -= 3;
                    }
                    break;
                case 2:
                    if (hitbox_timer == 1)
                    {
                        hsp = 3 * spr_dir;
                        vsp -= 2;
                    }
                    break;
            }
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                switch(player_id.banana)
                {
                    case 0:
                        player_id.banana += 1;
                        create_hitbox(AT_DSPECIAL, 3, x, y)
                        destroyed = 1;
                        break;
                    case 1:
                        player_id.banana += 1;
                        create_hitbox(AT_DSPECIAL, 3, x, y)
                        destroyed = 1;
                        break;
                    case 2:
                        player_id.banana = 0;
                        destroyed = 1;
                        break;
                        
                }
            }
            break;
        case 4:
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                destroyed = 1;
            }
            break;
        case 5:
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                destroyed = 1;
            }
            break;
        case 6:
            if (hitbox_timer == 1)
            {
                old_time = get_gameplay_time() + 150;
            }
            if (get_gameplay_time() mod 30 == 0 and get_gameplay_time() >= old_time - 60 and free == false)
            {
                sound_play(asset_get("mfx_timertick"))
            }
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                img_spd = 0;
                image_index = 0;
                if (get_gameplay_time() == old_time)
                {
                    spawn_hit_fx(x, y - 15, 143);
                    sound_play(asset_get("sfx_ell_explosion_medium"))
                    create_hitbox(AT_DSPECIAL, 7, x, y - 15)
                    destroyed = 1;
                }
            }
            break;
        case 7:
            can_hit_self = true;
            break;
        case 8:
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                img_spd = 0;
                image_index = 2;
            }
            break;
        case 9:
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                destroyed = 1;
                create_hitbox(AT_DSPECIAL, 10 , x, y);
            }
            break;
        case 10:
            hsp = 8 * spr_dir;
            if (!free and (place_meeting(x, y + 2, asset_get("par_block")) or place_meeting(x, y + 2, asset_get("par_jumpthrough"))))
            {
                destroyed = 1;
            }
            break;
    }
}
else if (attack == AT_USTRONG)
{
    if (hbox_num == 3)
    {
        player_id.psyche = 0;
        shake_camera(8,8);
    }
}