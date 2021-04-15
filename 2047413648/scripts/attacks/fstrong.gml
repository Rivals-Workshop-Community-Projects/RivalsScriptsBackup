set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"))

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);




set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_FSTRONG, 3);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 162);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 73);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 140);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 350);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 83);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 140);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);



