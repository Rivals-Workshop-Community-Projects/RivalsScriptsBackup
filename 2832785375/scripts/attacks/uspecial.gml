set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

//launch window
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_loop"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

//dig
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 5);

//dig ceiling
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 5);

//hide
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);


//launch
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 6);

//bite
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

//endlag
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_num_hitboxes(AT_USPECIAL, 7);

//multihits
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);

//landing
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);

//bite
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);

//burrow link hitbox
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 15);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 9);