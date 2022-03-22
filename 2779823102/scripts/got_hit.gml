//


if shield > 1 {
    hurtbox_spr = asset_get("empty_sprite");
    with pHitBox {
        if player_id = other {
            if attack == AT_DAIR {
                x = floor((x + other.enemy_hitboxID.x)/2)
                y = floor((y + other.enemy_hitboxID.y)/2)
            }
        }
    }
    move_cooldown[AT_DAIR] = 30
    invincible = true 
    move_cooldown[AT_NSPECIAL] = 60
    angle += (20 + min(40,(enemy_hitboxID.kb_value)*8)) * (1 - get_gameplay_time()%3)
        sound_play(sound_get("RI"),false,noone,.8,1.4)
        hit_player_obj.hitstop /= 2
    shield -= 1 
    shieldg -= 1 
    if shield == 1 {
     if canhalo == 1 {    
        soft_armor = 0
        if phaseh > 1 {
        sound_play(asset_get("sfx_ori_charged_flame_charge"),false,noone,.8,0.75 - phaseh/100)
        sound_play(asset_get("sfx_absa_kickhit"),false,noone,.8,1)
        sound_play(sound_get("perish"),false,noone,1,1 - phaseh/50)
        move_cooldown[AT_EXTRA_1] = 300 + phaseh*40
        } else {
        move_cooldown[AT_EXTRA_1] = 2   
        }
        move_cooldown[AT_UAIR] = 60
        vfxb = spawn_hit_fx(x,y - 50,306)
        vfxb.image_xscale = 1.4
        vfxb.image_yscale = 1.4
        vfxb.pause = 9
        vfxb.depth = -6
        canhalo = 0
       } else {
        sound_play(asset_get("sfx_absa_kickhit"),false,noone,.8,1)
        move_cooldown[AT_EXTRA_1] = 2
       }
    }
}

if shield == 1 {
    
    vfxb = spawn_hit_fx((x + hit_player_obj.x)/2,(y + hit_player_obj.y)/2 - 40,304)
    vfxb.image_xscale = 1.4
    vfxb.image_yscale = 1.4
    vfxb.pause = min(8,floor(hitstop))
    vfxb.depth = -6
    angle += (10 + min(10,(enemy_hitboxID.kb_value)*2))*(1 - get_gameplay_time()%3)
    sound_stop(sound_get("olaugh"))
    sound_play(sound_get("olaugh"),false,noone,.75,1 - phaseh/190) 
    sound_play(sound_get("RI"),false,noone,enemy_hitboxID.kb_value/10,1.5)

}

if phaseh == 9999 {

 ending = -1

}

