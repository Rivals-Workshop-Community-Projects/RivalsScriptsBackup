atk = AT_UTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 3;
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, 24);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 1, HG_WIDTH, 50);
set_hitbox_value(atk, 1, HG_HEIGHT, 130);
set_hitbox_value(atk, 1, HG_PRIORITY, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, fx_pow_hit[0]);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



hitbox_num ++;
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, 14);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -135);
set_hitbox_value(atk, 2, HG_WIDTH, 15);
set_hitbox_value(atk, 2, HG_HEIGHT, 15);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 10);
set_hitbox_value(atk, 2, HG_ANGLE, 90);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, fx_pow_sparks);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("sfx_hit4"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

hitbox_num ++;

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_LIFETIME, 2);
set_hitbox_value(atk, 3, HG_HITBOX_X, 24);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -10);
set_hitbox_value(atk, 3, HG_WIDTH, 60);
set_hitbox_value(atk, 3, HG_HEIGHT, 25);
set_hitbox_value(atk, 3, HG_PRIORITY, 1);
set_hitbox_value(atk, 3, HG_DAMAGE, 7);
set_hitbox_value(atk, 3, HG_ANGLE, 90);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, fx_pow_hit[0]);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_num_hitboxes(atk, hitbox_num);