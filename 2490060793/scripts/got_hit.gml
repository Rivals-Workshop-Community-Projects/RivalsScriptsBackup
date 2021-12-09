//got_hit

draw_limit = false

aiHitboxAngle = get_hitbox_angle(enemy_hitboxID);
aiHitboxKB = orig_knock;

if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2 && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) {
    break_active = false
    meter_cur = 0
    sound_play(asset_get("sfx_ori_energyhit_medium"))
    spawn_hit_fx(x, y-30, 306)
}

if break_active meter_cur -= 2