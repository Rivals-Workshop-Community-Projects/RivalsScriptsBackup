set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("aim_torso_fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);

// Ready
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_w_pistol_ready"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

// Aim
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Fire
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Chamber
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_w_pistol_chamber"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);

// Reload - Unload Mag
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_unload"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);

// Reload - Grab New Mag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_pouch"));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);

// Reload - Load Mag
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, sound_get("sfx_w_pistol_reload_mag_load"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

// Lower
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_w_pistol_lower"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 6);


//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_FSPECIAL, 6);


//-----------------------------------------------------------
// .45 Round
//-----------------------------------------------------------
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50); //50
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3); //6
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0); //.1
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, noone);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
//set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_THROWS_ROCK, 0);

set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_bullet"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, false);


//-----------------------------------------------------------
// 9mm Anesthetic
//-----------------------------------------------------------
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_hit_tranq_ko_lyr"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, noone);       // Doesn't play when there's no base knockback.
//set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 2); // Edit this
//set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 90); // Edit this
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 0); //0
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_tranq"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, false);


//-----------------------------------------------------------
// 5.56 Round
//-----------------------------------------------------------
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 0); //50
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, noone);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, -1);
//set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_THROWS_ROCK, 0);


set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("proj_bullet"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, false);


//-----------------------------------------------------------
// 7.62 Anesthetic
//-----------------------------------------------------------
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("sfx_hit_tranq_ko_lyr"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, noone);       // Doesn't play when there's no base knockback.
//set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 2); // Edit this
//set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 90); // Edit this
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 0); //0
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("proj_tranq"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, false);



//===========================================================
// LIFE DEPLETED EFFECT HITBOXES
//===========================================================

//-----------------------------------------------------------
// .45 Round (Lethal)
//-----------------------------------------------------------
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 50); //60
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 3); //6
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.4); //.1
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, noone);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_THROWS_ROCK, 0);

set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
//set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, false);

//-----------------------------------------------------------
// 5.56 Round (Lethal)
//-----------------------------------------------------------
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 50); //50
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 6); //5
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5); //0.3
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, noone);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1.1);
//set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL, 6, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_THROWS_ROCK, 0);
//set_hitbox_value(AT_FSPECIAL, 6, HG_EFFECT, 19); // Ignore opponents in hitstun, moving faster than 6px per frame. Used to prevent stun lock.


set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
//set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, false);