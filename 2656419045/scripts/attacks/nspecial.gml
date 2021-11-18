exit;
if(nspecial_failed) exit; //Prevents error spam if something's goofed
nspecial_failed = true;

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("mask_big"));

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_NAME, "Mario Attacks");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_FAF, "N/A");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_ENDLAG, "N/A");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_LANDING_LAG, "N/A");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, "Attacks performed by Mario directly");

set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 0);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);

var atk = AT_NSPECIAL;

//#mark Stomp
var i = 1;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.stomp.fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, -10);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Stomp");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Bounces Mario straight up. Hold Jump to bounce higher.
8 consecutive stomps earns an extra life.
+1 coin when stomping an article
+3 coins when stomping a Forsburn clone
+5 coins when stomping a projectile");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0); 
set_hitbox_value(atk, i, HG_MUNO_HITBOX_DAMAGE, "3 + (1.5B)");

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 1);
set_hitbox_value(atk, i, HG_WIDTH, 24);
set_hitbox_value(atk, i, HG_HEIGHT, 24);

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 3);
set_hitbox_value(atk, i, HG_DAMAGE, 3);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, i, HG_ANGLE, 270);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER, 5);
set_hitbox_value(atk, i, HG_DRIFT_MULTIPLIER, 0.1);

//#mark Ground Pound
var i = 2;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, 1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.ground_pound.fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, -8);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Ground Pound");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Won't cause a bounce, but counts as a consecutive stomp.
+3 coins on hit
+5 coins & bounce on Kragg's pillar");
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

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(atk, i, HG_ANGLE, 60);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 1.2);

//#mark Spin Jump
var i = 3;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.spin_jump.fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 2);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, -10);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Spin Jump");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Bounces Mario straight up. Hold Spin to bounce higher.
Lower half of Mario's body is intangible.
Can bounce off of hitboxes.
Doesn't earn coins.");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 1);
set_hitbox_value(atk, i, HG_WIDTH, 24);
set_hitbox_value(atk, i, HG_HEIGHT, 24);

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 10);
set_hitbox_value(atk, i, HG_DAMAGE, 6);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(atk, i, HG_ANGLE, 20);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0.7);

//#mark Throw Enemy
var i = 4;
//Universal
set_hitbox_value(atk, i, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, i, HG_WINDOW, -1);
set_hitbox_value(atk, i, HG_HITBOX_GROUP, -1);

//Meta
set_hitbox_value(atk, i, HG_VISUAL_EFFECT, ATTACKS_OBJ.throw_enemy.fx);
set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, i, HG_LIFETIME, 1);
set_hitbox_value(atk, i, HG_HITBOX_X, 0);
set_hitbox_value(atk, i, HG_HITBOX_Y, -60);
set_hitbox_value(atk, i, HG_MUNO_HITBOX_NAME, "Grab Toss");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_MISC, "Performed by lifting an opponent with RUN + SPIN.
Release RUN to throw the opponent.");
set_hitbox_value(atk, i, HG_MUNO_HITBOX_EXCLUDE, 0);

//Shape
set_hitbox_value(atk, i, HG_SHAPE, 1);
set_hitbox_value(atk, i, HG_WIDTH, 16);
set_hitbox_value(atk, i, HG_HEIGHT, 40);

//Interactions
set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, 1);

//Attack
set_hitbox_value(atk, i, HG_PRIORITY, 10);
set_hitbox_value(atk, i, HG_DAMAGE, 6);

set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(atk, i, HG_ANGLE, 20);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, 0.7);

set_num_hitboxes(atk, i);
nspecial_failed = false;