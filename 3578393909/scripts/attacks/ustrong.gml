var atk = AT_USTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

win_num++; //charge window
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);

win_num++; //startup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 3);

win_num++; //gun swing
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);

win_num++; //aim
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_02"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 4);

win_num++; //fire
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 9);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1; //swing
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 4);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hit_num, HG_WIDTH, 40);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 68);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 105);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 12);;
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hit_num, HG_SDI_MULTIPLIER, 0.1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hit_num, HG_WINDOW, 4);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 26);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hit_num, HG_WIDTH, 54);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 54);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 105);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 12);;
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hit_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hit_num, HG_SDI_MULTIPLIER, 0.1);

hit_num++; //shot
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hit_num, HG_WINDOW, 6);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -124);
set_hitbox_value(atk, hit_num, HG_WIDTH, 64);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hit_num, HG_ANGLE, 90);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hit_num);