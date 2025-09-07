var atk = AT_JAB;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 3);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 2);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_CANCEL_FRAME, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 5);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_CANCEL_FRAME, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 6);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
set_window_value(atk, win, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 5);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, win, AG_WINDOW_HSPEED, 4);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 2);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 35);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);    
set_hitbox_value(atk, hit, HG_PRIORITY, 2);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 361);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit, HG_FORCE_FLINCH, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 5);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_X, 35);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);   
set_hitbox_value(atk, hit, HG_PRIORITY, 2);
set_hitbox_value(atk, hit, HG_DAMAGE, 4);
set_hitbox_value(atk, hit, HG_ANGLE, 70);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 8);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_X, 35);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hit, HG_WIDTH, 60);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);   
set_hitbox_value(atk, hit, HG_PRIORITY, 2);
set_hitbox_value(atk, hit, HG_DAMAGE, 6);
set_hitbox_value(atk, hit, HG_ANGLE, 60);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_num_hitboxes(atk, hit);