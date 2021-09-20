//


if hit_player_obj == self {
    
    set_state(PS_PRATFALL)
    
    move_cooldown[AT_USPECIAL] = 25
   
    sound_play(asset_get("sfx_ell_overheat"),false,noone,1,1);
    sound_play(asset_get("sfx_absa_concentrate"));
} else {
    
    
    move_cooldown[AT_USPECIAL] = 0
    
    
    if attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 1{
        
        if (hit_player_obj.x < x && spr_dir = -1) or  (hit_player_obj.x > x && spr_dir = 1){
        move_cooldown[AT_DSPECIAL] = max(45, 20 + enemy_hitboxID.kb_value*3 )
        }
        
    }
}
