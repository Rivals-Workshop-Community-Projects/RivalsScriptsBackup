atk = AT_USPECIAL;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME,  9);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //first swing
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_superjump_sein"));

window_num ++; //attack start
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -11);

window_num ++; //attack movement
set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -33);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 49);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_small"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_small"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 31);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 66);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 73);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_med"));

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 34);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 72);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 91);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_big);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("newsfx_slash_big"));



set_num_hitboxes(atk, hitbox_num);