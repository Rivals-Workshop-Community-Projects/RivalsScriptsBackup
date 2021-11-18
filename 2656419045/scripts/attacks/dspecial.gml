exit;
if(dspecial_failed) exit; //Prevents error spam if event0 goofs up
dspecial_failed = true;

set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("mask_big"));

set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_NAME, "Power-up Attacks");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_FAF, "N/A");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_ENDLAG, "N/A");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC, "Attacks performed using power-ups");

set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 0);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

var atk = AT_DSPECIAL;

//#mark Fireball
var i = 1;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.fireball.fx);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, ATTACKS_OBJ.fireball.destroy_fx);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 180);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Fireball");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Spawns a coin on hit.
Power is reduced when spammed at close range.
Power increases dramatically when parried.
Spam values are in (parenthesis)
Parried values are in [brackets]");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0); 
set_hitbox_value(atk, i, HG_MUNO_HITBOX_DAMAGE, "3 (1) [6]");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_BHP, "5 (0)");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_BKB, "1 [13]");

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 0);
set_hitbox_value(atk, i, HG_WIDTH, 12);
set_hitbox_value(atk, i, HG_HEIGHT, 12);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 7.5);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 1.0);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_fireball"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 1);
set_hitbox_value(atk, i, HG_DAMAGE, 3);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, i, HG_ANGLE, 45);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("fireball_enemy"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("proj_fireball"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);

//#mark Tail Attack
var i = 2;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.tail_attack.fx);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT_X_OFFSET, -8);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 3);
set_hitbox_value(atk, i, HG_HITBOX_X, 24);
set_hitbox_value(atk, i, HG_HITBOX_Y, -16);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Tail Attack");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Reflects projectiles on first active frame");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0); 

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 48);
set_hitbox_value(atk, i, HG_HEIGHT, 26);

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, i, HG_THROWS_ROCK, 2);
set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 6);
set_hitbox_value(atk, i, HG_DAMAGE, 6);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, i, HG_ANGLE, 50);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.15);

set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER, 1.2);

//#mark Iceball
var i = 3;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.iceball.fx);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, ATTACKS_OBJ.iceball.destroy_fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 180);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Iceball");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Freezes players and projectiles on hit.
Projectiles remain frozen indefinitely.
Frozen objects are encased in solid ice.");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 0);
set_hitbox_value(atk, i, HG_WIDTH, 18);
set_hitbox_value(atk, i, HG_HEIGHT, 18);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_fireball_big"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 8);
set_hitbox_value(atk, i, HG_DAMAGE, 0);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, i, HG_ANGLE, 45);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 55);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("iceball_enemy"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("proj_iceball"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);

//#mark Ice Block
var i = 4;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.ice_block.fx);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, ATTACKS_OBJ.ice_block.destroy_fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 120);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Ice Block");
// set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Shatters when parried.");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 1);
set_hitbox_value(atk, i, HG_WIDTH, 18);
set_hitbox_value(atk, i, HG_HEIGHT, 18);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_fireball"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0); //This is a lie - we do this so we can see if it hits articles

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 1);
set_hitbox_value(atk, i, HG_DAMAGE, 13.5);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.125);
set_hitbox_value(atk, i, HG_ANGLE, 32);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1);

// set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("misc_invisiboy"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);

//#mark Blue Shell Spinning Hitbox
var i = 5;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 1);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, -16);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Blue Koopa Shell");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Can earn 1ups with 8 consecutive hits");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0); 
set_hitbox_value(atk, i, HG_MUNO_HITBOX_DAMAGE, "speed*1.5");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_KBG, "speed/4");
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.blue_koopa_shell.fx);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 36);
set_hitbox_value(atk, i, HG_HEIGHT, 26);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 1);
set_hitbox_value(atk, i, HG_DAMAGE, 13.5);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.125);
set_hitbox_value(atk, i, HG_ANGLE, 32);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, i, HG_HIT_LOCKOUT, 10);
// set_hitbox_value(atk, i, HG_EXTRA_HITPAUSE, 6);

// set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("proj_red_shell"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0);

//#mark Tail Attack R
var i = 6;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.tail_attack.fx);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT_X_OFFSET, -8);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 3);
set_hitbox_value(atk, i, HG_HITBOX_X, -24);
set_hitbox_value(atk, i, HG_HITBOX_Y, -16);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Tail Attack (Reverse)");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Only occurs when spin-jumping");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 1); 

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 48);
set_hitbox_value(atk, i, HG_HEIGHT, 26);

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 6);
set_hitbox_value(atk, i, HG_DAMAGE, 6);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, i, HG_ANGLE, 180 - 50);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.15);

set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER, 1.2);

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("misc_invisiboy"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);

//#mark Tanooki Statue Fall
var i = 7;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, 1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.statue_fall.fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, -10);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Tanooki Statue Pound");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Activate with Down+Run
Falls through platforms when used midair");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 1);
set_hitbox_value(atk, i, HG_WIDTH, 24);
set_hitbox_value(atk, i, HG_HEIGHT, 24);

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 8);
set_hitbox_value(atk, i, HG_DAMAGE, 12);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, i, HG_ANGLE, 90);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.2);

set_num_hitboxes(atk, i);
dspecial_failed = false;