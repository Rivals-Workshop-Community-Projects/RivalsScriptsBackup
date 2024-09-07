set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 5);

//startup: 19 -> 18
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Active frames: 3 -> 5
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.99);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
//slight vertical boost added

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.99);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_FSPECIAL_AIR, 4)


set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 70);
//increasd sourspot width
//decreased sourspot height
//moved hitbox more inside
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -69);
//increased hitbox width
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 71);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -43);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 63);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);