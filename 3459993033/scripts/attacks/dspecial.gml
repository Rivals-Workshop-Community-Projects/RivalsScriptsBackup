set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_MISC, "Toady is spawned on frame 24.");

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);


//startup twirl
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_delta_swipe2"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

//release
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

//active
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//endlag 1
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//evil laugh
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//endlag 2
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);



set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5)
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_toadie_grab_hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hfx_toadie_grab)
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Toady Grab");

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6000);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT,40);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8)
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 0)
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("shell"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, shell_break_vfx);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("shell_mask"));
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Koopa Shell");

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 6000);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT,40);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 2)
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 304)
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("bobomb"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GRAVITY,0.6);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("shell_mask"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("shell_mask"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, HFX_GEN_SPIN);
set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Bob-omb");


set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 150);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT,150);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 10)
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 143)
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Bob-omb Explosion");