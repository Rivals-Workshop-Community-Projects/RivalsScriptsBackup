var atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7);

var win_num = 1; //initial windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 8);

win_num++; //attack 1
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);

win_num++; //attack 1-2 transition
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 2);

win_num++; //attack 2
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 8);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //attack 1
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 48);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hit_num, HG_WIDTH, 72);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hit_num, HG_ANGLE, 75);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.2)
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, sound_get("knife_4_fixed"));

hit_num++; //attack 2
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 4);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 52);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -54);
set_hitbox_value(atk, hit_num, HG_WIDTH, 72);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hit_num, HG_ANGLE, 45);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, sound_get("knife_4_fixed"));

set_num_hitboxes(atk, hit_num);