//article8
// Eirin
image_index += image_spd;

if (player_id.cameo_set == 1)
{
    
    if (ds_list_find_index(player_id.cameo, cameo_id) != -1)
    {
        //if (player_id.is_kaguya_guardian)
        {
            sprite_index = sprite_get("kaguya");
            
            player_id.is_kaguya_there = true;
        }
    }
}