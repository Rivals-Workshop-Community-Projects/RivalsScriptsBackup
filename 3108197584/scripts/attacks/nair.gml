set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));


var num = 1;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 5);

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, num, AG_WINDOW_VSPEED, -1);

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, num, AG_WINDOW_VSPEED, -1);

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NAIR, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NAIR, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NAIR, num, AG_WINDOW_VSPEED, -1);

num++;
set_window_value(AT_NAIR, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NAIR, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_NAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, num, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, num, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, num, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, num, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, num, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, num, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, num, HG_KNOCKBACK_SCALING, .01);
set_hitbox_value(AT_NAIR, num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

num++;
set_hitbox_value(AT_NAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, num, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, num, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NAIR, num, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, num, HG_HEIGHT, 35);
set_hitbox_value(AT_NAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, num, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, num, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, num, HG_KNOCKBACK_SCALING, .01);
set_hitbox_value(AT_NAIR, num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, num, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

num++;
set_hitbox_value(AT_NAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, num, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, num, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_X, 35);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_Y, -47);
set_hitbox_value(AT_NAIR, num, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, num, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, num, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, num, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, num, HG_KNOCKBACK_SCALING, .01);
set_hitbox_value(AT_NAIR, num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, num, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

num++;
set_hitbox_value(AT_NAIR, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, num, HG_WINDOW, 8);
set_hitbox_value(AT_NAIR, num, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_X, 35);
set_hitbox_value(AT_NAIR, num, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NAIR, num, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, num, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, num, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, num, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, num, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(AT_NAIR, num);