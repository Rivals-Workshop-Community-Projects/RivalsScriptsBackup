//article1_post_draw

//draw_debug_text(floor(player_id.x), floor(player_id.y), "state = " + string(state));

switch (state)
{
    case "hook_chain":
        if (state_timer > 2) //chain draw logic
        {
            for (var i = 0; i < chain_amount; ++i)
            {
                dist[i] = i/chain_amount *
                    point_distance(chain_start[0], chain_start[1], chain_end[0], chain_end[1]);
            }

            for (var j = 0; j < chain_amount; ++j)
            {
                var angle = point_direction(chain_start[0], chain_start[1], chain_end[0], chain_end[1]);
                var _x = chain_start[0] + lengthdir_x(dist[j], angle);
                var _y = chain_start[1] + lengthdir_y(dist[j], angle);

                draw_sprite_ext(sprite_get("fx_skill9_chain"), artc_image_index, _x, _y, 2, 2, angle, c_white, 1);
            }
        }
        break;
    case "theikos_fire":
        for (var count = -rec_fire_count; count <= rec_fire_count; ++count)
        {
            draw_sprite_ext(
                sprite_get("fx_dstrong2_groundfire"),
                artc_image_index,
                player_id.dstrong2_startpos[0]+fire_offset*count,
                player_id.dstrong2_startpos[1],
                2, 2, 0, c_white, 1
            );
        }
        break;
}

if (get_match_setting(SET_HITBOX_VIS) && mask_index != -1) draw_sprite_ext(mask_index, 0, x, y, 2, 2, 0, mask_color, 0.5);