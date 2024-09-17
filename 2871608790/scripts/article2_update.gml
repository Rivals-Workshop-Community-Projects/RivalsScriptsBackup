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
                    if (other.item_type == 4) pocket_item.type = 12; //if pocketing lunchbox give her the new sandwich item
                    else if (other.item_type == 13) pocket_item.type = spit_item_id; //failed paper
                    else pocket_item.type = other.item_type; //every other item

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

                if (instance_exists(other.item_hbox)) //detroy hitbox if it exists
                {
                    other.item_hbox.length = 0;
                    other.item_hbox = noone;
                }
                instance_destroy(other); //destroy item
                instance_destroy(); //destroy pocket range
                exit;
            }
        }
    }

    //interraction with hitboxes
    with (pHitBox)
    {
        if (place_meeting(x, y, other) && ("real_owner_id" not in self && type == 2 || real_type == 2) && hit_priority != 0 && !plasma_safe)
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