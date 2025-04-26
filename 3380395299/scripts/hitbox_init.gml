//hitbox_init

bounce = 3;

if attack == AT_NSPECIAL && hbox_num == 2 {
	bounce = 2;
}

has_hit = false;
hittimer = 0;
hitAgain = false;
jumping = false;

if attack == AT_DTILT && hbox_num == 2 {
	free = false;
}