///

if move_cooldown[AT_TAUNT] == 0 && !soft_armor && !super_armor && enemy_hitboxID.damage >= 1 && voiced == 1{
           if random_func(1,4,true) == 0 {
         sound_play(sound_get("h1"),false,noone,0.4)  
    }
    
        if random_func(1,4,true) == 1 {
         sound_play(sound_get("h2"),false,noone,0.4)  
    }
    
        if random_func(1,4,true) == 2{
        sound_play(sound_get("h3"),false,noone,0.4)  
    }
    
            if random_func(1,4,true) == 3{
        sound_play(sound_get("h4"),false,noone,0.4)  
    }
    
    move_cooldown[AT_TAUNT] = 20
    attacking = false
    
    sound_stop(sound_get("tauntdance"))  

///if sagemode < 0 && enemy_hitboxID.type == 1 && move_cooldown[AT_EXTRA_3] == 0{
///    hitstop += 15
///    hit_player_obj.hitstop += 15
///                        spawn_hit_fx(x,y - 40,304)    
///                    sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,1)
///                    sound_play(asset_get("sfx_absa_whip3"),false,noone,1)
///                    sound_play(asset_get("sfx_bird_downspecial"),false,noone,1)
///                    move_cooldown[AT_EXTRA_3] = 45
///                    sagemode += 1
///}

if sagemode > 0 && enemy_hitboxID.type == 1 && move_cooldown[AT_EXTRA_3] == 0{
    sagemode -= 1
    move_cooldown[AT_EXTRA_3] = 45
}

    
}


if super_armor or soft_armor {
    take_damage( player, -1 , -1 * enemy_hitboxID.damage)
}


