atk = AT_USTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 1);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_sword_deactivate"));

window_num ++; //shoot up windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

window_num ++; //attack 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);

window_num ++; //attack 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15); //set in attack_update
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //sourspots //hit 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

hitbox_num ++; //hit 2 //frame 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -90);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 130);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 56);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

hitbox_num ++; //sweetspots //hit 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -138);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 42);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 30);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num ++; //hit 2 //frame 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -78);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -100);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 36);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 54);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -130);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 136);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 74);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -100);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 36);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 54);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num ++; //frame 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -79);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 30);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 120);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 74);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 30);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

set_num_hitboxes(atk, hitbox_num);