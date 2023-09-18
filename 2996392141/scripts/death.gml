if (get_player_stocks(player) == 0) {
    tension_amount = 0;
}
else {
	tension_amount = TENSION_START;
}

#define tension_add(_change)
tension_amount += _change;
tension_amount = clamp(tension_amount, 0, TENSION_MAX);