//article1_hit

if !(enemy_hitboxID.player_id == player_id && enemy_hitboxID.attack == AT_DSPECIAL) { //not own hitbox
    if !hitpause {
        spawn_hit_fx(x, y, enemy_hitboxID.hit_effect)
        sound_play(enemy_hitboxID.sound_effect)
        shake_camera(2, 3)
        hit_player_obj.has_hit = true
        
        var temp_hp = 20
        hitstop = get_hitstop_formula(temp_hp, enemy_hitboxID.damage, enemy_hitboxID.hitpause, enemy_hitboxID.hitpause_growth, enemy_hitboxID.extra_hitpause)
        hitstop = clamp(hitstop, 0, 20)
        
        var kb = get_kb_formula(temp_hp, 1, 1, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale)
        var angle = get_hitbox_angle(enemy_hitboxID)
        old_hsp = kb*dcos(angle)
        old_vsp = -kb*dsin(angle)
        hitpause = true
    }
}


//print(old_vsp)