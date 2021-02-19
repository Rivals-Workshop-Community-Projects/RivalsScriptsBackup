set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 20);

var damage = 4;
var angle = 361;
var flipper = 0;
var bkb = 10;
var kbg = 0.3;
var hp = 7;
var hpg = 0.5;
var sfx = asset_get("sfx_blow_medium2");

// Nair hit 1

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 62);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sfx);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sfx);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 62);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 82);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sfx);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -76);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 62);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sfx);

angle = 270;
flipper = 0;
// Nair hit 1 back hit
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sfx);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 56);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, sfx);

// Nair hit 2
damage = 6;
angle = 50;
flipper = 0;
bkb = 12;
kbg = 0.2;
hp = 8
hpg = 0.5;
sfx = asset_get("sfx_blow_heavy2");

set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 54);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, sfx);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 64);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -66);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, sfx);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, damage);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, angle);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, flipper);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, hp);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, sfx);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 1);
