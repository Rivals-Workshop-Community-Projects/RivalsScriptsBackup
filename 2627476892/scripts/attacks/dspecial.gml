set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// charge
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//store charge
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//slippery moment
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("mus_sfx_bookspin"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .6);

set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC, "This attack doesn't have any hitboxes. It's only for fueling Fspecial and Uspecial, and applying Lancer with 'Slippery'.");





