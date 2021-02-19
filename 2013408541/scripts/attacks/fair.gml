set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH,17);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FAIR,12);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);//hilter
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_FAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FAIR, 10, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 10, HG_HEIGHT, 130);
set_hitbox_value(AT_FAIR, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 10, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 10, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 10, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 10, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FAIR, 10, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_FAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 11, HG_HITBOX_X, -5);
set_hitbox_value(AT_FAIR, 11, HG_HITBOX_Y, -108);
set_hitbox_value(AT_FAIR, 11, HG_WIDTH, 120);
set_hitbox_value(AT_FAIR, 11, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 11, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 11, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 11, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 11, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 11, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 11, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FAIR, 11, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_FAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 12, HG_HITBOX_X, -60);
set_hitbox_value(AT_FAIR, 12, HG_HITBOX_Y, -95);
set_hitbox_value(AT_FAIR, 12, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 12, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 12, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 12, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 12, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 12, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 12, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 12, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 12, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FAIR, 12, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));