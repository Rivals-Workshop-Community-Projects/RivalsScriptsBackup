///

if nolan == 1 {
    if hit_player_obj.url == 2154720280 && drop = 0 && enemy_hitboxID.type == 1 {
    
    if enemy_hitboxID.attack != AT_FSPECIAL and enemy_hitboxID.attack != AT_DSPECIAL and enemy_hitboxID.attack != AT_NSPECIAL {
            drop = 10
    if supply > 0   {
        supply -= 1
        create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
    }
    } 
        
        
            if (enemy_hitboxID.attack == AT_FSPECIAL and enemy_hitboxID.hbox_num != 5) 
            or (enemy_hitboxID.attack == AT_DSPECIAL and enemy_hitboxID.hbox_num != 5) 
            or (enemy_hitboxID.attack == AT_NSPECIAL and enemy_hitboxID.hbox_num != 8) {
            drop = 10
    if supply > 0  {
        supply -= 1
        create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
    }
    } 
        
        
    }
    
    
    
if drop = 0 && hit_player_obj.url != 2154720280 && enemy_hitboxID.type == 1 {
drop = 20
if supply > 0  {
    supply -= 1
    create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
}

}

}


if nolan == 0 && changed == -1 {
    sound_play(sound_get("shock1"))
    spawn_hit_fx(x,y - 40,306)
    nolan = 1 
    changed = 0
    hitstop += 20
}