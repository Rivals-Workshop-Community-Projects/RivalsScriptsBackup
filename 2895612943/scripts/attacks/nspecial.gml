set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 0);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("sb_hurtbox"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_record1"));

