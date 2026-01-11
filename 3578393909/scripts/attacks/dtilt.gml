var atk = AT_DTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_01"));

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);


win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 64);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -20);
set_hitbox_value(atk, hit_num, HG_WIDTH, 64);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hit_num, HG_ANGLE, 45);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hit_num);