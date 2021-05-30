set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_small"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_pop"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG,0);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 94);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 110);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, thundara1);
//set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_whip3"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 53);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 49);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, thundara1);
//set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_whip3"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 94);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 110);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, thundara2);
//set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 53);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 49);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, thundara2);
//set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -53);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 22);
//set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_absa_whip2"));
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 55);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -53);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, thundara1);
//set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_LOCKOUT, 5);