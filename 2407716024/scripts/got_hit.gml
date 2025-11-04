//got_hit - called when you're hit by a hitbox

//refresh uspecial
if (state_cat == SC_HITSTUN) {
    move_cooldown[AT_USPECIAL] = 0;
}
    got_hit_ticks = 0;

got_hit_num = 1;

peacock_has_airdash = 1;

/*if (had_airdodge_pre_dash == true)
{
    has_airdodge = true;
    had_airdodge_pre_dash = false;
}*/

last_hit = hit_player_obj;

if (instance_exists(uair_borb) && enemy_hitboxID.type == 1)
{
    instance_destroy(uair_borb);
    uair_borb = noone;
}