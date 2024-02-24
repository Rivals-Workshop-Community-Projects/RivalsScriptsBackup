if instance_exists(clone_pl) && clone_pl != self clone_pl.should_die = 1;
if instance_exists(venus) && venus.can_attack{
	venus.state = 4;
	venus.timer = 0;
}
if clone_pl = self && projection{
	main_pl.window = 3;
	main_pl.window_timer = 0;
}