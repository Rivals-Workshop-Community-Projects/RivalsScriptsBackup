//article2_update.gml
//pocket range

if (!player_id.holding_item)
{
    //interraction with items
    with (obj_article1)
    {
        if (place_meeting(x, y, other) && "is_an_azi_and_baggy_item" in self && can_be_pocket)
        {
            sound_stop(item_loop_sound);

            with (other.player_id)
            {
                if (other.item_hp > 0)
                {
                    pocket_item.id = other.item_id;
                    pocket_item.type = other.item_type;
                    pocket_item.hp = other.item_hp-1;
                    pocket_item.car_type = other.car_item_held;
                    holding_item = true;

                    spawn_hit_fx(other.x, other.y, 301);
                }
                else
                {
                    sound_play(asset_get("sfx_frog_dspecial_swallow"));
                    spawn_hit_fx(other.x, other.y, 304);
                }
                
                window ++;
                window_timer = 0;

                instance_destroy(other);
                instance_destroy();
                exit;
            }
        }
    }

    //interraction with hitboxes
    with (pHitBox)
    {
        if (place_meeting(x, y, other) && type == 2 && hit_priority != 0)
        {
            //exception that makes azi unable to pocket her nspec projectiles
            if (player_id != other.player_id || ("no_azi_pocket" in self && no_azi_pocket)) with (other.player_id)
            {
                pocket_item.type = spit_item_id;
                holding_item = true;

                window ++;
                window_timer = 0;
            }
            destroyed = true;
            instance_destroy(other);
            exit;
        }
    }
}

//end pocket
if (!player_id.is_attacking || player_id.attack != AT_FSPECIAL || player_id.window > 1) instance_destroy();