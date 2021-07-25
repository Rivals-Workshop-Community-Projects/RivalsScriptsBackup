//hitbox_init
smacked = false;
borked = false;
hitstop = 0;
old_vsp = 0;
old_hsp = 0;

//G&W can't absorb bowling balls
if attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 {
	no_absorb = 1;
	proj_reflectable = 1;
	}