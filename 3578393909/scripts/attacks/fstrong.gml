var atk = AT_FSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_pom_fair"));

win_num++; //charge window
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);

win_num++; //windup 2 1
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

win_num++; //windup 2 2
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_01"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 1);


win_num++; //attack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_01"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 8);

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, win_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 5);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 88);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hit_num, HG_WIDTH, 64);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hit_num, HG_ANGLE, 80);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hit_num, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(atk, hit_num, HG_SDI_MULTIPLIER, 0.1);
//set_hitbox_value(atk, hit_num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 5);
set_hitbox_value(atk, hit_num, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 88);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hit_num, HG_WIDTH, 64);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hit_num, HG_ANGLE, 80);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hit_num, HG_EXTRA_HITPAUSE, 7);
//set_hitbox_value(atk, hit_num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hit_num, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, hit_num);
set_hitbox_value(atk, hit_num, HG_WINDOW, 5);
set_hitbox_value(atk, hit_num, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(atk, hit_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 88);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hit_num, HG_WIDTH, 70);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 74);
set_hitbox_value(atk, hit_num, HG_SHAPE, 2);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hit_num, HG_ANGLE, 45);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hit_num, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hit_num);