///#args attack

stopped_sounds = [];

if attack == AT_DSPECIAL{
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
}

user_event(13);