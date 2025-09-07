// Draw gizmos to help indicate direction of movement
if (sprite_index != noone)
{
    if (obj_stage_main.current_stage_state == 1)
    {
        var sel_item = 0;
        var rotation = 0;
        var directn = 0;
        
        with (obj_stage_article)
        {
            if (get_article_script(id) == 1)
            {
                if (other.owner == owner)
                {
                    sel_item = selected_item;
                    rotation = held_item_rotation;
                    directn = held_item_direction;
                }
            }
        }

        if (sel_item == 19)
            draw_sprite_ext(sprite_get("sawblade_gizmo"), 0, x, y, directn, 1, rotation, c_white, 1);
        if (sel_item == 21)
            draw_sprite_ext(sprite_get("wrecking_ball_gizmo"), 0, x, y, directn, 1, rotation, c_white, 1);
        if (sel_item == 13)
            draw_sprite_ext(sprite_get("bomb_gizmo"), 0, x, y, 1, 1, 0, c_white, 1);
    }
}