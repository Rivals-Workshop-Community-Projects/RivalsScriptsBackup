user_event(11);

if phone_user_id != noone && instance_exists(phone_user_id) && phone_user_id.phone.firmware < firmware && get_gameplay_time() == clamp(get_gameplay_time(), 330, 900){
	draw_debug_text(10, 10, "UPDATE AVAILABLE
	- " + phone_user_id.muno_char_name + "'s MunoPhone: v" + string(phone_user_id.phone.firmware) + "
	- Latest: v" + string(firmware) + "
	
	(this message is for the " + phone_user_id.muno_char_name + " developer)");
}