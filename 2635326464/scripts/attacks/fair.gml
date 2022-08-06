set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 22);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("ChainChomp"));

//Chain Chomp charges
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Chain chomp pulls
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, 4);


set_num_hitboxes(AT_FAIR, 8);


set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Chain chomp, before completely extended.");

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, .85);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 303)
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 66);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 84);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 100);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 112);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 124);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 8, HG_MUNO_HITBOX_NAME, "Chain chomp, extended and pulling you.");

set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 124);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 54);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 8);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 2);

set_attack_value(AT_FAIR, AG_MUNO_ATTACK_MISC_ADD, "There's 22 frames of landing lag, but this gets reduced to 8 on hit.");