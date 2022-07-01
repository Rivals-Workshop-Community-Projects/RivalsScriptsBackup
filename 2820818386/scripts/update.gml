//Up Special Pratfall
if (!free){
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}

if (state == PS_HITSTUN){
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}

if (state == PS_HITSTUN_LAND){
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}

if (can_wall_jump == true){
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
}


//Tech Roll Animations
if (state == PS_TECH_FORWARD){
	techroll_startup_frames = 1
	techroll_active_frames = 4;
	techroll_recovery_frames = 1;
}

if (state == PS_TECH_BACKWARD){
	techroll_startup_frames = 1
	techroll_active_frames = 3;
	techroll_recovery_frames = 1;
}



//Runes

//A
if (has_rune("A")){
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .3);
}

//B
if (has_rune("B")){
	set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 90);
	set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 90);
	set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 90);
	set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 90);
	set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
	
}

//C
if (has_rune("C")){
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -6);
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);;
	
}

//D
if (has_rune("D")){
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
}

//E
if (has_rune("E")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 240);
}

//F
if (has_rune("F")){
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
}

//G
if (!free){
	move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_HITSTUN){
	move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_HITSTUN_LAND){
	move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL] = 0;
}

//H
if (has_rune("H")){
	move_cooldown[AT_USTRONG] = 0;
	move_cooldown[AT_JAB] = 0;
	move_cooldown[AT_FSTRONG] = 0;
	move_cooldown[AT_DTILT] = 0;
	move_cooldown[AT_DSTRONG] = 0;
	move_cooldown[AT_UTILT] = 0;
}

//I
if (has_rune("I")){
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, -7);
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -8);
	set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
}

//J
if (has_rune("J")){
	set_num_hitboxes(AT_DSTRONG,5);

	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("starproj"));
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.15);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 14);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 25);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 10);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -10);
	set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 22);
	set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 22);
	set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.2);
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
	set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("starproj"));
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0.15);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 14);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 25);
	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 10);
	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 22);
	set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 22);
	set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
	set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.2);
	set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
	set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);

	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("starproj"));
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, 0.15);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_HSPEED, -14);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
	set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 25);
	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -10);
	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -10);
	set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 22);
	set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 22);
	set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0.2);
	set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
	set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 3);

	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("starproj"));
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, 0.15);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_HSPEED, -14);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 2);
	set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 25);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -10);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 22);
	set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 22);
	set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
	set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
	set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 3);
	set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.2);
	set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
	set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 302);
	set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 4);
}

//K
if (has_rune("K")){
	walk_speed = 2;
	dash_speed = 6;
	air_friction = .06;
	ground_friction = .7;
	knockback_adj = .8;
}

//L
if (has_rune("L") && attack == AT_NSPECIAL && window == 1){
	move_cooldown[AT_NSPECIAL] = 180;
}

if (has_rune("L") && attack == AT_FSPECIAL && window == 1){
	move_cooldown[AT_FSPECIAL] = 180;
}

if (has_rune("L") && attack == AT_DSPECIAL && window == 1){
	move_cooldown[AT_DSPECIAL] = 180;
}

//M
if (has_rune("M")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
}

//N
if (has_rune("N")){
	set_num_hitboxes(AT_FSPECIAL, 3);

	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -14);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, .8);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, don_miss);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 85);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 30);
	set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 7);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 280);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, don_hit);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

	set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 1);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 8);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -16);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GRAVITY, .8);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, false);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, don_miss);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, false);
	set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 1);
	set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 85);
	set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 20);
	set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 50);
	set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 30);
	set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
	set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 7);
	set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 9);
	set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 280);
	set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, don_hit);
	set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
}

//O
if (has_rune("O") && attack == AT_DSPECIAL){
	super_armor = true;
}

if (has_rune("O") && state == PS_ATTACK_AIR){
	super_armor = true;
}

if (has_rune("O") && state == PS_ATTACK_GROUND){
	super_armor = true;
}

if (has_rune("O") && state_timer > 0){
	super_armor = true;
}

if (move_cooldown[AT_DSPECIAL] < 540 && !has_rune("L")){
	super_armor = false;
}

if (move_cooldown[AT_DSPECIAL] < 1){
	super_armor = false;
}



