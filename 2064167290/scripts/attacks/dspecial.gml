set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_start"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_start_hurt"));

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 1);


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);



set_num_hitboxes(AT_DSPECIAL, 0);


// black
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);



// blue
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_swish_weak"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);


// GREEN
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 110);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.6);

// yellow
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("slash"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);

// ORANGE
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 5, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.7);


// RED
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 6, HG_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.5);

// PURPLE
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW,100 )
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME,2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 38);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE,7);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 7, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 7, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.7);