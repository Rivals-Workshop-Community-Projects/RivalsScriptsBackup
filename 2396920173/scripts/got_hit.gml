//got-hit

uspec_move_num = 0;
move_cooldown[AT_USPECIAL] = 0;

if target_player != undefined {
    target_player.draw_reticle = false;
}

target_player = undefined;
draw_missile = false;
range_dist = 0;
missile_timer = 0;
missile_angle = 0;
rook_cannon = undefined;
swap_timer = 0;

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2 { //hit in bishop attack
    state = free ? PS_PRATFALL : PS_PRATLAND;
    state_timer = 0;
    window = 0;
}

if king_armour && (enemy_hitboxID.kb_value + (get_player_damage(player) * enemy_hitboxID.kb_scale * 0.12 * knockback_adj) > 10) {
    sound_play(asset_get("sfx_ice_shatter"))
    spawn_hit_fx(x, y - char_height/2, 158)
    king_armour = false;
    armour_cooldown = 120;
    super_armor = false;
    soft_armor = 0;
    has_airdodge = true;
    djumps = 0;
    set_state(PS_HITSTUN)
    orig_knock = enemy_hitboxID.kb_value
    old_hsp = dcos(enemy_hitboxID.kb_angle)*orig_knock
    old_vsp = -dsin(enemy_hitboxID.kb_angle)*orig_knock
}