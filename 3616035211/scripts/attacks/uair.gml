var atk = AT_UAIR;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);
set_attack_value(atk, AG_CATEGORY, 1);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 7);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, num, AG_WINDOW_VSPEED, -5);

//end
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -62);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 38);
set_hitbox_value(atk, num, HG_PRIORITY, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, num, HG_WIDTH, 38);
set_hitbox_value(atk, num, HG_HEIGHT, 64);
set_hitbox_value(atk, num, HG_PRIORITY, 1);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -62);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 38);
set_hitbox_value(atk, num, HG_PRIORITY, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, num, HG_WIDTH, 38);
set_hitbox_value(atk, num, HG_HEIGHT, 61);
set_hitbox_value(atk, num, HG_PRIORITY, 1);
set_hitbox_value(atk, num, HG_DAMAGE, 2);
set_hitbox_value(atk, num, HG_ANGLE, 70);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_HITBOX_X, -6);
set_hitbox_value(atk, num, HG_HITBOX_Y, -62);
set_hitbox_value(atk, num, HG_WIDTH, 80);
set_hitbox_value(atk, num, HG_HEIGHT, 38);
set_hitbox_value(atk, num, HG_PRIORITY, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(atk, num, HG_LIFETIME, 5);
set_hitbox_value(atk, num, HG_HITBOX_X, 0);
set_hitbox_value(atk, num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, num, HG_WIDTH, 31);
set_hitbox_value(atk, num, HG_HEIGHT, 64);
set_hitbox_value(atk, num, HG_PRIORITY, 1);
set_hitbox_value(atk, num, HG_DAMAGE, 5);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_num_hitboxes(atk, num);