var atk = AT_UTILT;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, true);
set_attack_value(atk, AG_LANDING_LAG, 8);
// set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, true);
set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 6);

// win++;
// set_window_value(atk, win, AG_WINDOW_TYPE, 1);
// set_window_value(atk, win, AG_WINDOW_LENGTH, 2);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);
// set_window_value(atk, win, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_VSPEED, -8);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 1.5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, has_rune("C")? 15:20);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 5);
// set_window_value(atk, win, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 20);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -50);
set_hitbox_value(atk, hit, HG_WIDTH, 40);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);    
set_hitbox_value(atk, hit, HG_PRIORITY, 5);
set_hitbox_value(atk, hit, HG_DAMAGE, 9);
set_hitbox_value(atk, hit, HG_ANGLE, 85);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 6);
set_hitbox_value(atk, hit, HG_HITBOX_X, 20);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hit, HG_WIDTH, 40);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);    
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 6);
set_hitbox_value(atk, hit, HG_ANGLE, 85);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_num_hitboxes(atk, hit);