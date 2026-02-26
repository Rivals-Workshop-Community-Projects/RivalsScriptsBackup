set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("pizzaface_nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("pizzaface_nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("pizzaface_nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, true);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("pizzafacehaywire"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0.2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("projspit"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 600 * (has_rune("I") + 1));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -25 * (has_rune("A") + 1));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40 * (has_rune("A") + 1));
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40 * (has_rune("A") + 1));
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3.543);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.75);
if (has_rune("A")){
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_BIGprojectile"));
} else {
    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projectile"));
}
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, cogDies);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.2 - (has_rune("I") * 0.1));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);