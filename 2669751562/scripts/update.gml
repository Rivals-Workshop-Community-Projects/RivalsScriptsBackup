//update

if (state == PS_WALL_JUMP || state_cat == SC_HITSTUN || !free) {
    move_cooldown[AT_FSPECIAL_AIR] = 0;
}

if(web_cooldown_current > 0) {
    web_cooldown_current--;

    if(web_cooldown_current == 0)
        sound_play(sfx_web_ready);
}

if(get_gameplay_time() % poison_tick_rate == 0) {
    with(asset_get("oPlayer")) {
        if(skl_poisoned && skl_poisoner == other.player) {
            take_damage(player, skl_poisoner, other.poison_damage);
            sound_play(other.sfx_poison_damage);
        }
    }
}

with(asset_get("oPlayer")) {
    if(state == PS_DEAD || state == PS_SPAWN || state == PS_RESPAWN) {
        skl_poisoned = false;
        skl_poisoner = 0;
    }
}