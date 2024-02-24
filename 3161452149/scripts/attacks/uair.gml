var at = AT_UAIR;

set_attack_value(at, AG_CATEGORY, 1);
set_attack_value(at, AG_SPRITE, sprite_get("uair"));
set_attack_value(at, AG_HAS_LANDING_LAG, 1);
set_attack_value(at, AG_LANDING_LAG, 6);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//2 swipe
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 6);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 2);

//3 transitio
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 12);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(at, num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(at, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, 15);
set_hitbox_value(at, num, HG_HITBOX_Y, -65);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 30);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_SHAPE, 2);
set_hitbox_value(at, num, HG_DAMAGE, 8);
set_hitbox_value(at, num, HG_ANGLE, 90);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 8);

num++;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(at, num, HG_LIFETIME, 3);
set_hitbox_value(at, num, HG_HITBOX_X, -10);
set_hitbox_value(at, num, HG_HITBOX_Y, -70);
set_hitbox_value(at, num, HG_WIDTH, 70);
set_hitbox_value(at, num, HG_HEIGHT, 35);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 8);
set_hitbox_value(at, num, HG_ANGLE, 90);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 5);

num++;
set_hitbox_value(at, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, num, HG_WINDOW, 2);
set_hitbox_value(at, num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(at, num, HG_LIFETIME, 2);
set_hitbox_value(at, num, HG_HITBOX_X, -40);
set_hitbox_value(at, num, HG_HITBOX_Y, -50);
set_hitbox_value(at, num, HG_WIDTH, 40);
set_hitbox_value(at, num, HG_HEIGHT, 40);
set_hitbox_value(at, num, HG_PRIORITY, 3);
set_hitbox_value(at, num, HG_DAMAGE, 8);
set_hitbox_value(at, num, HG_ANGLE, 90);
set_hitbox_value(at, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(at, num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(at, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(at, num, HG_HIT_LOCKOUT, 2);

set_num_hitboxes(at, num);