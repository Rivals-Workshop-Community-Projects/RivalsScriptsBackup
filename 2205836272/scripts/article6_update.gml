//article6
// kokoro kasen

if (player_id.cameo_set == 1)
{
    var seed = 0
    with (oPlayer)
    {
        seed += get_player_color(player);
        seed += get_char_info(player, INFO_VER_MINOR)
    }
    
    sprite_index = sprite_get("nothing");
    image_spd = 0.1
    
    var rand = random_func(floor((seed + 1) % 24) , 2, true)
    if (rand == 1)
    {
        var sprite = sprite_get("kokoro");
        image_spd = 0.12
    }
    else
    {
        var sprite = sprite_get("kasen");
        image_spd = 0.12
    }
    
    
    
    
    if (ds_list_find_index(player_id.cameo, 4) != -1)
    {
        sprite_index = sprite
    }
        
}

if (player_id.cameo_set == 2)
{
    
    image_index += image_spd;

}