//hitbox_init
babooey = 0;

//G&W can only absorb Hand Blast
if attack != AT_NSPECIAL {
	no_absorb = 1;
	proj_reflectable = 1;
}