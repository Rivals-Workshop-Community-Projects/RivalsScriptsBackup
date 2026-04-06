// got_parried.gml


if (my_hitboxID.attack == AT_FSPECIAL_D)  {
	if  my_hitboxID.hbox_num == 1 {
			sound_play(sound_get("sfx-tape-2"), false, noone, 1, 1.2);
			my_hitboxID.destroyed = true;
			my_hitboxID.hitbox_timer = 0;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL_2) {
	rolltime = 25;
}

if (my_hitboxID.attack == AT_USPECIAL) {
	if  my_hitboxID.hbox_num == 3 {
		my_hitboxID.hitbox_timer = length;
	}
}

if (my_hitboxID.attack == AT_EXTRA_2) {
	if  my_hitboxID.hbox_num == 3 {
		tapes -= 1;
		my_hitboxID.destroyed = true;
		tapecool = 180;
		sound_play(sound_get("sfx-tape-2"), false, noone, 1, 1.2);
	}
	if  my_hitboxID.hbox_num > 3 {
		my_hitboxID.hitbox_timer = 0;
	}
}