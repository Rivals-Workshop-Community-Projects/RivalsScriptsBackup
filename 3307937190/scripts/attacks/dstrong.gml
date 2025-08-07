atk = AT_DSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_ustrong"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 9);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_ori_charged_flame_release"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //surround
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0); //because of the looping, window_timer 0 won't spawn hitboxes
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -23);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 120);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_ink1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3); //because of the looping, window_timer 0 won't spawn hitboxes
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -23);

hitbox_num ++; //KILL!
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 6); //because of the looping, window_timer 0 won't spawn hitboxes
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 7);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -29);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 137);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_ink2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

set_num_hitboxes(atk, hitbox_num);