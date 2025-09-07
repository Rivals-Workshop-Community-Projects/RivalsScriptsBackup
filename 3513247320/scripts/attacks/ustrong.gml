var atk = AT_USTRONG;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

var win = 0;

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(atk, win, AG_WINDOW_HAS_SFX, true);
// set_window_value(atk, win, AG_WINDOW_SFX, sound_get("ustrong"));
// set_window_value(atk, win, AG_WINDOW_SFX_FRAME, 1);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 3);

win++;
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 21);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win, AG_WINDOW_HAS_WHIFFLAG, true);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 2);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hit, HG_WIDTH, 45);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);    
set_hitbox_value(atk, hit, HG_PRIORITY, 4);
set_hitbox_value(atk, hit, HG_DAMAGE, 1);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hit, HG_TECHABLE, 3);
set_hitbox_value(atk, hit, HG_ANGLE, 75);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 20);
set_hitbox_value(atk, hit, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_dattack"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_WIDTH, 50);
set_hitbox_value(atk, hit, HG_HEIGHT, 50);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 1);
set_hitbox_value(atk, hit, HG_ANGLE, 90);
set_hitbox_value(atk, hit, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 20);
set_hitbox_value(atk, hit, HG_TECHABLE, 3);
set_hitbox_value(atk, hit, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_dattack"));

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_PRIORITY, 6);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, hit, HG_WINDOW, 3);
set_hitbox_value(atk, hit, HG_LIFETIME, 3);
set_hitbox_value(atk, hit, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hit, HG_WIDTH, 70);
set_hitbox_value(atk, hit, HG_HEIGHT, 70);    
set_hitbox_value(atk, hit, HG_PRIORITY, 6);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_ANGLE, 90);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ABS_SWEET_BIG);
set_hitbox_value(atk, hit, HG_TECHABLE, 0);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_num_hitboxes(atk, hit);