set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_UAIR,12);

set_hitbox_value(AT_UAIR, 10, HG_PARENT_HITBOX, 1); //sourspot
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_Y, -93);
set_hitbox_value(AT_UAIR, 10, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 10, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 10, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 10, HG_ANGLE, 100);
set_hitbox_value(AT_UAIR, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 10, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 10, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 10, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_UAIR, 10, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));

set_hitbox_value(AT_UAIR, 11, HG_HITBOX_TYPE, 1); //sourspot
set_hitbox_value(AT_UAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_X, 35);
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_Y, -82);
set_hitbox_value(AT_UAIR, 11, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 11, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 11, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 11, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 11, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 11, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 11, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 11, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 11, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_UAIR, 11, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1); //sweetspot
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 100);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_UAIR, 12, HG_HITBOX_TYPE, 1); //sourspot
set_hitbox_value(AT_UAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 12, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 12, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 12, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 12, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 12, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 12, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 12, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 12, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 12, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_UAIR, 12, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));