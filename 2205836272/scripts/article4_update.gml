//article4
// Koishi


if (player_id.cameo_set == 1)
{
    var seed = 0
    with (oPlayer)
    {
        seed += get_player_color(player);
        seed += get_char_info(player, INFO_VER_MINOR)
    }
    
    sprite_index = sprite_get("nothing");
    
    var rand = random_func(floor(seed % 24), 2, true)
    if (rand == 1)
    {
        var sprite = sprite_get("koishi");
        image_spd = 0.15
    }
    else
    {
        var sprite = sprite_get("satori");
        image_spd = 0.1
    }
    
    
    
    if (ds_list_find_index(player_id.cameo, 2) != -1)
    {
        sprite_index = sprite
    }
    
}

if (player_id.cameo_set == 2)
{
    image_index += image_spd;
    
}