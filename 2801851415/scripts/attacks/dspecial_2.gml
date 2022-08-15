//nspecial and Nair are usually the same move, but are separated due to engine limitations.
//You can copy and paste nair and repace all AT_DSPECIAL_2 with AT_DSPECIAL_2

set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecialthrow"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecialthrow"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecialthrow_hurt"));

//startup window
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//active window
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ice_uspecial_jump"));

//recovery window made sperate to handle animation timing
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2); //setting this to 2 makes it a projectile
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 30);//32
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -40);//32
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial2_proj")); //this sets the projectile sprite
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("dspecial2_proj")); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial2_proj_mask")); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.3);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, shatter);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, shatter);
