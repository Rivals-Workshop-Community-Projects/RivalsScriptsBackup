atk = AT_DTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4)

window_num ++; //attack1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);


window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, 60);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -15);
set_hitbox_value(atk, 1, HG_WIDTH, 70);
set_hitbox_value(atk, 1, HG_HEIGHT, 30);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 75);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("sfx_hit1"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -39);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -14);
set_hitbox_value(atk, 2, HG_WIDTH, 108);
set_hitbox_value(atk, 2, HG_HEIGHT, 30);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 8);
set_hitbox_value(atk, 2, HG_ANGLE, 90);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("sfx_hit1"));
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 5);



set_num_hitboxes(atk, 2);