ai_states = ["approach", "retreat", "setup", "zone", "combo", "kill", "footsies", "recover", "dodge"];
current_ai_state = ai_states[0];

with oPlayer{
	other.player_positions[player] = [x, y];
	other.player_healths[player] = get_player_damage(player);
	other.player_stocks[player] = get_player_stocks(player);
}

far_down_attacks = [
	AT_DAIR
];
far_side_attacks = [
	AT_NSPECIAL,
	AT_FSPECIAL
];
mid_side_attacks = [
	AT_FTILT,
	AT_DATTACK,
	AT_FSTRONG,
	AT_FSPECIAL
];
close_up_attacks = [
	AT_UTILT,
	AT_USTRONG,
	AT_UAIR
];

close_down_attacks = [
	AT_DTILT,
	AT_DSTRONG,
	AT_DAIR
];
close_side_attacks = [
	AT_FTILT,
	AT_FSTRONG,
	AT_FAIR
];
neutral_attacks = [
	AT_JAB,
	AT_NAIR,
	AT_DSPECIAL
];