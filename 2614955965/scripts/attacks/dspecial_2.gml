set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_DSPECIAL_2, 0);

//set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, false);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_SDI_MULTIPLIER, 1.9);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("combust"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("slashdash_coll"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, sound_get("slash2"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);