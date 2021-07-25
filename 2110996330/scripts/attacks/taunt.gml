set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_right"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1); //Startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1); //Suspense
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_light2"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1); //Pull up
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1); //Hold
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_light1"));
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 1);