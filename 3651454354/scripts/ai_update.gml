//wuh

far_down_attacks[0] = AT_DAIR;

if nspecial_ammo > 0{
far_side_attacks[0] = AT_NSPECIAL;
}
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FAIR;
mid_side_attacks[1] = AT_JAB;
mid_side_attacks[2] = AT_DATTACK;
mid_side_attacks[3] = AT_FSPECIAL;
mid_side_attacks[4] = AT_FTILT;

close_up_attacks[1] = AT_UAIR;

if nspecial_ammo > 0{
close_down_attacks[0] = AT_DTILT;
}else{
close_down_attacks[0] = AT_DAIR;	
}
close_down_attacks[1] = AT_DSTRONG;
close_down_attacks[2] = AT_DAIR;

close_side_attacks[0] = AT_FAIR;
close_side_attacks[1] = AT_NAIR;
close_side_attacks[2] = AT_FTILT;


neutral_attacks[0] = AT_FAIR;
mid_side_attacks[1] = AT_DATTACK;
neutral_attacks[2] = AT_NAIR;
if nspecial_ammo > 0{
neutral_attacks[3] = AT_NSPECIAL;
}