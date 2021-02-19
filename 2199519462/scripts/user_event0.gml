if has_rune("D") {
	effect = random_func(0, 4, 1)+1
} else {
	effect++;
	if effect > 4 effect = 1;
}