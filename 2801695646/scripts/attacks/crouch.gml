set_attack_value(AT_EXTRA_1, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("crouch_full"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, crouchbox_spr);

//------------------------------------------------------------------------------
// Crouch Windows
//------------------------------------------------------------------------------

set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);

// Crouch settle
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 3);

// Crouch idle
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);     // 0 = normal, 9 = loop
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 5);

// Crawl forward
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 48);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 2);

// Crawl backward
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 48);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, -2);

// Stand
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 14);

// Exit Frame
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 14);