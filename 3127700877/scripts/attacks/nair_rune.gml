// nair.gml

set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sfx_sludge_spin"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("sfx_sludge_spin"));
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("sfx_sludge_spin"));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(AT_NSPECIAL_AIR, 3);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 95);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 95);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 95);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SLUDGE_EFFECT, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_SLUDGE_EFFECT, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, vfx_sludge_smallest );
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT, vfx_sludge_smaller );


set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, -50);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, -100);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_HSPEED, -8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_GROUND_FRICTION, .25);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_AIR_FRICTION, .25);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("fx_sludge_smallest"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_VISUAL_EFFECT, vfx_sludge_small );
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_SLUDGE_EFFECT, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_X, -50);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_Y, -100);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_SLUDGE_EFFECT, 10);

set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_X, -50);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_Y, -100);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_SLUDGE_EFFECT, 10);

set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_SPRITE, sprite_get("fair_proj_old"));
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_VSPEED, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_GRAVITY, -.25);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_GROUND_FRICTION, .25);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_AIR_FRICTION, .25);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("fx_sludge_smallest"));
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_VISUAL_EFFECT, vfx_sludge_small );
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_SLUDGE_EFFECT, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_SLUDGE_EFFECT, 10);

set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_LIFETIME, 34);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_SLUDGE_EFFECT, 10);

if(has_rune("A")){
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_EXTENDED_PARRY_STUN, false);
    
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_EXTENDED_PARRY_STUN, false);
}

if(has_rune("C")){
    set_num_hitboxes(AT_NSPECIAL_AIR, 9);
}

if(has_rune("G")){
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_HSPEED, -10);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_VSPEED, -10);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .7);
    
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_HSPEED, 10);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PROJECTILE_VSPEED, 10);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_DAMAGE, 6);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, .7);
}