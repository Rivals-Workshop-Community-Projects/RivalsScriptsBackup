var atk = AT_DTILT;

// set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, false);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 7);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 1);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, sound_get("dtilt"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 6);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 15);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 14);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 30);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -10);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 40);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_ANGLE, 55);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 6);
set_hitbox_value(atk, hit, HG_HITBOX_X, 30);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -10);
set_hitbox_value(atk, hit, HG_WIDTH, 50);
set_hitbox_value(atk, hit, HG_HEIGHT, 35);  
set_hitbox_value(atk, hit, HG_PRIORITY, 5);
set_hitbox_value(atk, hit, HG_DAMAGE, 5);
set_hitbox_value(atk, hit, HG_ANGLE, 75);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(atk, hit);