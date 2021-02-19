set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 8);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

//charge
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//whiff
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

//grab
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//back throw
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_troupple_swipe"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 22);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 23);

//forward throw
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 28);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 34);

//up throw
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX, sound_get("tilt_charge"));
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 37);

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_SFX, sound_get("tilt_attack"));
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 41);

//down throw
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 47);

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 55);

set_num_hitboxes(AT_FSPECIAL, 5);

set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_tech"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 140);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_tow_anchor_start"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 290);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 5);