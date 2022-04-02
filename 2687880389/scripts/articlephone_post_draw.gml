// MunoPhone Touch code - don't touch
// should be at TOP of file
with orig_player_id{
	if (enable_munophone) {
		muno_event_type = 3;
		user_event(14);
	}
}