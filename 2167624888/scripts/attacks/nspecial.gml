set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("rednspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("rednspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("arrow_pull"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1); // blue arrow (red in set_attack)
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -34);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 10);
//set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.35);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, nspec_hitenemy_red);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2); // blue explosion
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3); // red explosion
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 4); // red explosion
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 189);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 189);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, .8);
//set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 3);

//set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 30);

set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 5); // red/blue big explosion
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 189);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 189);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .8);
//set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 6); // BLUE EXPLOSION
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 189);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 189);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, .8);
//set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 15);
