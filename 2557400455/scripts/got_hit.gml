///

sound_stop(charge_sound)

if enemy_hitboxID.player_id == self &&  enemy_hitboxID.attack == AT_USPECIAL {
    
    take_damage(player,-1,-5)
    
}


if crossout == 1 {
    spawn_hit_fx(crossx,crossy,302)
    crossout = 0
    crossx = -1
    crossy = -1
}