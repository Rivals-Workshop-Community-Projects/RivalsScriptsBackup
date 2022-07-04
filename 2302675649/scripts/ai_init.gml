//far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_FSPECIAL;

mid_side_attacks[0] = AT_DATTACK;

close_up_attacks[0] = AT_FAIR;
close_up_attacks[1] = AT_UTILT;

//close_down_attacks[0] = AT_DTILT;

close_side_attacks[0] = AT_FAIR;
close_side_attacks[1] = AT_BAIR;
close_side_attacks[2] = AT_FTILT;
close_side_attacks[3] = AT_UTILT;

neutral_attacks[0] = AT_FAIR;
neutral_attacks[1] = AT_BAIR;

ai_state = 0;
task_state = 0;
task = 0;
temp_level = 9;
cheatTracker = 0;
for (var i = 0; i < 20; ++i) cheatTracker[i] = {isCheater:false, nextParry: false};