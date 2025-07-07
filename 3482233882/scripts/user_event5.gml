// Debug menu update

// Vertical option scrolling
if (debug_display_scrolltimer > 0) debug_display_scrolltimer--;
if (taunt_down && debug_display_type != 2 && (up_pressed || down_pressed || debug_display_scrolltimer == 0)) {
	if (up_down) {
		debug_display_index--;
		debug_display_scrolltimer = (up_pressed ? 24 : 8);
	}
	else if (down_down) {
		debug_display_index++;
		debug_display_scrolltimer = (down_pressed ? 24 : 8);
	}
	if (debug_display_scrolltimer > 0) {
		var index_min = 0;
		var index_max = (debug_display_type == 3) ? array_length(item_id_ordering)-1 : array_length(item_id_ordering)-debug_display_count;
		if (debug_display_index < index_min) debug_display_index = index_max;
		else if (debug_display_index > index_max) debug_display_index = 0;
		if (debug_display_type == 3 && item_id_ordering[debug_display_index] == noone) debug_display_index += down_down - up_down;
	}
}

// Horizontal panel scrolling
if (taunt_down && left_pressed || left_down && taunt_pressed) {
	debug_display_type--;
	if (debug_display_type < 0) debug_display_type = debug_display_typerange;
	clear_button_buffer(PC_TAUNT_PRESSED);
	
	var list_max = array_length(item_id_ordering)-debug_display_count;
	if (debug_display_type < 2 && debug_display_index > list_max) {
		debug_display_index = list_max;
	}
}
if (taunt_down && right_pressed || right_down && taunt_pressed) {
	debug_display_type++;
	if (debug_display_type > debug_display_typerange) debug_display_type = 0;
	clear_button_buffer(PC_TAUNT_PRESSED);
	
	var list_max = array_length(item_id_ordering)-debug_display_count;
	if (debug_display_type < 2 && debug_display_index > list_max) {
		debug_display_index = list_max;
	}
}

// Closing display
if (attack_pressed && special_pressed) debug_display_opened = false;

// Panel 3: item adder/remover
else if (debug_display_type == 3) {
	if (item_id_ordering[debug_display_index] == noone) debug_display_index++;
	if (taunt_down && special_pressed || special_down && taunt_pressed) {
		ue1_command = 1;
		item_silenced = true;
		new_item_id = item_id_ordering[debug_display_index];
		user_event(1);
		clear_button_buffer(PC_SPECIAL_PRESSED);
		clear_button_buffer(PC_TAUNT_PRESSED);
	}
	else if (taunt_down && shield_pressed || shield_down && taunt_pressed) {
		ue1_command = 2;
		new_item_id = item_id_ordering[debug_display_index];
		user_event(1);
		clear_button_buffer(PC_SHIELD_PRESSED);
		clear_button_buffer(PC_TAUNT_PRESSED);
	}
}

if (!attack_down) move_cooldown[AT_TAUNT] = 2;
move_cooldown[AT_EXTRA_3] = 2;