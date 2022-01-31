// got_parried

if attack == AT_DSTRONG if free set_state(PS_PRATFALL); else set_state(PS_PRATLAND);
//if attack == AT_JAB set_state(6);
if attack == AT_USTRONG set_state(PS_PRATFALL);

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 {
    var base, distmult, dist;
    base = 60;
    distmult = 0.08;
    dist = floor(distance_to_object(hit_player_obj) * distmult);
    parry_lag = base + dist;
    // disk.lockout = disk.lockout_max;
}
