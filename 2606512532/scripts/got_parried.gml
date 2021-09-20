//got-parried

if orbitar_id != noone && instance_exists(orbitar_id) && !phone_cheats[CHEAT_STRONG_SHIELD] && !has_rune("C") {
    if orbitar_id.state == PS_ATTACK_AIR {
        orbitar_id.state = PS_DEAD;
        orbitar_id.state_timer = 0;
        orbitar_id.window = 0;
        orbitar_id.window_timer = 0;
    } else {
        spawn_hit_fx(orbitar_id.x, orbitar_id.y, 109)
        instance_destroy(orbitar_id);
        orbitar_id = noone;
    }
}