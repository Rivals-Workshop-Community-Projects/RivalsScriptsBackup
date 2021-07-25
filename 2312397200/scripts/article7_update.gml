//article7
// Eirin
image_index += image_spd;

if (player_id.cameo_set == 1)
{
        
    var seed = 0
    with (oPlayer)
    {
        seed += get_player_color(player);
        seed += get_char_info(player, INFO_VER_MINOR)
    }
    
    var rand = random_func(floor(seed), 2, true)
    
    if (ds_list_find_index(player_id.cameo, cameo_id) != -1)
    {
        if (rand)
        {
            sprite_index = sprite_get("eirin");
            image_spd = 0.12
        }
        else
        {
            sprite_index = sprite_get("reisen");
            image_spd = 0.14
        }
        
        player_id.is_kaguya_guardian = true;
    }
}