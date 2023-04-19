/*far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_NSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_FTILT;
mid_side_attacks[2] = AT_DTILT;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_NAIR;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_JAB;
close_side_attacks[3] = AT_DSTRONG;*/

ai_state = 0;
tryhard = false;
waveland = false;
topcustom = 0;
cheatTracker = 0;
for (var i = 0; i < 20; ++i) cheatTracker[i] = {isCheater:false, nextParry: false};