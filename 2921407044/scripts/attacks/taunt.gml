set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
//set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
//set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, -1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("taunt_hurt"));

//Window 1 Frames 0 - 1 Before Eject Shells
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("shell_eject"));
//set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 19);

////Window 2 Frames 2 Eject Shells
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Window 3 Frames 3 - 5 Prep Load
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Window 4 - Frame 6 Load Shell
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//Window 5 - Frame 7 - 8 - Return to idle
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//Hitbox Section ----------------------------------------
set_num_hitboxes(AT_TAUNT, 2); //Set two hitboxs, one for each shell

//Hitbox 1 - Window 2- Shell 1 -----------------------------------------------
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2); // Sets to a projectile
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2); // Window the attack Spawns from
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 120); // Hitbox Lifetime in Frames
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -15); // The x position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -60); // The y position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 14); //The width of the hitbox, in pixels.
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 8); //The width of the hitbox, in pixels.
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 0); // Priority score for hitbox.
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0); // Damage dealt by hitbox 
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("shell")); // Call the sprite without "_strip"
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, sprite_get("shell")); // This will overlay hit box to make precise.
//set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .5); // How fast it loops through the animation.
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 1);

//Shell 2
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2); // Sets to a projectile
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2); // Window the attack Spawns from
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 120); // Hitbox Lifetime in Frames
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -25); // The x position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -60); // The y position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 14); //The width of the hitbox, in pixels.
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 8); //The width of the hitbox, in pixels.
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 0); // Priority score for hitbox.
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0); // Damage dealt by hitbox 0 to 10.
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("shell")); // Call the sprite without "_strip"
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, sprite_get("shell")); // This will overlay hit box to make precise.
//set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, .5); // How fast it loops through the animation.
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR , 2);
set_hitbox_value(AT_TAUNT, 2, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, -1); // How much the hit box moves, should be Slow or zero for this attack.
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_VSPEED, 1);