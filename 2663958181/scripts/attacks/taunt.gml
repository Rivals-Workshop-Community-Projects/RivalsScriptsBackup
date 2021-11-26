set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

// Spin
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 23);

// Sparkle
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 15);

// End
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 18);

// Sunglasses / Hat
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);

// DRIP
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("drip"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("sfx_drip"));
