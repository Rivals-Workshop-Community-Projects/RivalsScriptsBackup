exit;
if(uspecial_failed) exit; //Prevents error spam if event0 goofs up
uspecial_failed = true;

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("mask_big"));

set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_NAME, "Articles");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_FAF, "N/A");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_ENDLAG, "N/A");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC, "Hitboxes associated with Qua Mario's articles/items");

set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 0);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

var atk = AT_USPECIAL;

//#mark Koopa Shell
var i = 1;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 2000);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Koopa Shell");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Can be launched by any hitbox.
Can be carried in Grab or Lift position.
Can be destroyed with Ground Pound and Spin Jump.
Stomp on the shell while it's moving to make it stop.");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0); 
set_hitbox_value(atk, i, HG_MUNO_HITBOX_DAMAGE, "speed*1.5");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_KBG, "speed/4");
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.koopa_shell.fx);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 36);
set_hitbox_value(atk, i, HG_HEIGHT, 26);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, -1);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

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
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("proj_red_shell"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);

//#mark Thrown POW
var i = 2;
//Universal
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 999);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "POW Block (thrown)");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Pow-plodes on contact");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 32);
set_hitbox_value(atk, i, HG_HEIGHT, 32);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_block"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

// set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 10);
set_hitbox_value(atk, i, HG_DAMAGE, 3);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(atk, i, HG_ANGLE, 70);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0);

// set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("proj_thrown_pow"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);

//#mark POWplosion
var i = 3;
//Universal
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 9);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "POW Block (POWplosion)");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC_ADD, "Grounded opponents only after frame 1");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 0);
set_hitbox_value(atk, i, HG_WIDTH, 96);
set_hitbox_value(atk, i, HG_HEIGHT, 96);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
// set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_block"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 10);
set_hitbox_value(atk, i, HG_DAMAGE, 62);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 3.2);
set_hitbox_value(atk, i, HG_ANGLE, 90);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 8);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 41);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.8);

set_hitbox_value(atk, i, HG_EXTRA_CAMERA_SHAKE, -1);

// set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("misc_invisiboy"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);

//#mark Starman
var i = 4;
//Universal
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 5);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Starman Active Hitbox");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Takes the shape of the user's current sprite");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 32);
set_hitbox_value(atk, i, HG_HEIGHT, 32);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
// set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_block"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 10);
set_hitbox_value(atk, i, HG_DAMAGE, 18);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 3.6);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(atk, i, HG_ANGLE, 60);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(atk, i, HG_HIT_LOCKOUT, 6);

// set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("misc_invisiboy"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);

//#mark Thrown Stone Block
var i = 5;
//Universal
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 999);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Stone Block (thrown)");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC_ADD, "Launched by hitboxes that throw Kragg rock");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 32);
set_hitbox_value(atk, i, HG_HEIGHT, 32);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0.75);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_block"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 0);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 4);
set_hitbox_value(atk, i, HG_DAMAGE, 14);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, i, HG_ANGLE, 30);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.1);

set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("proj_thrown_stone"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);

//#mark Held Shell
var i = 6;
//Universal
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, 0);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Held Koopa Shell");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC_ADD, "Koopa Shells have an active hitbox when held.");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 1);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 2);
set_hitbox_value(atk, i, HG_WIDTH, 26);
set_hitbox_value(atk, i, HG_HEIGHT, 26);
set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);

//Movement
set_hitbox_value(atk, i, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(atk, i, HG_PROJECTILE_AIR_FRICTION, 0.0);

//Interactions
set_hitbox_value(atk, i, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_block"));
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 0);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 4);
set_hitbox_value(atk, i, HG_DAMAGE, 14);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, i, HG_ANGLE, 30);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.1);

// set_hitbox_value(atk, i, HG_HIT_SFX, sound_get("kick"));

//Visuals
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, sprite_get("misc_invisiboy"));
set_hitbox_value(atk, i, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_num_hitboxes(atk, i);
uspecial_failed = false;