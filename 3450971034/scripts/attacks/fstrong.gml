atk = AT_FSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial_plantgrowth"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);


window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //slap
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 83);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 56);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigleaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 4);



hitbox_num ++; //sweetspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 74);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -18);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 26);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 15);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 4);

hitbox_num ++; //sweetspot late hit
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 100);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -44);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 26);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 15);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 4);


hitbox_num ++; // late hit 
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 52);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -46);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 107);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 63);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigleaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 4);


set_num_hitboxes(atk, hitbox_num);