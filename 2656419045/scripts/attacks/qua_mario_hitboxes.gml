///Composite Qua Mario Hitboxes Script
//This initializes all of Mario's hitboxes rather than using separate scripts, so that I can share
//functions between them (very useful).
if(failed_attack_init) exit;
failed_attack_init = true;
var no_commons = [];

//#region Attack Values
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("mario_idle"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("mask_big"));

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_NAME, "Mario Attacks");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_FAF, "N/A");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_ENDLAG, "N/A");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_LANDING_LAG, "N/A");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, "Attacks performed by Mario directly");

set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_NAME, "Power-up Attacks");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_FAF, "N/A");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_ENDLAG, "N/A");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_LANDING_LAG, "N/A");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC, "Attacks performed using power-ups");

set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_NAME, "Articles");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_FAF, "N/A");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_ENDLAG, "N/A");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_LANDING_LAG, "N/A");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC, "Hitboxes associated with Qua Mario's articles/items");

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
//#endregion

//#region Mario Attacks

//#mark Stomp Commons
var stomp_commons = [
	HG_LIFETIME, 2,
	HG_HITBOX_TYPE, 1,
	HG_HITBOX_GROUP, 1,
	HG_SHAPE, 1
];

//#mark Stomp
make_neo_mario_hitbox(ATTACKS_OBJ.stomp, stomp_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Bounces Mario straight up.
	+1.5% dmg per consecutive stomp.
	8 consecutive stomps earns an extra life.
	No coins when stomping a player
	+1 coin when stomping an article
	+3 coins when stomping a Forsburn clone
	+5 coins when stomping a projectile
	+100/200/400/800/1000/2000/4000/8000 points.`,
	HG_MUNO_HITBOX_DAMAGE, "3 + (1.5S)",
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was stomped by %s",
	
	//Position & Size
	HG_HITBOX_Y, -8,
	HG_WIDTH, 24,
	HG_HEIGHT, 24,
	
	//Attacking
	HG_PRIORITY, 7,
	/*Damage*/		HG_DAMAGE, 3,
	/*Knockback*/	HG_BASE_KNOCKBACK, 4,		HG_KNOCKBACK_SCALING, 0,
	/*Angle*/		HG_ANGLE, 270,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 2,		HG_HITPAUSE_SCALING, 0,
	/*Extra*/		HG_HITSTUN_MULTIPLIER, 5,	HG_DRIFT_MULTIPLIER, 0.01,
]);
//#mark Ground Pound
make_neo_mario_hitbox(ATTACKS_OBJ.ground_pound, stomp_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `+3 coins from most objects.
	+5 coins & bounce from Kragg's pillar.
	+100/200/400/800/1000/2000/4000/8000 points.`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was stomped by %s using [Ground Pound]",
	
	//Position & Size
	HG_HITBOX_Y, -10,
	HG_WIDTH, 24,
	HG_HEIGHT, 24,
	
	//Attacking
	HG_PRIORITY, 8,
	/*Damage*/		HG_DAMAGE, 12,
	/*Knockback*/	HG_BASE_KNOCKBACK, 7,		HG_KNOCKBACK_SCALING, 1.2,
	/*Angle*/		HG_ANGLE, 60,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 4,		HG_HITPAUSE_SCALING, 1.2,
]);
//#mark Spin Jump
make_neo_mario_hitbox(ATTACKS_OBJ.spin_jump, stomp_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Lower half of Mario's body is intangible.
	Can bounce off of any hitbox.
	No coins from projectiles or hitboxes.
	+1 coin from players/articles.
	+100/200/400/800/1000/2000/4000/8000 points.`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was stomped by %s using [Spin Jump]",
	
	//Position & Size
	HG_HITBOX_Y, -10,
	HG_WIDTH, 24,
	HG_HEIGHT, 24,
	
	//Attacking
	HG_PRIORITY, 10,
	/*Damage*/		HG_DAMAGE, 6,
	/*Knockback*/	HG_BASE_KNOCKBACK, 6,		HG_KNOCKBACK_SCALING, 0.6,
	/*Angle*/		HG_ANGLE, 20,				HG_ANGLE_FLIPPER, 6,
	/*Hitpause*/	HG_BASE_HITPAUSE, 5,		HG_HITPAUSE_SCALING, 0.7,
]);
//#mark Throw Enemy
make_neo_mario_hitbox(ATTACKS_OBJ.throw_enemy, no_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Lift players/items with RUN + SPIN
	Can only hit the player that was thrown
	Does not spawn when throwing a teammate
	Does not award points`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was thrown by %s",
	HG_HITBOX_TYPE, 1,
	HG_LIFETIME, 1,
	HG_HITBOX_GROUP, -1,
	HG_HITBOX_TYPE, 1,
	
	//Creation & Movement
	HG_HITBOX_X, 0,
	HG_HITBOX_Y, -60,
	HG_SHAPE, 1,
	HG_WIDTH, 16,
	HG_HEIGHT, 40,
	
	//Attacking
	HG_PRIORITY, 10,
	/*Damage*/		HG_DAMAGE, 0,
	/*Knockback*/	HG_BASE_KNOCKBACK, 8,		HG_KNOCKBACK_SCALING, 1.1,
	/*Angle*/		HG_ANGLE, 45,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 0,		HG_HITPAUSE_SCALING, 0,
	/*Extra*/		HG_EXTRA_CAMERA_SHAKE, -1,
	
	//Aesthetics
]);
//#mark Ceiling Bump
make_neo_mario_hitbox(ATTACKS_OBJ.ceiling_bump, no_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Penetrates to the top of the ceiling
	Damage & KB Growth become 0 when in Small form`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was slain by %s using a ceiling",
	
	HG_LIFETIME, 10,
	HG_HITBOX_TYPE, 1,
	HG_HITBOX_GROUP, -1,
	HG_SHAPE, 1,
	
	// HG_WINDOW, 1, HG_WINDOW_CREATION_FRAME, 1,
	
	//Position & Size
	HG_HITBOX_X, 0,
	HG_HITBOX_Y, -100,
	HG_WIDTH, 24,
	HG_HEIGHT, 4,
	
	//Attacking
	HG_PRIORITY, 3,
	/*Damage*/		HG_DAMAGE, 3,
	/*Knockback*/	HG_BASE_KNOCKBACK, 6,		HG_KNOCKBACK_SCALING, 1.15,
	/*Angle*/		HG_ANGLE, 90,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 3,		HG_HITPAUSE_SCALING, 0,
	/*Extra*/		HG_HITSTUN_MULTIPLIER, 5,	HG_DRIFT_MULTIPLIER, 0.01,
	HG_IGNORES_PROJECTILES, false,
]);
//#mark Kragg Pillar Breaker
make_neo_mario_hitbox(ATTACKS_OBJ.pillar_breaker, no_commons, [
	//Metadata
	HG_MUNO_HITBOX_EXCLUDE, true,
	HG_MUNO_HITBOX_MISC_ADD, `Appears when Mario ground-pounds one of Kragg's pillars, to break it.`,
	HG_FQF_STEVE_DEATH_MESSAGE, "if this is displaying then something truly wacky has happened",
	
	HG_LIFETIME, 2,
	HG_HITBOX_TYPE, 2,
	HG_HITBOX_GROUP, 1,
	HG_SHAPE, 1,
	
	//Position & Size
	HG_WIDTH, 4,
	HG_HEIGHT, 4,
	
	//Attacking
	HG_PRIORITY, 1,
	/*Damage*/		HG_DAMAGE, 0,
	/*Knockback*/	HG_BASE_KNOCKBACK, 0,		HG_KNOCKBACK_SCALING, 0,
	/*Angle*/		HG_ANGLE, 90,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 1,		HG_HITPAUSE_SCALING, 0,
	HG_PROJECTILE_GROUND_BEHAVIOR, 1,
	HG_PROJECTILE_WALL_BEHAVIOR, 1,
	HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
	HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"),
]);

//#endregion

//#region Power-Up Attacks

//#mark Projectile Commons
var projectile_commons = [
	HG_LIFETIME, 180,
	HG_HITBOX_TYPE, 2,
	HG_HITBOX_GROUP, -1,
	HG_SHAPE, 0,
	HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_fireball"),
];

//#mark Fireball
make_neo_mario_hitbox(ATTACKS_OBJ.fireball, projectile_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, "Spawns a coin on hit.
	Power is reduced when spammed at close range.
	Power increases dramatically when parried.
	Spam values are in (parenthesis)
	Parried values are in [brackets]",
	HG_MUNO_HITBOX_DAMAGE, "3 (1) [6]",
	HG_MUNO_HITBOX_BHP, "5 (0)",
	HG_MUNO_HITBOX_BKB, "1 [13]",
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was pummeled by %s using a [Fire Flower]",
	
	//Creation & Movement
	HG_WIDTH, 12,
	HG_HEIGHT, 12,
	HG_PROJECTILE_HSPEED, 7.5,
	HG_PROJECTILE_GRAVITY, 1.0,
	
	//Attacking
	HG_PRIORITY, 1,
	/*Damage*/		HG_DAMAGE, 3,
	/*Knockback*/	HG_BASE_KNOCKBACK, 1,		HG_KNOCKBACK_SCALING, 0,
	/*Angle*/		HG_ANGLE, 45,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 5,		HG_HITPAUSE_SCALING, 0,
	
	//Sprites & Aesthetics
	HG_VISUAL_EFFECT_X_OFFSET, -10,
	HG_HIT_SFX, sound_get("fireball_enemy"),
	HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_fireball"),
	HG_PROJECTILE_SPRITE, sprite_get("proj_fireball"),
	HG_PROJECTILE_ANIM_SPEED, 0.25
]);
//#mark Tail Attack
make_neo_mario_hitbox(ATTACKS_OBJ.tail_attack, no_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Reflects projectiles.
	+400 points.`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was slain by %s using [Tail Attack]",
	HG_HITBOX_TYPE, 1,
	HG_LIFETIME, 3,
	HG_HITBOX_GROUP, -1,
	HG_HITBOX_TYPE, 1,
	
	//Creation & Movement
	HG_HITBOX_X, 24,
	HG_HITBOX_Y, -16,
	HG_SHAPE, 2,
	HG_WIDTH, 48,
	HG_HEIGHT, 26,
	
	//Attacking
	HG_PRIORITY, 4,
	/*Damage*/		HG_DAMAGE, 3,
	/*Knockback*/	HG_BASE_KNOCKBACK, 4,		HG_KNOCKBACK_SCALING, 1.15,
	/*Angle*/		HG_ANGLE, 50,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 6,		HG_HITPAUSE_SCALING, 1.15,
	/*Extra*/		HG_THROWS_ROCK, 2,			HG_HITSTUN_MULTIPLIER, 1.2,
	
	//Aesthetics
	HG_HIT_SFX, sound_get("kick"),
	HG_VISUAL_EFFECT_X_OFFSET, -8,
	HG_VISUAL_EFFECT_Y_OFFSET, 18,
]);
//#mark Iceball
make_neo_mario_hitbox(ATTACKS_OBJ.iceball, projectile_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC, "Transcendent
	Freezes players, projectiles, and some articles
	Non-player objects remain frozen indefinitely
	Freeze duration is based on % or power-up size
	Encases objects in solid ice",
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was frozen to death by %s",
	
	//Creation & Movement
	HG_WIDTH, 18,
	HG_HEIGHT, 18,
	HG_PROJECTILE_HSPEED, 4,
	HG_PROJECTILE_VSPEED, 6,
	HG_PROJECTILE_GRAVITY, 0.4,
	
	//Attacking//Attacking
	HG_PRIORITY, 8,
	/*Damage*/		HG_DAMAGE, 0,
	/*Knockback*/	HG_BASE_KNOCKBACK, 0,		HG_KNOCKBACK_SCALING, 0,
	/*Angle*/		HG_ANGLE, 45,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 55,		HG_HITPAUSE_SCALING, 0,
	/*Extra*/		HG_PROJECTILE_IS_TRANSCENDENT, 1,
	
	//Sprites & Aesthetics
	HG_HIT_SFX, sound_get("iceball_enemy"),
	HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pmask_fireball_big"),
	HG_PROJECTILE_SPRITE, sprite_get("proj_iceball"),
	HG_PROJECTILE_ANIM_SPEED, 0.25,
	HG_EXTRA_CAMERA_SHAKE, -1,
]);
//#mark Ice Block
make_neo_mario_hitbox(ATTACKS_OBJ.ice_block, no_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, "Shatters when attacked.
	Immune to Stomp & Spin Jump.
	Shatters when it hits a wall or hits a floor with low HSP.
	Creates 3 coins if shattered against terrain or an enemy.
	No coins when shattered by an enemy attack.
	Frozen players can escape with USpecial/Spin Jump.
	Can be safely stood on by any player.
	Small ice blocks can be grabbed+kicked like Koopa Shells.
	Can still be lifted while in motion.",
	HG_MUNO_HITBOX_DAMAGE, "12+0.8*speed",
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was pummeled by %s using [Ice Block]",
	// HG_MUNO_HITBOX_BHP, "5 (0)",
	// HG_MUNO_HITBOX_BKB, "1 [13]",
	HG_HITBOX_TYPE, 2,
	HG_LIFETIME, 120,
	
	//Creation & Motion
	HG_SHAPE, 1,
	HG_WIDTH, 18,
	HG_HEIGHT, 1,
	
	//Attacking
	HG_PRIORITY, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
	/*Damage*/		HG_DAMAGE, 12,
	/*Knockback*/	HG_BASE_KNOCKBACK, 11.3,	HG_KNOCKBACK_SCALING, 1,
	/*Angle*/		HG_ANGLE, 80,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 8,		HG_HITPAUSE_SCALING, 0.4,
	
	//Sprites & Aesthetics
	HG_PROJECTILE_COLLISION_SPRITE, sprite_get("mask_dead"),
	HG_PROJECTILE_SPRITE, sprite_get("mask_dead"),
]);
//#mark Ice Shatter
make_neo_mario_hitbox(ATTACKS_OBJ.ice_shatter, no_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, "Properties w/ value X are copied.",
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was shattered by %s",
	// HG_MUNO_HITBOX_BHP, "5 (0)",
	// HG_MUNO_HITBOX_BKB, "1 [13]",
	HG_HITBOX_TYPE, 2,
	HG_LIFETIME, 2,
	
	//Creation & Motion
	HG_SHAPE, 1,
	HG_WIDTH, 4,
	HG_HEIGHT, 4,
	
	//Attacking
	HG_PRIORITY, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1,
	HG_PROJECTILE_DOES_NOT_REFLECT, 1, HG_PROJECTILE_UNBASHABLE, 1,
	HG_PROJECTILE_GROUND_BEHAVIOR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1,
	HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
	/*Damage*/		HG_DAMAGE, 800,
	/*Knockback*/	HG_BASE_KNOCKBACK, 1,		HG_KNOCKBACK_SCALING, 0,
	/*Angle*/		HG_ANGLE, 0,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 0,		HG_HITPAUSE_SCALING, 0,
	
	//Sprites & Aesthetics
	HG_PROJECTILE_COLLISION_SPRITE, sprite_get("mask_dead"),
	HG_PROJECTILE_SPRITE, sprite_get("mask_dead"),
]);

//#mark Blue Shell
var shell_commons = [
	HG_MUNO_HITBOX_DAMAGE, "spd *1.5",
	HG_MUNO_HITBOX_KBG, "spd /4",
	
	HG_HITBOX_Y, -16,
	HG_SHAPE, 2,
	HG_WIDTH, 36,
	HG_HEIGHT, 26,
	
	HG_PRIORITY, 1,
	/*Damage*/		HG_DAMAGE, 13.5,
	/*Knockback*/	HG_BASE_KNOCKBACK, 4,		HG_KNOCKBACK_SCALING, 1.125,
	/*Angle*/		HG_ANGLE, 32,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 6,		HG_HITPAUSE_SCALING, 1,
	/*Extra*/		HG_HIT_LOCKOUT, 10,
];
make_neo_mario_hitbox(ATTACKS_OBJ.blue_koopa_shell, shell_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Consecutive hits are reset when turning around.
	Can be grabbed and kicked by other Qua Marios.
	No power-up loss when attacked.
	1.2x incoming knockback.
	0.75x incoming damage.`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was slain by %s using [Shell Dash]",
	HG_HITBOX_TYPE, 1,
	HG_LIFETIME, 2,
	HG_HITBOX_GROUP, -1,
	HG_HITBOX_TYPE, 1,
	
	//Creation & Movement
	
	//Attacking
	
	
	//Aesthetics
]);
//#mark Falling Tanooki Statue
make_neo_mario_hitbox(ATTACKS_OBJ.statue_fall, stomp_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Activate with Down+Run
	Super armor from frame 3 onwards
	No power-up loss when attacked`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was squashed by a falling statue",
	
	//Position & Size
	HG_HITBOX_Y, -10,
	HG_WIDTH, 24,
	HG_HEIGHT, 24,
	
	//Attacking
	HG_PRIORITY, 8,
	/*Damage*/		HG_DAMAGE, 12,
	/*Knockback*/	HG_BASE_KNOCKBACK, 6,		HG_KNOCKBACK_SCALING, 0.9,
	/*Angle*/		HG_ANGLE, 90,				HG_ANGLE_FLIPPER, 0,
	/*Hitpause*/	HG_BASE_HITPAUSE, 4,		HG_HITPAUSE_SCALING, 1.2
]);

//#endregion

//#region Item Attacks

make_neo_mario_hitbox(ATTACKS_OBJ.koopa_shell, shell_commons, [
	//Metadata
	HG_MUNO_HITBOX_MISC_ADD, `Can be launched with any attack.
	Can be grabbed or lifted.
	Owned by whoever last attacked or held it.
	Can hit owner after rebounding off a wall.
	Destroyed by Spin Jump.
	Stomp on it while it's moving to stop it.`,
	HG_FQF_STEVE_DEATH_MESSAGE, "Steve was pummeled by %s using [Koopa Troopa Shell]",
	HG_HITBOX_TYPE, 2,
	HG_LIFETIME, 2000,
	
	//Creation & Movement
	HG_PROJECTILE_WALL_BEHAVIOR, 2,
	HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
	HG_PROJECTILE_IS_TRANSCENDENT, 1,
	
	//Aesthetics
	HG_PROJECTILE_COLLISION_SPRITE, -1,
]);

//#endregion
failed_attack_init = false;

#define make_neo_mario_hitbox
/// make_neo_mario_hitbox(hitbox_obj, commons, grid_indexes)
var hitbox_obj = argument0, commons = argument1, grid_indexes = argument2;
//Function inspired by Rivals Lib's make_hitbox() library function <3
	//Make sure the attack has enough hitboxes
	set_num_hitboxes(hitbox_obj.attack, max(get_num_hitboxes(hitbox_obj.attack), hitbox_obj.hbox_num));
	
	//Universal
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_HIT_PARTICLE_NUM, 1);
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_WINDOW, -1);
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_IGNORES_PROJECTILES, true);
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_PROJECTILE_MASK, -1);
	
	//Populate from hitbox struct
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_VISUAL_EFFECT, hitbox_obj.fx);
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hitbox_obj.destroy_fx);
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_MUNO_HITBOX_NAME, hitbox_obj.name);
	set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, HG_FQF_HITBOX_IDENTITY, hitbox_obj);
	
	for(var incrementeroo = 0, total = array_length(commons); incrementeroo < total; incrementeroo += 2;)
		set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, commons[incrementeroo], commons[incrementeroo + 1]);
	
	for(var incrementeroo = 0, total = array_length(grid_indexes); incrementeroo < total; incrementeroo += 2;)
		set_hitbox_value(hitbox_obj.attack, hitbox_obj.hbox_num, grid_indexes[incrementeroo], grid_indexes[incrementeroo + 1]);