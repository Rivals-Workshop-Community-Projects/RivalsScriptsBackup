set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, has_rune("I")?4:8);//11
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -3);
//set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);//14
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4)

//set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1); // sweetspot
//set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
//set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 4);
//set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -118);
//set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 8);
//set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 8);
//set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
//set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
//set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
//set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 20);
//set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 1.0);
//set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 305);
//set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
/*
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1); // sweet-ish
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 26);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, beegstar_effect);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);
*/
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1); // normal
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 54);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, bigstar_effect);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 6);
/*
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1); // sour
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -22);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 78);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, smallstar_effect);
*/