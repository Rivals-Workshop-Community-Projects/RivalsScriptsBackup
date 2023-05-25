set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);

//shockcat dspecial

var tele_time = 4;

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);



//eye glow
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_INVINCIBILITY, 1);

//teleporting
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, tele_time);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);

//back
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);