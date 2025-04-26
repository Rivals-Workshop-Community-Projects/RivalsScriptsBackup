set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("tauntTerminal"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_AIR_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);

// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 19*3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 19);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("draw_pda_spy"));//TODO: should not play when invis?

//pause
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 19);

//type
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 30*6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 30);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 20);

//image
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 38*6);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 38);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 50);

//error
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 40*6);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 40);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 88);

//text
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_LENGTH, 16*6);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAME_START, 127);

set_window_value(AT_EXTRA_2, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_LENGTH, 14*3);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_ANIM_FRAME_START, 144);
// set_window_value(AT_EXTRA_2, 7, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_EXTRA_2, 7, AG_WINDOW_SFX, sound_get("draw_pda_spy"));