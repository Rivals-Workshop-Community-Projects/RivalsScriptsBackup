set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 25)
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 16)
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2)
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12)
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

