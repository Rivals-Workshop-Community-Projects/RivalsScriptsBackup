set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//hold charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);


//normal
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);


//uppish
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);


//downish
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);


//end
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_NSPECIAL, 1);

var i = 1;

// scrap bomb explosion
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, splsh);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_swish_medium"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1);
i++;

// scrap bomb basic hitbox
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 12);
set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 12);
set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, splsh);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1);
i++;

// bag bomb explosion
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, splatter);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_springgo"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PLASMA_SAFE, 1);
i++;

// bag bomb basic hitbox
set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 999);
set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, splsh);
set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, i, HG_EXTENDED_PARRY_STUN, 1)
