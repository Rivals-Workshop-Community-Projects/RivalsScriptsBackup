///#args attack

stopped_sounds = [];

if attack == AT_DSPECIAL{
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
}

muno_event_type = 2;
user_event(14);