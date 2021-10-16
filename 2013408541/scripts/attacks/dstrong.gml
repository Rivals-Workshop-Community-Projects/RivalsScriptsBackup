set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 14);//18
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG,12);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);//4
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -55);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ice_on_player"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_X, -6);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 10, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 10, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 10, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 10, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSTRONG, 10, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 10, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_DSTRONG, 10, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 11, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 11, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_X, 48);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSTRONG, 11, HG_WIDTH, 105);
set_hitbox_value(AT_DSTRONG, 11, HG_HEIGHT, 66);
set_hitbox_value(AT_DSTRONG, 11, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 11, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 11, HG_BASE_KNOCKBACK, 5);//3
set_hitbox_value(AT_DSTRONG, 11, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 11, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 11, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 11, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSTRONG, 11, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 11, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_DSTRONG, 11, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 12, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 12, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_X, 63);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_Y, -61);
set_hitbox_value(AT_DSTRONG, 12, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 12, HG_HEIGHT, 66);
set_hitbox_value(AT_DSTRONG, 12, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 12, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 12, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 12, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 12, HG_BASE_KNOCKBACK, 5);//3
set_hitbox_value(AT_DSTRONG, 12, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 12, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 12, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 12, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSTRONG, 12, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 12, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));
set_hitbox_value(AT_DSTRONG, 12, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_GROUP, 2);
