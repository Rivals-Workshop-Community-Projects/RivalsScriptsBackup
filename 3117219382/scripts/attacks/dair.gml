atk = AT_DAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 7);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 11);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

// window_num ++; //attack
// set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
// set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 19);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //sweetspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 5);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 45);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 45);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fstrong_explosion_hfx);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

hitbox_num ++; //sourspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 10);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, -90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, dstrong_explosion_hfx);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_num_hitboxes(atk, hitbox_num);