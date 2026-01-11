var atk = AT_UAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 9);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);


win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -75);
set_hitbox_value(atk, hit_num, HG_WIDTH, 32);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 90);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hit_num, HG_ANGLE, 90);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, sound_get("knife_5"));
set_hitbox_value(atk, hit_num, HG_HITBOX_COLOR, c_purple);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 2);
set_hitbox_value(atk, hit_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 14);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hit_num, HG_ANGLE, 90);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, sound_get("knife_4_fixed"));

set_num_hitboxes(atk, hit_num);