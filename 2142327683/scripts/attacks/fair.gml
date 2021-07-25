set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 16);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 8);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 292);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.2);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));