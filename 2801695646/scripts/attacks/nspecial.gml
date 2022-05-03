set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);

//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 12);

// Ready
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Aim - Neutral
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Toss - Neutral
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Aim - Forward
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

// Toss - Forward
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// Aim - Up
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);

// Toss - Up
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);

// Aim - Back
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 1);

// Toss - Back
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 2);

// Aim - Down
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 1);

// Toss - Down
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 2);

// Exit
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 19);


//==============================================================================
// Hitboxes
//==============================================================================

set_num_hitboxes(AT_NSPECIAL, 10);

//-------------------------------------------
// Grenade Bounce - Light (Hitstun)
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3600);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_at_grab"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 19);                                // Does not hit opponents in hitstun when they're moving faster than 6 pixels per frame.
//set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1); // Set to 0?
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true); // Set to false?
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_THROWS_ROCK, 2);

//-------------------------------------------
// Grenade Bounce - Light (No Hitstun)
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3600);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 139 );
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_at_grab"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 1); // Set to 0?
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true); // Set to false?
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 2, HG_THROWS_ROCK, 2);

//-------------------------------------------
// Throwable KO ("DING!")
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3600);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("sfx_hit_mag_ko"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 19);                                // Does not hit opponents in hitstun when they're moving faster than 6 pixels per frame.
set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 1 );
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 1); // Set to 0?
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true); // Set to false?
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, false);
//set_hitbox_value(AT_NSPECIAL, 3, HG_THROWS_ROCK, 2);

//-------------------------------------------
// Frag Grenade Explosion (Inner)
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 139 );
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, noone); //TODO: Change this
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
//set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_THROWS_ROCK, 0); // TODO: Change to 1?

//-------------------------------------------
// Frag Grenade Explosion (Outer)
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 130);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 130);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 70);
//set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 1);
//set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 139 );
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, noone); //TODO: Change this
//set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 5, HG_THROWS_ROCK, 0); // TODO: Change to 1?

//-------------------------------------------
// Stun Grenade Explosion
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);                                  // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 90);
//set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 1);                          // Mollo's flashbangs supposedly just have 1 frame of hitpause. IDK if I'm skilled enough to replicate it's effects.
//set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 46);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 0 );
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, noone); //TODO: Change this
//set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_NSPECIAL, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EFFECT, 13);                                // Mollo flashbang stun
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 6, HG_THROWS_ROCK, 0); // TODO: Change to 1?

//-------------------------------------------
// Claymore Explosion
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 1); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 139 );
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, noone); //TODO: Change this
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_NSPECIAL, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 7, HG_IGNORES_PROJECTILES, 1);
//set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 7, HG_THROWS_ROCK, 0); // TODO: Change to 1?

//-------------------------------------------
// C4 Explosion
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 1.3);
//set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 139 );
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, noone); //TODO: Change this
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_IGNORES_PROJECTILES, 1);
//set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 8, HG_THROWS_ROCK, 0); // TODO: Change to 1?


//-------------------------------------------
// Sleeping Gas
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 144 );
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, noone); //TODO: Change this
set_hitbox_value(AT_NSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 9, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_IGNORES_PROJECTILES, 1);
//set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 9, HG_THROWS_ROCK, 0); // TODO: Change to 1?

//-------------------------------------------
// Supply Drop
//-------------------------------------------
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 1); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.4);
//set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_NSPECIAL, 10, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, sound_get("sfx_hit_kick")); //TODO: Change this
set_hitbox_value(AT_NSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_NSPECIAL, 10, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, sprite_get("ent_box_mask"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 10, HG_IGNORES_PROJECTILES, 1); // Set to 0?
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true); // Set to false?
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_NSPECIAL, 10, HG_THROWS_ROCK, 0); // TODO: Change to 1?