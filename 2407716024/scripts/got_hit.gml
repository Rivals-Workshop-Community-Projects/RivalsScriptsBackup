//got_hit - called when you're hit by a hitbox

//refresh uspecial
if (state_cat == SC_HITSTUN) {
    move_cooldown[AT_USPECIAL] = 0;
}
    got_hit_ticks = 0;

got_hit_num = 1;