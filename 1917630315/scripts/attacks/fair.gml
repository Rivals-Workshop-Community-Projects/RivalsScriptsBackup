set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -85);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 175);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 10);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 2, HG_MUNO_HITBOX_NAME, "Hit 2");
set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 3, HG_MUNO_HITBOX_NAME, "Final Hit");
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -85);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 175);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 130);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);