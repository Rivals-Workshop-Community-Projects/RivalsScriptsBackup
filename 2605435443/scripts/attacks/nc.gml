set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("stand_nc"));
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("air_nc"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("parry"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_EXTRA_1, 0);