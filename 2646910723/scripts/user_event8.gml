
    if get_gameplay_time() % 2 == 0 {
         sound_play(sound_get("vf1"),false,noone,1, 1.1 - random_func(1,10,true)/100)  
    } else {
         sound_play(sound_get("vf2"),false,noone,1, 1.1 - random_func(1,10,true)/100)  
    }

    