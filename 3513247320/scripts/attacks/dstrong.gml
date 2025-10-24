var atk = AT_DSTRONG;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 19);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, false);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 9);
set_window_value(atk, win, AG_WINDOW_LENGTH, 99999);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_GOTO, 10);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 22);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 99999);
set_hitbox_value(atk, hit, HG_HITBOX_X, 2);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hit, HG_WIDTH, 140);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);    
set_hitbox_value(atk, hit, HG_SHAPE, 2);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 5);
set_hitbox_value(atk, hit, HG_ANGLE, 270);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_KRA_ROCK_BIG);
set_hitbox_value(atk, hit, HG_TECHABLE, 3);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 40);
set_hitbox_value(atk, hit, HG_LIFETIME, 5);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 180);
set_hitbox_value(atk, hit, HG_HEIGHT, 80);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_ANGLE, 50);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_KRA_ROCK_HUGE);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hit);