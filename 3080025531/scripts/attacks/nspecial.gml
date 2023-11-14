set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);

set_num_hitboxes(AT_NSPECIAL, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("mfx_star"));
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 9); // polite
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, spr_proj_light);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, spr_proj_light);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.3);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 1); // fire
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, spr_proj_fire);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, spr_proj_fire);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);


//Lightning

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 75);
//set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 1); // polite
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, spr_proj_lightning1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


//set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 9);
//set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 20);
//set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 90);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 60);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
//set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
//set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 75);
////set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 1); // polite
//set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
//set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 20);
//set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 21);
//set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, spr_proj_lightning1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, spr_proj_lightning1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 75);
//set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 1); // polite
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, spr_proj_lightning2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);



// Copy of 1
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("mfx_star"));
set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 9); // polite
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, spr_proj_light);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, spr_proj_light);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0.3);

// BEEG Fire Pillar (Amber's idea not mine, I claim no responsibility -Tom)
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 6, HG_EFFECT, 1); // fire
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, spr_proj_pillar);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, spr_proj_pillar);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, vfx_pillar_fade);
//set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0.3);