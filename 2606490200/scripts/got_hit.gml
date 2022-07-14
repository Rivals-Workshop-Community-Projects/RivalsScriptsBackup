//



if btrain < 95 {
  btrain += enemy_hitboxID.damage/6
}

if hit_player_obj == self {
    
    set_state(PS_PRATFALL)
    
    move_cooldown[AT_USPECIAL] = 25
   

    sound_play(asset_get("sfx_absa_concentrate"));
    
    vsp += 4
    
} else {
    
    
    move_cooldown[AT_USPECIAL] = 0
    
    
    if attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 1{
        
        if (hit_player_obj.x < x && spr_dir = -1) or  (hit_player_obj.x > x && spr_dir = 1){
        move_cooldown[AT_DSPECIAL] = max(45, 10 + enemy_hitboxID.kb_value*2 )
        }
        
    }
}
