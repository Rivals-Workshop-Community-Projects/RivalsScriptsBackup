set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_NAME, "NSpecial: Numbers");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, "Chargeable move which can spawn one of ten projectiles, depending on charge level.
Once thrown, Numbers can be recaught ONCE by either hitting them with an attack hitbox or pressing ATTACK when near them.

When holding a Number, it can be thrown forwards, up or down by pressing a direction and the attack button. (This locks you out of doing non-special attacks until it is thrown.)");


// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

// looping charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// throw startup
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);

// throw active
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

// throw endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);

// cancel
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NSPECIAL, 10);

var sdCardProj_Hitbox_W = 40;
var sdCardProj_Hitbox_H = 40;
var sdCardProj_Hitbox_Shape = 1;

// sd card 1
/*
Travels forward slowly while bouncing. Deals weak damage and knockback.
*/
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Number 1 Projectile");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Travels forward slowly while bouncing. Deals weak damage and knockback.");
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.025);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);

// sd card 2
/*
Travels in a zig-zag pattern.
*/
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Number 2 Projectile");
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Travels forward in a zig-zag pattern.");
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.45);	 // ignore this
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
//set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0);

// sd card 3
/*
Travels straight and far. Deals moderate knockback and damage.
*/
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Number 3 Projectile");
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_MISC_ADD, "Travels straight and far. Deals moderate knockback and damage.");
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0);

// sd card 4
/*
Initially travels downward, then bounces forward upon ground contact.
*/
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Number 4 Projectile");
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_MISC_ADD, "Initially travels downward, then bounces forward upon ground contact.");
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 75);	// devious
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0);


// sd card 5
/*
Travels forward, stops, then returns the way it came. Hits multiple times.
*/
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Number 5 Projectile");
set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_MISC_ADD, "Travels forward, stops, then returns the way it came. Hits multiple times.");
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -.5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0);

// sd card 6
/*
Dips down, then comes back upwards.
*/
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Number 6 Projectile");
set_hitbox_value(AT_NSPECIAL, 6, HG_MUNO_HITBOX_MISC_ADD, "Dips down, then comes back upwards.");
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 70);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 7.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0);

// sd card 7
/*
Travels forward, then spins in a circle. It's basically Galaxian.
*/
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_MUNO_HITBOX_NAME, "Number 7 Projectile");
set_hitbox_value(AT_NSPECIAL, 7, HG_MUNO_HITBOX_MISC_ADD, "Travels forward, then spins in a circle. It's basically Galaxian.");
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0);

// sd card 8
/*
Goes upwards, then arcs downwards. Stuns opponents on hit.
*/
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_MUNO_HITBOX_NAME, "Number 8 Projectile");
set_hitbox_value(AT_NSPECIAL, 8, HG_MUNO_HITBOX_MISC_ADD, "Goes upwards, then arcs downwards. Stuns opponents on hit.");
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 5.5);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0);

// sd card 9
/*
A much stronger version of SD Card 3. Powerful and ideal for K.O.s.
*/
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_MUNO_HITBOX_NAME, "Number 9 Projectile");
set_hitbox_value(AT_NSPECIAL, 9, HG_MUNO_HITBOX_MISC_ADD, "A much stronger version of Number 3. Powerful and ideal for K.O.s.");
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_NSPECIAL, 9, HG_FORCE_FLINCH, 0);

// sd card 10
/*
Goes nowhere when thrown and dissapears quickly... but is powerful if landed.
*/
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_MUNO_HITBOX_NAME, "Number 0 Projectile");
set_hitbox_value(AT_NSPECIAL, 10, HG_MUNO_HITBOX_MISC_ADD, "Goes nowhere when thrown and dissapears quickly. Spikes opponents on hit.");
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 69);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, sdCardProj_Hitbox_W);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, sdCardProj_Hitbox_H);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, sdCardProj_Hitbox_Shape);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("nspecial_number_proj"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);	// goes through
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 10, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0);