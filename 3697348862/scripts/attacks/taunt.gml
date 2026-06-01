set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 13);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


// start it
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);

// clicks

// this might be the first time you'll EVER see someone using a FOR LOOP on WINDOW DATA. i think
for (var i = 2; i <= 4; i++){//>
	set_window_value(AT_TAUNT, i, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT, i, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_TAUNT, i, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT, i, AG_WINDOW_ANIM_FRAME_START, 2 + ((i - 2) * 5)  );
}

// start to flip
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 17);


// flip
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 18);

// land
set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 24);

// stand.
set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 25);

// show the "LOL"
set_window_value(AT_TAUNT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 26);

// hold (can be held)
set_window_value(AT_TAUNT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAME_START, 28);

// clear
set_window_value(AT_TAUNT, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 11, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 11, AG_WINDOW_ANIM_FRAME_START, 29);

// flip
set_window_value(AT_TAUNT, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 12, AG_WINDOW_LENGTH, 3 * 6);
set_window_value(AT_TAUNT, 12, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 12, AG_WINDOW_ANIM_FRAME_START, 33);

// land
set_window_value(AT_TAUNT, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 13, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 13, AG_WINDOW_ANIM_FRAME_START, 39);
