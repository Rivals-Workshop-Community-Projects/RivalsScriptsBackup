set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("strong"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("strong_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, -12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);



set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);


set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, sound_get("Fstrong"));


set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 23);


set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, sound_get("Fstrong"));


set_num_hitboxes(AT_NSPECIAL, 4);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -63);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -51);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 140);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 0.1);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, -8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -101);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 140);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_SDI_MULTIPLIER, 0.1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 78);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -72);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 92);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4 );
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, -63);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -51);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 94);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 140);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, -8);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -101);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 54);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 140);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 78);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -72);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 92);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 110);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 5 );
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 42);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 34);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 11, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_energyhit_medium"));
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITSTUN_MULTIPLIER, 1);
