var atk = AT_DATTACK;

set_attack_value(atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 5);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 10);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, 3);

win_num++; //followup windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 7);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 10);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_01"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 6);

win_num++; //followup attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 15);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -12);
set_hitbox_value(atk, hit_num, HG_WIDTH, 48);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hit_num, HG_ANGLE, 35);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(atk, hit_num, HG_SDI_MULTIPLIER, 0.1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 5);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hit_num, HG_WIDTH, 124);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 88);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hit_num, HG_ANGLE, 50);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hit_num);