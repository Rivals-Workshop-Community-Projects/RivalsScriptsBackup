set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));


// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

// charge loop
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);

// post-charge
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_blaster"));

// endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL, 2);
//Default
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, .1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
//set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20 );
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_blaster_hit"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, nspecial_proj);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, nspecial_proj);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_ABS_ZAP_SMALL);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0 );
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, HFX_ABS_ZAP_BIG );
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_electro_hit_heavy"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, nspecial_proj_big);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, nspecial_proj_big);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0 );
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, HFX_ABS_ZAP_BIG);

