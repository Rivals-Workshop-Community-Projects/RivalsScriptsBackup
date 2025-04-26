atk = AT_USPECIAL;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 3);

window_num++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num ++; //attack 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -6);

window_num ++; //attack 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 3);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -20);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, -1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 10);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 60);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
//set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, );
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

// sweetspots
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 86);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 28);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

//Fuck ass hit at the start
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 54);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -10);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 37);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 30);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 13);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y,-18);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));





set_num_hitboxes(atk, hitbox_num);