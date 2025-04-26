atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 8);

window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));

window_num ++; //attack itself
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

// sourspots
hitbox_num = 1; //frame 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -68);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 68);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

hitbox_num++; // frame 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -20);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// sweetspots
hitbox_num++; //frame 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 86);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 36);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -112);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 74);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -96);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num++; //frame 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 44);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -14);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);;
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 28);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

set_num_hitboxes(atk, hitbox_num);