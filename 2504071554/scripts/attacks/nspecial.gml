set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_spawn"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);



set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_abyss_despawn"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 16);//12
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("wheel"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);


set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 85);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 0);


//multihit hitbox!
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);

//detection hitbox!
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 600);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);

//finisher hitbox!
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);//0.1
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_bird_downspecial_end"));
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);

