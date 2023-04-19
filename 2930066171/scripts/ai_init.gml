// ai_init.gml

/*
test_timer = 0;
test_vsp[0] = -1;
test_hsp[0] = -1;
test_x[0] = -1;
test_y[0] = -1;
test_attack[0] = -1;
test_state[0] = -1;
test_state_cat[0] = -1;
test_window[0] = -1;
test_window_timer[0] = -1;
test_state_timer[0] = -1;
test_has_walljump[0] = -1;
test_has_airdodge[0] = -1;
test_djumps[0] = -1;
test_super_armor[0] = -1;
test_soft_armor[0] = -1;
test_invincible[0] = -1;
test_invulnerable[0] = -1;
test_hitpause[0] = -1;
test_free[0] = -1;
*/


nspecialCool = 0
wobbleTest = 100

//Mix Up
nspecialMixUp = 0
walljumpMixUp = 0


checkpoint = -1;

out_x = -1;
out_y = -1;
offstage = false;

far_down_attacks[0] = AT_FAIR;
far_down_attacks[1] = AT_DAIR;
far_down_attacks[2] = AT_NAIR;

far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USTRONG;

far_side_attacks[0] = AT_DATTACK;
far_side_attacks[1] = AT_NSPECIAL;
far_side_attacks[2] = AT_NAIR;
far_side_attacks[3] = AT_DTILT;

mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_FSTRONG;
mid_side_attacks[2] = AT_NSPECIAL;
mid_side_attacks[3] = AT_FTILT;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;
close_up_attacks[3] = AT_NAIR;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DSPECIAL;
close_down_attacks[2] = AT_DAIR;

close_side_attacks[0] = AT_FTILT;
close_side_attacks[1] = AT_JAB;
close_side_attacks[2] = AT_DSTRONG;
close_side_attacks[3] = AT_FSTRONG;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_NSPECIAL;
neutral_attacks[3] = AT_UAIR;
neutral_attacks[4] = AT_FSPECIAL;
