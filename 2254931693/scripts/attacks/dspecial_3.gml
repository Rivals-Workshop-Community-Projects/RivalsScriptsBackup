set_attack_value(48, AG_CATEGORY, 2);
set_attack_value(48, AG_SPRITE, sprite_get("dspecial_3"));
set_attack_value(48, AG_HURTBOX_SPRITE, sprite_get("dspecial_3_hurt"));
set_attack_value(48, AG_AIR_SPRITE, sprite_get("dspecial_3_air"));
set_attack_value(48, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_3_air_hurt"));

set_attack_value(48, AG_NUM_WINDOWS, 3);

set_window_value(48, 1, AG_WINDOW_TYPE, 0);
set_window_value(48, 1, AG_WINDOW_LENGTH, 4);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(48, 1, AG_WINDOW_VSPEED, 1);
set_window_value(48, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(48, 2, AG_WINDOW_TYPE, 0);
set_window_value(48, 2, AG_WINDOW_LENGTH, 8);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(48, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 1, AG_WINDOW_SFX, sound_get("bonby_dspecial_whistle"));
set_window_value(48, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(48, 3, AG_WINDOW_TYPE, 0);
set_window_value(48, 3, AG_WINDOW_LENGTH, 4);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(48, 3, AG_WINDOW_VSPEED, 1);
set_window_value(48, 3, AG_WINDOW_VSPEED_TYPE, 1);