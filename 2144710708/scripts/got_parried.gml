// parried

// special interaction for when neutral special is parried
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
	// reflected projectiles last twice as long
    my_hitboxID.length = get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME*2);
	// reflected bullet breaks through all other bullets
	my_hitboxID.transcendent = get_hitbox_value(AT_NSPECIAL, 1, true);
}


if (my_hitboxID.attack == AT_DATTACK) {
	
	// can't escape parry stun while dash attacking
	should_dattack2 = false;
	window = 3;
	window_timer = 0;
}

// resets name tag height if parried during taunt... somehow
char_height = 52;


if (my_hitboxID.attack == AT_FSPECIAL) {
	
	// interrupts fspecial
	// stops 0 air accel bug
	window = 4;
	window_timer = 0;

}

if (my_hitboxID.attack == AT_DSPECIAL_2) {
	sound_play(sound_get("button15"), false, noone, 1, 1);
	y = 2500;
}

if (my_hitboxID.attack == AT_USPECIAL) {
	// don't go into the air 
	vsp = 0;
	window = 4;
	window_timer = 0;
}