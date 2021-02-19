///

if move_cooldown[AT_TAUNT] == 0 && !soft_armor && !super_armor{
       if random_func(1,3,true) == 0 {
         sound_play(sound_get("vhurt1"),false,noone,1.5)  
    }
    
        if random_func(1,3,true) == 1 {
         sound_play(sound_get("vhurt2"),false,noone,1.5)  
    }
    
        if random_func(1,3,true) == 2{
        sound_play(sound_get("vhurt3"),false,noone,1.5)  
    }
    
    move_cooldown[AT_TAUNT] = 15
    attacking = false
    
    sound_stop(sound_get("firstkill"))  
sound_stop(sound_get("Fstrong1")) 
sound_stop(sound_get("Ustrong1")) 
sound_stop(sound_get("Dstrong1")) 

}


if super_armor or soft_armor {
    take_damage( player, -1 , -1 * enemy_hitboxID.damage)
}

