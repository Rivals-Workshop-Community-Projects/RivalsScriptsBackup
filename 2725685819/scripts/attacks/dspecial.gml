set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 3);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);

//grab window
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
// set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 3);
// set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -6);
// set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);


set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//cutscene
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);

//active
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);

//recovery
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);

//recovery pratfall
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_DSPECIAL, 9);
//grab hitbox
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, 19);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, vfx_slash);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("slicen"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, -45);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, 0.70);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_DSPECIAL, 9, HG_CHAOS_LEVEL, 1);
