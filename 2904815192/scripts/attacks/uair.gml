set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

var multihit_base_kb = 5;
var multihit_hitpause = 3;

//Multihit 1
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, multihit_base_kb);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, multihit_hitpause);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

//Multihit 2
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, multihit_base_kb);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, multihit_hitpause);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);

//Multihit 3
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, multihit_base_kb);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, multihit_hitpause);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);

//Finishing Hit
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_MUNO_HITBOX_NAME, "Finishing Hitbox");
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 68);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);