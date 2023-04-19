far_up_attacks[0] = AT_UAIR;

mid_side_attacks[0] = AT_DATTACK;

close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_DTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_NSPECIAL;

ai_state = 0;
waveland = false;
waveshine = 0;
topcustom = 0;
cheatTracker = 0;
for (var i = 0; i < 20; ++i) cheatTracker[i] = {isCheater:false, nextParry: false};