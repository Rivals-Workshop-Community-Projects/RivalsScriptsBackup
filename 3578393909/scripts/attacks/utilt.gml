var atk = AT_UTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 7);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 6);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -70);
set_hitbox_value(atk, hit_num, HG_WIDTH, 44);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 44);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hit_num, HG_ANGLE, 90);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, sound_get("knife_4_fixed"));

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hit_num, HG_WIDTH, 36);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 72);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hit_num, HG_ANGLE, 90);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, sound_get("knife_4_fixed"));

set_num_hitboxes(atk, hit_num);