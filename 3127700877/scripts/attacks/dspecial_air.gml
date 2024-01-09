// dspecial_air.gml

set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air_grounded"));
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 0);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

//projectile

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 99);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_airproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, vfx_sludge_smallest);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, vfx_sludge_smallest )
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SLUDGE_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_PARTICLE_NUM, 1);

if(has_rune("A")){
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, false);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, false);
}

if(has_rune("G")){
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 2);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .9);
}
