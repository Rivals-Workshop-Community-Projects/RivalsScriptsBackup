//article12
// Mystia
image_index += image_spd;

if (player_id.cameo_set == 1)
{
    if (!player_id.is_mystia_fighting)
    {
        if (ds_list_find_index(player_id.cameo, cameo_id) != -1)
        {
            sprite_index = sprite_get("mystia");
            
        }
    }
}