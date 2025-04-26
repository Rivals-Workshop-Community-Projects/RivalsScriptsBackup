set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 2);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_zap"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_ell_small_missile_ground"));

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);


set_num_hitboxes(AT_DAIR,5);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, fx_gus_flame_small);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER,1.3);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, fx_gus_flame_small);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);
