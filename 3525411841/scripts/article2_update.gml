// Article 2 -- Box Item Select Sprite
if (!initialized)
{
    var debug_item = -1;
    if (debug_item = -2) // screenshot mode
    {
        if (rng_index == 1)
            debug_item = 3
        if (rng_index == 2)
            debug_item = 1;
        if (rng_index == 3)
            debug_item = 17;
        if (rng_index == 4)
            debug_item = 10;
        if (rng_index == 5)
            debug_item = 20;
    }
    if (debug_item <= 0)
        item_type = random_func_2(rng_index, array_length(obj_stage_main.item_sprites) - 1, true)+1;
    else
        item_type = debug_item;
    sprite_index = sprite_get(obj_stage_main.item_sprites[item_type]);
    initialized = true;
}
var a = false;
with (obj_stage_article)
{
    if (get_article_script(id) == 1)
    {
        if (distance_to_point(other.x, other.y) < 16)
        {
            a = true;
            if (clicked && enabled)
            {
                enabled = false;
                sound_play(asset_get("mfx_player_ready"), false, noone, 1, 1);
                selected_item = other.item_type;
                instance_destroy(other);
                exit;
            }
        }
    }
}
if (a)
{
    if (!hovered_over)
    {
        sound_play(asset_get("mfx_move_cursor"), false, noone, 1, 1);
    }
    hovered_over = true;
}
else
    hovered_over = false;