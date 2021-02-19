set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 11);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);//hilter
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_DAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 10, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 10, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 10, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 10, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 10, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DAIR, 10, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 10, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DAIR, 10, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 10, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, 40);
set_hitbox_value(AT_DAIR, 11, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 11, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 11, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 11, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 11, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DAIR, 11, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 11, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DAIR, 11, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 11, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DAIR, 11, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 11, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));