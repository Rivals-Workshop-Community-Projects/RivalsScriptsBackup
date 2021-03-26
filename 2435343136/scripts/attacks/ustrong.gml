set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
//set_attack_value(AT_USTRONG, AG_SPRITE, asset_get("sword_ustrong_spr"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
//set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, asset_get("sword_ustrong_hurt"));


set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_strong"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HITPAUSE_FRAME, 0);



set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 9);



var temp_attack = AT_USTRONG;
var temp_num = 1;

set_num_hitboxes(temp_attack, 3);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 15);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -79);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 44);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 74);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 8);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 128);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -22);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num +=100;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 15);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 66);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 36);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 5);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 60);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 124);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 1);

temp_num +=100;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 14);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -129);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 42);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 48);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 4);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 13);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 127);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


if has_rune("L") {
	//Forward Special.
	

	temp_num = 4;
	temp_attack = AT_USTRONG;

	//Number of hitboxes 1. 
	set_num_hitboxes(temp_attack, 6);

	//Window Data other than creation information.
	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 4);
	//Hitbox Type 1 = Standard. 2 =  HG_PARENT_HITBOX.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
	//Hitbox Window Creation
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
	//Hitbox Window Timer Creation
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	//Hitbox Length.
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
	//Hitbox X.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 8);
	//Hitbox Y.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -136);
	//Hitbox Width.
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 20);
	//Hitbox Height.
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 54);
	//Hitbox Shape 0 = circle. 1 = rectangle
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	//Hitbox Priority. 1-10
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
	//Hitbox Damage.
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 11);
	//Hitbox Angle.
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
	//Hitbox Base Knockback
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
	//Hitbox Knockback Growth
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.25);
	//Hitbox Effect - 1 = Burn. 2 = Burn Consume etc. etc.
	set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
	//Hitbox Hitpause
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
	//Hitbox Hitpause Scale
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
	//Hit Effect Num
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 127);
	//Hit Effect X Adjust
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
	//Hit Effect Y Adjust
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -80);
	//Sound Effect on Hit.
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
	//Hitbox Angle Flipper
	//Smash DI Multiplier
	//Groundedness 0 = both. 1 = ground only. 2 = air only.
	//AW_CAMERA_SHAKE_0 = no extra. NUmber = extra time.
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
	//HITBOX CAN KILL  HG_PARENT_HITBOXS 0 = Yes. 1 = No.
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	//NO OTHER HITBOX CAN HIT TIME.


	//AW_PROJ_SPR_INDEX
//	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("sword_usmash_proj"));
	//AW_PROJ_MASK
//	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("sword_usmash_proj_mask"));
	//AW_IMAGE_SPEED
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .2);
	//UNBASHABLE
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 0);
	//AW_PROJ_START_Y
	set_hitbox_value(temp_attack, temp_num, 41, 0);
	//AW_PROJ_START_HSP
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
	//AW_PROJ_START_VSP
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
	//AW_PROJ_GRAV
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
	//AW_PROJ_FRICT
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
	//AW_PROJ_AIR_FRICT
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
	//AW_THROUGH_WALLS 0 = no. 1 = yes, 2 = bounce
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	//AW_THROUGH_GROUND 0 = now. 1 = yes. 2 = bounce
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	//AW_THROUGH_ENEMIES 0 = no. 1 = yes. 2 = bounce.
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	//AW_HITBOX_LIFE
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 25);


	temp_num += 1;


	//Window Data other than creation information.
	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
	//Hitbox Type 1 = Standard. 2 =  HG_PARENT_HITBOX.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
	//Hitbox Window Creation
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
	//Hitbox Window Timer Creation
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	//Hitbox Length.
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
	//Hitbox X.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 8);
	//Hitbox Y.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -136-226);
	//Hitbox Width.
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 20);
	//Hitbox Height.
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 54);
	//Hitbox Shape 0 = circle. 1 = rectangle
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	//Hitbox Priority. 1-10
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
	//Hitbox Damage.
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 11);
	//Hitbox Angle.
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
	//Hitbox Base Knockback
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
	//Hitbox Knockback Growth
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0.9);
	//Hitbox Effect - 1 = Burn. 2 = Burn Consume etc. etc.
	set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
	//Hitbox Hitpause
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
	//Hitbox Hitpause Scale
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
	//Hit Effect Num
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 127);
	//Hit Effect X Adjust
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
	//Hit Effect Y Adjust
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -80);
	//Sound Effect on Hit.
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
	//Hitbox Angle Flipper
	//Smash DI Multiplier
	//Groundedness 0 = both. 1 = ground only. 2 = air only.
	//AW_CAMERA_SHAKE_0 = no extra. NUmber = extra time.
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
	//HITBOX CAN KILL  HG_PARENT_HITBOXS 0 = Yes. 1 = No.
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	//NO OTHER HITBOX CAN HIT TIME.


	//AW_PROJ_SPR_INDEX
//	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("sword_usmash_proj"));
	//AW_PROJ_MASK
//	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("sword_usmash_proj_mask"));
	//AW_IMAGE_SPEED
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .2);
	//UNBASHABLE
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 0);
	//AW_PROJ_START_Y
	set_hitbox_value(temp_attack, temp_num, 41, 0);
	//AW_PROJ_START_HSP
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
	//AW_PROJ_START_VSP
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
	//AW_PROJ_GRAV
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
	//AW_PROJ_FRICT
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
	//AW_PROJ_AIR_FRICT
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
	//AW_THROUGH_WALLS 0 = no. 1 = yes, 2 = bounce
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	//AW_THROUGH_GROUND 0 = now. 1 = yes. 2 = bounce
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	//AW_THROUGH_ENEMIES 0 = no. 1 = yes. 2 = bounce.
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	//AW_HITBOX_LIFE
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 25);


	temp_num += 1;


	//Window Data other than creation information.
	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 6);
	//Hitbox Type 1 = Standard. 2 =  HG_PARENT_HITBOX.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
	//Hitbox Window Creation
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
	//Hitbox Window Timer Creation
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
	//Hitbox Length.
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
	//Hitbox X.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 8);
	//Hitbox Y.
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -136-2*226);
	//Hitbox Width.
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 20);
	//Hitbox Height.
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 54);
	//Hitbox Shape 0 = circle. 1 = rectangle
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
	//Hitbox Priority. 1-10
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
	//Hitbox Damage.
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 11);
	//Hitbox Angle.
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
	//Hitbox Base Knockback
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
	//Hitbox Knockback Growth
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0.5);
	//Hitbox Effect - 1 = Burn. 2 = Burn Consume etc. etc.
	set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
	//Hitbox Hitpause
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
	//Hitbox Hitpause Scale
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
	//Hit Effect Num
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 127);
	//Hit Effect X Adjust
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
	//Hit Effect Y Adjust
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -80);
	//Sound Effect on Hit.
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
	//Hitbox Angle Flipper
	//Smash DI Multiplier
	//Groundedness 0 = both. 1 = ground only. 2 = air only.
	//AW_CAMERA_SHAKE_0 = no extra. NUmber = extra time.
	set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
	//HITBOX CAN KILL  HG_PARENT_HITBOXS 0 = Yes. 1 = No.
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
	//NO OTHER HITBOX CAN HIT TIME.


	//AW_PROJ_SPR_INDEX
//	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("sword_usmash_proj"));
	//AW_PROJ_MASK
//	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("sword_usmash_proj_mask"));
	//AW_IMAGE_SPEED
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .2);
	//UNBASHABLE
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 0);
	//AW_PROJ_START_Y
	set_hitbox_value(temp_attack, temp_num, 41, 0);
	//AW_PROJ_START_HSP
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
	//AW_PROJ_START_VSP
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
	//AW_PROJ_GRAV
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
	//AW_PROJ_FRICT
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
	//AW_PROJ_AIR_FRICT
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
	//AW_THROUGH_WALLS 0 = no. 1 = yes, 2 = bounce
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	//AW_THROUGH_GROUND 0 = now. 1 = yes. 2 = bounce
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	//AW_THROUGH_ENEMIES 0 = no. 1 = yes. 2 = bounce.
	set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	//AW_HITBOX_LIFE
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 25);
}