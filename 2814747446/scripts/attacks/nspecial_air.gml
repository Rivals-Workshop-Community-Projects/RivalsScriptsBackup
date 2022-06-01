set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecialair"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 12);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecialair_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -6);
// set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);


set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 14);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);


set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
// set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter")); //change this to a good audio landing

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 20);

set_num_hitboxes(AT_NSPECIAL_AIR, 4);

//Sweetspot
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 120);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);


//Sourspot
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 120);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 6);

//Arms
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 6);

//Slide
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, 70);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE, 78);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 6);
