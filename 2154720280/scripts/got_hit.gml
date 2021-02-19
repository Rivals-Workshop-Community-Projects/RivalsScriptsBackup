///

if has_rune("F") {
 if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
     if attack == AT_TAUNT {
     	take_damage( player, -1 , -1 * enemy_hitboxID.damage)
     }
 }
	
}

///
if introhit = 0 {
	introhit = -1
}

intro = 1


if drop = 0 && hit_player_obj.url != 2154720280 && enemy_hitboxID.type == 1 {
drop = 40
if supply > 0  {
    supply -= 1
    create_hitbox(AT_FSPECIAL , 4 , x , y - 40 );
}

}



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

move_cooldown[AT_USPECIAL] = 0 

move_cooldown[AT_DSPECIAL] = 0 