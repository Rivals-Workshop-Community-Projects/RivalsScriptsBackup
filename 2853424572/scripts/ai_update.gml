if magic < 1{
far_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[2] = AT_UTILT;
close_side_attacks[4] = AT_FTILT;
}
if magic >= 1{
far_side_attacks[0] = AT_FSPECIAL;
mid_side_attacks[2] = AT_FSPECIAL;
close_side_attacks[4] = AT_DSPECIAL;
}

if magic < 3{
neutral_attacks[3] = AT_NSPECIAL;
mid_side_attacks[5] = AT_NSPECIAL;
far_side_attacks[3] = AT_NSPECIAL;
}

if magic == 3{
neutral_attacks[3] = AT_FTILT;
mid_side_attacks[5] = AT_DATTACK;
far_side_attacks[3] = AT_FSTRONG;
}