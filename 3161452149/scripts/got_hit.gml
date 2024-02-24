if clone_pl = self{
	should_die = 1;
	main_pl.move_cooldow[AT_NSPECIAL] = 10;
	extra_cool = 30;
}
if instance_exists(clone_pl) && clone_pl != self clone_pl.should_die = 1;