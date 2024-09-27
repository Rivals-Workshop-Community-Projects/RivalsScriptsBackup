//got_hit.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

can_fspec = true;
if (fspec_leap_limit > 0 && !free) fspec_leap_limit = 0;

if (using_overdrive == 2 && state_cat == SC_HITSTUN) using_overdrive = 1;