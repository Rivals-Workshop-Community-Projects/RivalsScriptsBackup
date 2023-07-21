//Jab and Nair are usually the same move, but are separated due to engine limitations.
//You can copy and paste nair and repace all AT_EXTRA_1 with AT_EXTRA_1

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 10);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//startup window
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_oly_nspecial_shoot"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 8);

//active window
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 0);

//recovery window made sperate to handle animation timing
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 0);

//recovery window, does not have whifflag because it is a projectile
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 0);



set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);  //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2); //setting this to 2 makes it a projectile
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .35);
//set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, .05);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, shatter);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj")); //this sets the projectile sprite
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("uspecial_proj")); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 29); //make sure you give projectiles this line, it stops the destroy effect from appearing. Replace 1 with a variable for a hit effect if you'd rather use a hit effect.
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_PARTICLE_NUM, 1); 
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);


set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 2);  //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2); //setting this to 2 makes it a projectile
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .35);
//set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, .05);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, shatter);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj")); //this sets the projectile sprite
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, sprite_get("uspecial_proj")); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 11);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DESTROY_EFFECT, 29); //make sure you give projectiles this line, it stops the destroy effect from appearing. Replace 1 with a variable for a hit effect if you'd rather use a hit effect.
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_PARTICLE_NUM, 1); 
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);


set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 3);  //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2); //setting this to 2 makes it a projectile
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, .35);
//set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, .05);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, shatter);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj")); //this sets the projectile sprite
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, sprite_get("uspecial_proj")); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_DESTROY_EFFECT, 29); //make sure you give projectiles this line, it stops the destroy effect from appearing. Replace 1 with a variable for a hit effect if you'd rather use a hit effect.
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_PARTICLE_NUM, 1); 
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, -1);