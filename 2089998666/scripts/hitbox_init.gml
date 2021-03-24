//hitbox_init
if attack == AT_FSPECIAL {
	if hbox_num == 1 {
		eggBounce = 0;
	}
	if hbox_num != 2 {
	no_absorb = 1;
	proj_reflectable = 1;
	}
}