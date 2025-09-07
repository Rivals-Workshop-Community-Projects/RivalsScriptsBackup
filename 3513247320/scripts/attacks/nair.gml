var atk = AT_NAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, true);
set_attack_value(atk, AG_LANDING_LAG, 6);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 5);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
// set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
// set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 6);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 3);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(atk, win, AG_WINDOW_VSPEED, -4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 11);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 60);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 1);
set_hitbox_value(atk, hit, HG_ANGLE, 90);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

// hit++;
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
// set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 3);
// set_hitbox_value(atk, hit, HG_LIFETIME, 2);
// set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
// set_hitbox_value(atk, hit, HG_PRIORITY, 6);

// hit++;
// set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
// set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
// set_hitbox_value(atk, hit, HG_WINDOW, 3);
// set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 3);
// set_hitbox_value(atk, hit, HG_LIFETIME, 2);
// set_hitbox_value(atk, hit, HG_HITBOX_X, -5);
// set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
// set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 4);
set_hitbox_value(atk, hit, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 80);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 70);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hit);