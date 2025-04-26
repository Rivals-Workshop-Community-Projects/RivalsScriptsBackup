set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

var fairActiveHitboxFrames = 2;

// startup
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -0.25);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);

// active 1
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, fairActiveHitboxFrames * 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// active 2
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, fairActiveHitboxFrames);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

// 1st Hit
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "1st Hit");
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, fairActiveHitboxFrames);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .2);
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

// 2nd Hit
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_MUNO_HITBOX_NAME, "2nd Hit");
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, fairActiveHitboxFrames);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .95);	// yeah
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);