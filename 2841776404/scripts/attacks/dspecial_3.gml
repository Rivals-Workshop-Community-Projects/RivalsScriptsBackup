set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sfx_suit_button"));

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 30);
//set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("sfx_suit_button"));

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);