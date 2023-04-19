set_attack_value(AT_DTHROW, AG_CATEGORY, 0);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 0);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(AT_UTHROW, AG_CATEGORY, 0);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("parry"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 0);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("parry"));


set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_ice_shatter"));
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DTHROW, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 8*4);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTHROW, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));
set_window_value(AT_DTHROW, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_LENGTH, 5*4);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DTHROW, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
set_window_value(AT_DTHROW, 6, AG_WINDOW_SFX_FRAME, 12);


set_num_hitboxes(AT_DTHROW, 2);

set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 96);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DTHROW, 2, HG_HITSTUN_MULTIPLIER, 1.15);


set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 156);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 156);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.15);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));