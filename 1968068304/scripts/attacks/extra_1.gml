//extra1.gml
//flip move that happens after cancelling pratfall from epinel's own platforms.
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
//set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
//set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 4);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, -5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 1);