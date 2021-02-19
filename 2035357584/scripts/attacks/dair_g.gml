set_attack_value(AT_DAIR_G, AG_CATEGORY, 3);
set_attack_value(AT_DAIR_G, AG_SPRITE, sprite_get("dairg"));
set_attack_value(AT_DAIR_G, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR_G, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR_G, AG_HURTBOX_SPRITE, sprite_get("dairg_hurt"));
set_attack_value(AT_DAIR_G, AG_USES_CUSTOM_GRAVITY, 1);

//dairg start
set_window_value(AT_DAIR_G, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_SFX, asset_get("sfx_mobile_gear_jump"));
set_window_value(AT_DAIR_G, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DAIR_G, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//dairg active
set_window_value(AT_DAIR_G, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DAIR_G, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR_G, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR_G, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR_G, 2, AG_WINDOW_VSPEED, max_fall);
set_window_value(AT_DAIR_G, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR_G, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//dairg land
set_window_value(AT_DAIR_G, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DAIR_G, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DAIR_G, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR_G, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR_G, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR_G, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
set_window_value(AT_DAIR_G, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//dairg bounce
set_window_value(AT_DAIR_G, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DAIR_G, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR_G, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR_G, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_DAIR_G, 2);

//diving
set_hitbox_value(AT_DAIR_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR_G, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_DAIR_G, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DAIR_G, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR_G, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR_G, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR_G, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR_G, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DAIR_G, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR_G, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR_G, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR_G, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DAIR_G, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR_G, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DAIR_G, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR_G, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

//landing
set_hitbox_value(AT_DAIR_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR_G, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR_G, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR_G, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR_G, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DAIR_G, 2, HG_WIDTH, 114);
set_hitbox_value(AT_DAIR_G, 2, HG_HEIGHT, 29);
set_hitbox_value(AT_DAIR_G, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR_G, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR_G, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR_G, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR_G, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR_G, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR_G, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR_G, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR_G, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR_G, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR_G, 2, HG_ANGLE_FLIPPER, 8);