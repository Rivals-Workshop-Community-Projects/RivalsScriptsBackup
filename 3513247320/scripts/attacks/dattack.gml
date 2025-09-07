var atk = AT_DATTACK;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 8);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 12);
set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 11);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 1);
set_hitbox_value(atk, hit, HG_ANGLE, 0);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, hit, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, hit, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hit, HG_TECHABLE, 1);
set_hitbox_value(atk, hit, HG_SDI_MULTIPLIER, .1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 4);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 1);
set_hitbox_value(atk, hit, HG_ANGLE, 0);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, hit, HG_GROUNDEDNESS, 2);
set_hitbox_value(atk, hit, HG_TECHABLE, 3);
set_hitbox_value(atk, hit, HG_SDI_MULTIPLIER, .1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 5);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 5);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 4);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 5);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

// hit++;
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 20);
// set_hitbox_value(atk, hit, HG_LIFETIME, 4);
// set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
// set_hitbox_value(atk, hit, HG_WIDTH, 35);
// set_hitbox_value(atk, hit, HG_HEIGHT, 60);
// set_hitbox_value(atk, hit, HG_PRIORITY, 6);
// set_hitbox_value(atk, hit, HG_DAMAGE, 1);
// set_hitbox_value(atk, hit, HG_ANGLE, 0);
// set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 9);
// set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 2);
// set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 303);
// set_hitbox_value(atk, hit, HG_TECHABLE, 3);
// set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 10);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 60);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit, HG_TECHABLE, 0);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_num_hitboxes(atk, hit);