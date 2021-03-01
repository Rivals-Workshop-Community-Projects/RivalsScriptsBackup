//set_attack

if attack == AT_USPECIAL{
	set_num_hitboxes(AT_USPECIAL, 2);
}

if attack == AT_USTRONG{
	set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
}
if attack == AT_DSTRONG{
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
}
if attack == AT_FSTRONG{
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
}
if attack == AT_DSPECIAL{
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
	set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
}



user_event(13);