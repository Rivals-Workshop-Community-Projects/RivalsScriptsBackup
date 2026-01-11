var atk = AT_NAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 4);

win_num++; //strong hit
set_window_value(atk, win_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //strong hit
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 16);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hit_num, HG_WIDTH, 40);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hit_num, HG_ANGLE, 70);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 1);

set_num_hitboxes(atk, 1);