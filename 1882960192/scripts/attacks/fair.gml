set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR,5);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//upper hitbox
set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -78);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 52);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -8);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 14);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 14);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));