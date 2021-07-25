//article6
// Keine
image_index += image_spd;

if (player_id.cameo_set == 1)
{
    if (ds_list_find_index(player_id.cameo, cameo_id) != -1)
    {
       if (player_id.is_full_moon)
        {
            sprite_index = sprite_get("keineex");
        }
        else
        {
            sprite_index = sprite_get("keine");
        }
    }
}