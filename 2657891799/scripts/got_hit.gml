//got-hit

ss_start = false

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL && super_armor {
    force_cancel = true
    counter_hit = hit_player_obj
    super_armor = false
    invincible = true
    invince_time = 5
    if doll_id == noone {
        doll_id = instance_create(x+40*spr_dir, y+10, "obj_article1")
        doll_id.hsp = 0
        doll_id.vsp = 0
        doll_id.spr_dir = -spr_dir
        doll_id.recent_player = id
    }
    take_damage(player, hit_player, -enemy_hitboxID.damage)
    sound_play(sound_get("counter_start"))
    ss_type = 2
    ss_x = hit_player_obj.x
    ss_y = hit_player_obj.y
} else {
    counter_hit = noone
}