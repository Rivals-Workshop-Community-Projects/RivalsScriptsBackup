var atk = AT_BAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 11);

win_num++; //attack 1
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);

win_num++; //interim
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_02"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 3);

win_num++; //attack 2
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 3);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, -32);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -44);
set_hitbox_value(atk, hit_num, HG_WIDTH, 72);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hit_num, HG_ANGLE, 130);
//set_hitbox_value(atk, hit_num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 4);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, -76);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, hit_num, HG_WIDTH, 58);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 66);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hit_num, HG_ANGLE, 135);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hit_num);