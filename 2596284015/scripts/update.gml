// update is a script that runs whatever code is in here every in-game frame.

if (rolled_id != noone){
	if (rolled_id.state == PS_HITSTUN || rolled_id.state == PS_HITSTUN_LAND){
	rolled_id.hsp = rolled_id.old_hsp + 0.8 * rolled_id.hsp;
	}
	if (rolled_id.state != PS_HITSTUN && rolled_id.state != PS_HITSTUN_LAND){
	    rolled_id = noone;
	}
}

//COMPATIBILITY: Kirby

if swallowed {
	swallowed = 0;
	var ability_spr = sprite_get("kirby_ability");
	var ability_hurt = sprite_get("kirby_ability_hurt");
	var ability_air = sprite_get("kirby_ability_air");
	var ability_air_hurt = sprite_get("kirby_ability_air_hurt");
	var ability_ball1 = sprite_get("billiardball");
	with enemykirby{
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_air);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 0);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_air_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, asset_get("sfx_blow_medium1"));
		
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 65);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_ball1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_ball1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_COLLISION_SPRITE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.01);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
	}
}
