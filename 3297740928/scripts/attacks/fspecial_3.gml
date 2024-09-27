set_attack_value(AT_FSPECIAL_3, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_3, AG_SPRITE, sprite_get("fspecial3"));
set_attack_value(AT_FSPECIAL_3, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_3, AG_AIR_SPRITE, sprite_get("fspecial3"));
set_attack_value(AT_FSPECIAL_3, AG_HURTBOX_SPRITE, sprite_get("fspecial3_hurt"));

//startup
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 6);
//set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_SFX, sound_get("sfx_stealthburst"));
//set_window_value(AT_FSPECIAL_3, 1, AG_WINDOW_SFX_FRAME, 12);

//missile attack 1
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag 1
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//missile attack 2
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag 3
set_window_value(AT_FSPECIAL_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_3, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_3, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_3, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FSPECIAL_3, 2);

//BIG rocket
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_LIFETIME, 70);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_DAMAGE, 9); 
set_hitbox_value(AT_FSPECIAL_3, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_VISUAL_EFFECT, 164);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_1"));
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_SPRITE, sprite_get("missilesuper"));
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 139);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);

//small rocket
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_WIDTH, 15);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_DAMAGE, 5); 
set_hitbox_value(AT_FSPECIAL_3, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_VISUAL_EFFECT, 139);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_SPRITE, sprite_get("missilehoming"));
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_DESTROY_EFFECT, 139);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);

