set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 60);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL, 0);

for (var i = 1; i < 4; i++){
	set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 300);
	set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 32);
	set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 32);
	set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 3);
	set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 11);
	set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0.8);
	// set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, vfx_hit_small);
	set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, spr_ball_moving[i-1]);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ANIM_SPEED, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_HSPEED, 20);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_VSPEED, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
}

//up spin
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 125);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Up Spin (Triangle)");

//no spin
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "No Spin (Circle)");

//down spin
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Down Spin (Square)");