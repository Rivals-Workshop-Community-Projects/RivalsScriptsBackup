// AT_DSPECIAL parameters -----------------------------------------------------
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, 87, "- Bomb can be defused by parrying near it.
- Opponent can also defuse bomb.
- Bomb explodes 20 frames after being hit.
- Usually safe to jab then parry bomb.
- Klock does not get parry invuln when parrying it."); // Misc notes for the attack

// Window Parameters ----------------------------------------------------- 
// Window 1 - Frames 0 - 5 - Start Up
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);

// Window 2 - Frame 6 - Suitcase Thrown
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1); 
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_throw")); // asset_get("") or sound_get("")
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_boss_laser"));
//sfx_boss_laser
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

// Window 3 - Frame 7 - endlag
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//Hitbox Section
set_num_hitboxes(AT_DSPECIAL, 1); //Set one hitbox

// Hitbox for suitcase explosion
set_hitbox_value(AT_DSPECIAL, 1, 81, "Bomb"); // Muno hitbox Name
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 168);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 168);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0); // Circle
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5); 
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10); 
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90); 
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8); 
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .80);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hfx_steam); 
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, hp_steam);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1); // enables extended parry stun.
// Projectile Variables
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED,0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);