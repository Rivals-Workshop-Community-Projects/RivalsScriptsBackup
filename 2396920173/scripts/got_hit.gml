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

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2 { //hit in bishop attack
    state = free ? PS_PRATFALL : PS_PRATLAND;
    state_timer = 0;
    window = 0;
}