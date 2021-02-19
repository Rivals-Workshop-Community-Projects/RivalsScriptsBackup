set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

// startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 11);

// active 1
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// active 2
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// active 3
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);

// active 4
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);

// endlag
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

set_num_hitboxes(AT_FTILT, 4);

for (var i = 1; i < 5; i++){

	set_hitbox_value(AT_FTILT, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FTILT, i, HG_WINDOW, i + 1);
	set_hitbox_value(AT_FTILT, i, HG_LIFETIME, 3);
	set_hitbox_value(AT_FTILT, i, HG_HITBOX_X, 70);
	set_hitbox_value(AT_FTILT, i, HG_HITBOX_Y, -25 - 4 * i);
	set_hitbox_value(AT_FTILT, i, HG_WIDTH, 70);
	set_hitbox_value(AT_FTILT, i, HG_HEIGHT, 50);
	set_hitbox_value(AT_FTILT, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_FTILT, i, HG_DAMAGE, 2);
	set_hitbox_value(AT_FTILT, i, HG_ANGLE, 45);
	set_hitbox_value(AT_FTILT, i, HG_ANGLE_FLIPPER, 4);
	set_hitbox_value(AT_FTILT, i, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_FTILT, i, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_FTILT, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_FTILT, i, HG_HITBOX_GROUP, i);
	set_hitbox_value(AT_FTILT, i, HG_HIT_PARTICLE_NUM, 1);
	set_hitbox_value(AT_FTILT, i, HG_MUNO_HITBOX_NAME, "Multi-Hit " + string(i));
	set_hitbox_value(AT_FTILT, i, HG_MUNO_OBJECT_LAUNCH_ANGLE, 135);

}

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 100);

set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 100);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 4, HG_MUNO_HITBOX_NAME, "Finisher");
set_hitbox_value(AT_FTILT, 4, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_FTILT, 4, HG_MUNO_OBJECT_LAUNCH_ANGLE, 135);