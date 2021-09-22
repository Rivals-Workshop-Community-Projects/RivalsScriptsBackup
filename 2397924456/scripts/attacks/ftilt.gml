set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_COOLDOWN, 30); // 0
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_CD_SPECIAL, 1);

// startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

// leap
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

// endlag (after landing)
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 24);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));

set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, spr_ftilt_proj);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_VSPEED, 5);

for (var i = 2; i < 4; i++){
	set_hitbox_value(AT_FTILT, i, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_FTILT, i, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FTILT, i, HG_WINDOW, 2);
	set_hitbox_value(AT_FTILT, i, HG_WINDOW_CREATION_FRAME, (i - 1) * 4);
	set_hitbox_value(AT_FTILT, i, HG_LIFETIME, 30);
	set_hitbox_value(AT_FTILT, i, HG_HITBOX_X, 56);
	set_hitbox_value(AT_FTILT, i, HG_HITBOX_Y, -44);
}