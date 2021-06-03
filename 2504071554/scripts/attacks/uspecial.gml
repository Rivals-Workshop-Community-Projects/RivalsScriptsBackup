set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

//shockcat uspecial
//pika up b is 15 startup
//absa uspecial is 12 startup

var tele_time = 4;
var tele_sound = asset_get("sfx_boss_shine")

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, tele_sound);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);

//teleporting
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, tele_time);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX, tele_sound);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX_FRAME, 3);

//teleporting
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, tele_time);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USPECIAL, 11, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);



//aaa
set_window_value(AT_USPECIAL, 12, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USPECIAL, 13, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USPECIAL, 14, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);







