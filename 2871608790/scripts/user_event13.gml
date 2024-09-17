//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes sure that the hitboxes belong to us and not someone like kragg

switch (my_hitboxID.attack)
{
    case AT_NSPECIAL:
        with (my_hitboxID.owner)
        {
            if ("is_an_azi_and_baggy_item" in self) 
            {
                old_hsp = hsp;
                old_vsp = vsp;
                hitstop = floor(player_id.hit_player_obj.hitstop);
                item_hit_player = true;
                item_has_hit = true;
            }
            
            if (other.hit_player_obj != other) item_hit_azi = false;
        }

        switch (my_hitboxID.hbox_num)
        {
            case 4: //water bottle multihit
                hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x, 0.5);
                hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y, 0.5);
                break;
            case 15: // car (detection)
                with (my_hitboxID.owner)
                {
                    if (car_player_id == noone && !other.hit_player_obj.clone &&
                        (other.hit_player_obj.state == PS_HITSTUN || other.hit_player_obj.state == PS_HITSTUN_LAND) && !other.hit_player_obj.bubbled)
                    {
                        car_player_id = other.hit_player_obj;
                        car_state = 2;
                        car_state_timer = 0;
                        item_hbox_num = 0;
                        instance_destroy(item_hbox);
                    }
                }
                break;
            case 16: //car (explode)
                with (hit_player_obj) //car explosion now sends in the direction the car was facing
                {
                    old_hsp = lengthdir_x(orig_knock, knock_dir);
                    old_vsp = lengthdir_y(orig_knock, knock_dir);
                }
                break;
            case 2: case 13:  //bomb / soap (detection)
                if (instance_exists(obj_article1) && "is_an_azi_and_baggy_item" in obj_article1) obj_article1.item_hit_player = true;
                break;
            case 7: //bell
                hit_player_obj.hitstop_full = floor(clamp(bell_stop_min + (get_player_damage(hit_player_obj.player) * bell_stop_mult), bell_stop_min, bell_stop_max));
                hit_player_obj.hitstop = hit_player_obj.hitstop_full;

                print (hit_player_obj.hitstop)
                
                spawn_hit_fx(
                    hit_player_obj.x,
                    hit_player_obj.y - hit_player_obj.char_height / 2,
                    hit_fx_create(sprite_get("fx_bell_hit"), hit_player_obj.hitstop_full)
                );
                break;
        }
		break;
}