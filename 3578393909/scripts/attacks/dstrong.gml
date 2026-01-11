var atk = AT_DSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);

win_num++; //charge window
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);

win_num++; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 2);

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 4);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 4);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -12);
set_hitbox_value(atk, hit_num, HG_WIDTH, 40);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hit_num, HG_ANGLE, 75);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 4);
set_hitbox_value(atk, hit_num, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, -44);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -12);
set_hitbox_value(atk, hit_num, HG_WIDTH, 40);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hit_num, HG_ANGLE, 75);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, hit_num, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hit_num);