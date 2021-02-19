set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FSPECIAL,3);



set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, -180);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 59);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE,75);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));



set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -59);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 59);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

