set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);

//an
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
/*set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);*/ //done in attack_update instead

//at1
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/1.5);
//at2
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/1.5);
//at3 (end)
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/1.5);

//hold
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//rec
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 5);

var dthp = 3

//1.main
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 17);//11
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -21);//19
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 71);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 42);//38
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 10);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DTILT, 1, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, dthp);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//1.far
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 51);//45
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -21);//19
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 44);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 39);//35
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, dthp);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//2.main
//set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 71);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 42);//38
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 20);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, dthp);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//2.far
set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 51);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 2);

//3
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 101);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 57);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 45);//361
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 8);//6
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 0.8);//0.4
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 9);//6
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, 0.9);//0.5
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 5, HG_DRIFT_MULTIPLIER, 1);






















