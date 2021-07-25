//update
switch (cameo_set)
{
    case 1:
        cameo_set = 2;
    break;
    case 0:
    
        is_kaguya_guardian = false;
        is_kaguya_there = false;
        
        var seed = 0
        with (oPlayer)
        {
            
            seed += get_player_color(player);
            seed += get_char_info(player, INFO_VER_MINOR)
            seed += get_char_info(player, INFO_VER_MAJOR)
            seed += player;
            seed = floor(seed)
            
        }
        var seed2 = seed % 11;
        seed %= 24
        
        cameo_num = 7;
        
        cameo = ds_list_create();
        
        chance = 5;
        
        for (var i = 0; i < chance; i += 1)
        {
            var rand = random_func((seed + i * seed2) % 24, cameo_num, true)
           
            if (ds_list_find_index(cameo,rand) == -1)
            {
                ds_list_add(cameo, rand);
            }
        }
        
        
        is_full_moon = random_func((seed * seed2) % 24, 2, true)
        
        is_mystia_fighting = false;
        with (oPlayer)
        {
            if (get_char_info( player, INFO_STR_NAME) =="Mystia Lorelei")
            {
                other.is_mystia_fighting = true;
            }
        }
        
        cameo_set = 1;
    break;
}

