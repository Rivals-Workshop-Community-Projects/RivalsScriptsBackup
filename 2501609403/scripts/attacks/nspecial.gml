set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Mouth Closed
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Mouth Opened
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_syl_fspecial_bite"));

//Item Thrown
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//Recovery
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_bite"));

//Recovery
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_bite"));

set_num_hitboxes(AT_NSPECIAL, 0);

//1000 Ton Weight (Projectile) (0) - The main hitbox only comes out when it lands on the ground
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 260);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

//1000 Ton Weight (Landed 2)
set_hitbox_value(AT_NSPECIAL, 24, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 24, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 24, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 24, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_HITBOX_Y, -7);
set_hitbox_value(AT_NSPECIAL, 24, HG_WIDTH, 263);
set_hitbox_value(AT_NSPECIAL, 24, HG_HEIGHT, 23);
set_hitbox_value(AT_NSPECIAL, 24, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 24, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 24, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 24, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 24, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 24, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 24, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 24, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 24, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


//1000 Ton Weight (Landed)
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 131);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 27);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Jackpot Weight (0) - Merges the dumbell to make it more viable in the air
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 20, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 20, HG_ANGLE, 260);
set_hitbox_value(AT_NSPECIAL, 20, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 20, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 20, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 20, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_SPRITE, sprite_get("nspecial_jack_proj1"));
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_MASK, sprite_get("nspecial_jack_proj1"));
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Jackpot Weight (Landed)
set_hitbox_value(AT_NSPECIAL, 21, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 21, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 21, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 21, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 21, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 21, HG_WIDTH, 131);
set_hitbox_value(AT_NSPECIAL, 21, HG_HEIGHT, 27);
set_hitbox_value(AT_NSPECIAL, 21, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 21, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 21, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 21, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 21, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 21, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 21, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 21, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 21, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 21, HG_HIT_SFX, sound_get("bhit_medium_3"));
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 21, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Mini Bugingi (projectile) (1)
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);

//Mini Bugingi (Landed) (1)
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, fx_smallhit2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2.2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("nspecial_proj2.2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, .6);    
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Jack BEEG Bugingi (projectile) (0)
set_hitbox_value(AT_NSPECIAL, 22, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 22, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 22, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 22, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 22, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 22, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 22, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 22, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 22, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 22, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 22, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 22, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 22, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 22, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_NSPECIAL, 22, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_SPRITE, sprite_get("nspecial_jack_proj2"));
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_MASK, sprite_get("nspecial_jack_proj2"));
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_AIR_FRICTION, .5);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 22, HG_PROJECTILE_IS_TRANSCENDENT, false);

//Jack BEEEG Bugingi (Landed) (1)
set_hitbox_value(AT_NSPECIAL, 23, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 23, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 23, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 23, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 23, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 23, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 23, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 23, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 23, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 23, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 23, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 23, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 23, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 23, HG_VISUAL_EFFECT, fx_smallhit2);
set_hitbox_value(AT_NSPECIAL, 23, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_SPRITE, sprite_get("nspecial_jack_proj2.2"));
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_MASK, sprite_get("nspecial_jack_proj2.2"));
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_GRAVITY, .6);    
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 23, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Wrench (2)
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, fx_wrench);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, .1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, fx_wrench);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);

//Dumbell (3)
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 260);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, fx_dumbell);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj4"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("nspecial_proj4"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);

//Rage Ball (4)
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj5"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("nspecial_proj5"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 7.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);

//Bomb (5)
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj6"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_proj6_mask"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_FRICTION, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Bomb Hitbox
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 18);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Ball? (2)
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT_Y_OFFSET, -0);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj7"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, sprite_get("nspecial_proj7"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_AIR_FRICTION, .1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, false);