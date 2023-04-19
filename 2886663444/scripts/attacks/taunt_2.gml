set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("death"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 96);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 24);
// set_window_value(AT_TAUNT_2, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("cough"));