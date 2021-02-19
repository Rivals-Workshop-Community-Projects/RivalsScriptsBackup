//AR_EXTRA_1
//actually kurekijin

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 6);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY , 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//bas   baa   bar
//0-4:5 5-7:3 8-10:3

//bas   baa1  baa2  baa3  bar
//0-1:2 2-4:3 5-5:1 6-7:2 8-10:3

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, -7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, -2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, sound_get("SWFS6"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, .2);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GRAVITY, .7);

//1 x:-37 y:-25 w:20 h:24 priority - sweetspot
//2 x:-4 y:-25 w:60 h:24 latter swing long
//3: back hit sourspot

set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -42);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 43); //43
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 14); //34
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0); //2
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 47);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 71);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 1.2);
//set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 43);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
