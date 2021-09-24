set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10); // 8
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15); // 12
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14); // 12
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

// old sourspot coords 0 -16->0, size 150->128 110->96

for (var i = 1; i < 4; i++){
	set_hitbox_value(AT_DAIR, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, i, HG_WINDOW, 2);
	set_hitbox_value(AT_DAIR, i, HG_LIFETIME, 3);
	set_hitbox_value(AT_DAIR, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_DAIR, i, HG_DAMAGE, 6);
	set_hitbox_value(AT_DAIR, i, HG_ANGLE, 70);
	set_hitbox_value(AT_DAIR, i, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_DAIR, i, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DAIR, i, HG_KNOCKBACK_SCALING, 0.5); // 0.7
	set_hitbox_value(AT_DAIR, i, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DAIR, i, HG_HITPAUSE_SCALING, 0.4);
	set_hitbox_value(AT_DAIR, i, HG_HIT_SFX, sfx_botw_hit_1);
	set_hitbox_value(AT_DAIR, i, HG_HIT_LOCKOUT, 10);
	set_hitbox_value(AT_DAIR, i, HG_MUNO_HITBOX_NAME, "Sourspot");
	set_hitbox_value(AT_DAIR, i, HG_MUNO_HITBOX_EXCLUDE, (i > 1));
}

// middle
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 16);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 96);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 48);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 72);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -48);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 72);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 32);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 24); // 16
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 24); // 16
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DAIR, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DAIR, 4, HG_MUNO_HITBOX_NAME, "Sweetspot");