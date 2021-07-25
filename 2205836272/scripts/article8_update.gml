//article8
// SCARLET
image_index += image_spd;

if (player_id.cameo_set == 1)
{
    if (ds_list_find_index(player_id.cameo, 5) != -1)//(random_func( 3, 2, true) == 1)
    {
        sprite_index = sprite_get("scarlet");
    }
}