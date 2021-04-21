set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("jab_beam"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_absa_boltcloud"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

//active
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, -3);

//overshoot
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//endlag
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 161);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -19);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 130);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 17);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 157);

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 74);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 147);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_HITPAUSE, 17);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 157);