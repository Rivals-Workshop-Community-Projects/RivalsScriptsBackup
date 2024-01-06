// uspecial.gml

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
    

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_USPECIAL, 6);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, .2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_SLUDGE_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 49);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, .2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_SLUDGE_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_SDI_MULTIPLIER, .2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_SLUDGE_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_SLUDGE_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 140);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_SLUDGE_EFFECT, 30);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 290);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, vfx_sludge_small);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_USPECIAL, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 48);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_USPECIAL, 7, HG_SLUDGE_EFFECT, 22);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 48);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_USPECIAL, 8, HG_SLUDGE_EFFECT, 22);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value( AT_USPECIAL, 1, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value( AT_USPECIAL, 2, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value( AT_USPECIAL, 3, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value( AT_USPECIAL, 4, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value( AT_USPECIAL, 5, HG_VISUAL_EFFECT, vfx_sludge_large_2 );
set_hitbox_value( AT_USPECIAL, 6, HG_VISUAL_EFFECT, vfx_sludge_small );
set_hitbox_value( AT_USPECIAL, 7, HG_VISUAL_EFFECT, vfx_sludge_smaller );
set_hitbox_value( AT_USPECIAL, 8, HG_VISUAL_EFFECT, vfx_sludge_smaller );

if(has_rune("A")){
    set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_USPECIAL, 7, HG_EXTENDED_PARRY_STUN, false);
    set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_USPECIAL, 8, HG_EXTENDED_PARRY_STUN, false);
}

if(has_rune("B")){
    set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 120);
    set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 120);
    set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
}

if(has_rune("G")){
    set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 120);
    set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_HSPEED, 9);
    set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 10);
    set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .9);
    set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 361);
    
    set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 120);
    set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_HSPEED, -9);
    set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 10);
    set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 361);
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_attack // Version 0
    // make_attack(_attack_name, (value_name, value)... )
    // Sets attack values for the given attack.
    // e.g. make_attack(AT_BAIR,
    //     AG_CATEGORY, 1,
    //     AG_SPRITE, sprite_get("bair")
    // )
    var _attack_name = argument[0]
    for(var i=1; i<=argument_count-1; i+=2) {
        set_attack_value(
            _attack_name, argument[i], argument[i+1]
        )
    }

#define make_window // Version 0
    // make_window(_attack_name, _index, (value_name, value)... )
    // Sets window values for the given window.
    // e.g.make_window(AT_BAIR, 1,
    //         AG_WINDOW_TYPE, 1,
    //         AG_WINDOW_LENGTH, 6
    //     )
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_window_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }

#define make_hitbox // Version 0
    // make_hitbox(_attack_name, _index, (value_name, value)... )
    // Sets hitbox values for the given hitbox.
    // e.g. make_hitbox(AT_BAIR, 1,
    //         HG_PARENT_HITBOX, 1,
    //         HG_HITBOX_TYPE, 1
    //     );
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_hitbox_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion