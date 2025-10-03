var atk = AT_BAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, true);
set_attack_value(atk, AG_LANDING_LAG, 10);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 19);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -45);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 55);    
set_hitbox_value(atk, hit, HG_PRIORITY, 5);
set_hitbox_value(atk, hit, HG_DAMAGE, 2);
set_hitbox_value(atk, hit, HG_ANGLE, 145);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hit, HG_EXTRA_HITPAUSE, -1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HIT_SFX, sound_get("bair1"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -50);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -50);
set_hitbox_value(atk, hit, HG_WIDTH, 80);
set_hitbox_value(atk, hit, HG_HEIGHT, 90);    
set_hitbox_value(atk, hit, HG_PRIORITY, 5);
set_hitbox_value(atk, hit, HG_DAMAGE, 2);
set_hitbox_value(atk, hit, HG_ANGLE, 145);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hit, HG_EXTRA_HITPAUSE, -1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HIT_SFX, sound_get("bair2"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, -50);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hit, HG_WIDTH, 80);
set_hitbox_value(atk, hit, HG_HEIGHT, 100);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 135);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit, HG_HIT_SFX, sound_get("bair3"));

set_num_hitboxes(atk, hit);