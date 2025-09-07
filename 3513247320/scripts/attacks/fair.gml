var atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, true);
set_attack_value(atk, AG_LANDING_LAG, 8);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, sound_get("fair"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 7);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 30);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -70);
set_hitbox_value(atk, hit, HG_WIDTH, 80);
set_hitbox_value(atk, hit, HG_HEIGHT, 85);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 7);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ZET_FIRE_BIG);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
if has_rune("E") set_hitbox_value(atk, hit, HG_EFFECT, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 40);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 90);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 7);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ZET_FIRE_BIG);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
if has_rune("E") set_hitbox_value(atk, hit, HG_EFFECT, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 15);
set_hitbox_value(atk, hit, HG_HITBOX_Y, 10);
set_hitbox_value(atk, hit, HG_WIDTH, 45);
set_hitbox_value(atk, hit, HG_HEIGHT, 35);    
set_hitbox_value(atk, hit, HG_PRIORITY, 5);
set_hitbox_value(atk, hit, HG_DAMAGE, 7);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ZET_FIRE_BIG);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_hit"));
if has_rune("E") set_hitbox_value(atk, hit, HG_EFFECT, 1);

set_num_hitboxes(atk, hit);