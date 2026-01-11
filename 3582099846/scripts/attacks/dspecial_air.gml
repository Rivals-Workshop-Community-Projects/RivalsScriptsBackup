//DSpecial - Shoot (Bubble)

set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Tongue Latch
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 18);

//Pull In
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 18);

//Chomp
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 29);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_swallow"));
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 11);

//Bubble Chew
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 36); 

//Bubble Cancel
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 55);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX_FRAME, 16);

//Bubble Shoot
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 64);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_SFX_FRAME, 11);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

//Patty Bubble
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_pattybubble"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 0);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);


//Cruise Bubble
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 88);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_bubblepop"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_cruisebubble"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 0);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
