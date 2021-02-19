// Proxy FSpecial
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);


set_num_hitboxes(AT_FSPECIAL, 0);
