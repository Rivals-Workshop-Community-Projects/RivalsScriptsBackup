///

if savex != 0 {
    spawn_hit_fx(x,y - 30,305)
         spawn_hit_fx (x,y - 40, shit5)
    x = savex
    y = savey
    hitstop += 20
    take_damage(player,-1, -6)
    sound_play(sound_get("fstrong1"),false,noone,0.6)
     set_state (PS_HITSTUN)
         savex = 0
}

if attackbar > 0  && enemy_hitboxID.damage > 3{
     sound_play(sound_get("hextra"))
     set_state (PS_HITSTUN)
     spawn_hit_fx (x,y - 40, lighten2)
     spawn_hit_fx (x,y - 40, shit5)
     move_cooldown[AT_FTILT] = enemy_hitboxID.damage*4 + 10
     ohsp = x
     ovsp = y - 10
     move_cooldown [AT_NSPECIAL] = 180
}


dmgmul = 0
attackbar = 0
sound_stop(sound_get("buzzing"))


if super_armor {
    take_damage( player, -1 , -1 * enemy_hitboxID.damage)
}


if attacking && attack == AT_DSPECIAL && super_armor && enemy_hitboxID.type == 1{
    window = 4 
    window_timer = 0
        state_timer = 1
        sound_play(sound_get("hextra"))
        create_hitbox(AT_DSPECIAL,3,x,y)
        spawn_hit_fx (x,y - 40, 304)
    if hit_player_obj.x < x {
        spr_dir = -1
    } else {
        spr_dir = 1
    }
}