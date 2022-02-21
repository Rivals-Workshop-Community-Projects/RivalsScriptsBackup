set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4); //fine you get your 4th window stupid code
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
// set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_STRONG_CHARGE_WINDOW, 2);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 4);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.4); // uhh
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter")); // pick a landing sound
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 2);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 4);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 8);

// test: pillar creation window
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

// test: endlag window
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_FSPECIAL, 1);

// STOMP THE GROUND
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 60); // test with platforms etc
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32); // test with platforms etc
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 64);
// set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1); //-1

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("ustrong_destroyed"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("lava_platform_mask"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
// set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL,2, HG_LIFETIME, 3);
// set_hitbox_value(AT_FSPECIAL,2, HG_HITBOX_X, 32);
// set_hitbox_value(AT_FSPECIAL,2, HG_HITBOX_Y, -98);
set_hitbox_value(AT_FSPECIAL,2, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL,2, HG_HEIGHT, 16);
// set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
// set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 1);
// set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
