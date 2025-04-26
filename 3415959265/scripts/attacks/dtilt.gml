atk = AT_DTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);


window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -10);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 72);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 25);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_num_hitboxes(atk, hitbox_num);