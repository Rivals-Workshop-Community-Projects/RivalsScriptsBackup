var atk = AT_JAB;

set_attack_value(atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//JAB 1 (windows 1 - 3)
var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 3);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 4);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_CANCEL_FRAME, 3);

//JAB 2 (windows 4 - 6)
win_num++; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_01"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 5);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 4);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 14);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //attack 1
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 48);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -44);
set_hitbox_value(atk, hit_num, HG_WIDTH, 60);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hit_num, HG_ANGLE, 40);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, hit_num, HG_FORCE_FLINCH, 1);

hit_num++; //attack 2
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 5);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 60);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -54);
set_hitbox_value(atk, hit_num, HG_WIDTH, 48);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 56);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hit_num, HG_ANGLE, 40);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hit_num);