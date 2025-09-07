var atk = AT_FTILT;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 7);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 14);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 60);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -15);
set_hitbox_value(atk, hit, HG_WIDTH, 90);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_ANGLE, 100);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 85);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -50);
set_hitbox_value(atk, hit, HG_WIDTH, 50);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_ANGLE, 100);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 55);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_WIDTH, 80);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);  
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 7);
set_hitbox_value(atk, hit, HG_ANGLE, 110);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(atk, hit);