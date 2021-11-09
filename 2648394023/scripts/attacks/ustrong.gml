set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_sword_activate"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 2);

var i = 1;

repeat(2){
	set_hitbox_value(AT_USTRONG, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USTRONG, i, HG_WINDOW, 3);
	set_hitbox_value(AT_USTRONG, i, HG_LIFETIME, 3);
	// set_hitbox_value(AT_USTRONG, i, HG_HITBOX_X, 0);
	// set_hitbox_value(AT_USTRONG, i, HG_HITBOX_Y, -100);
	// set_hitbox_value(AT_USTRONG, i, HG_WIDTH, 72);
	// set_hitbox_value(AT_USTRONG, i, HG_HEIGHT, 156);
	set_hitbox_value(AT_USTRONG, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 10);
	set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 90);
	set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USTRONG, i, HG_KNOCKBACK_SCALING, 1.0);
	set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE, 12);
	set_hitbox_value(AT_USTRONG, i, HG_HITPAUSE_SCALING, 0.9);
	set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT, vfx_hit_big);
	set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT_Y_OFFSET, -10);
	set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_USTRONG, i, HG_HIT_PARTICLE_NUM, 1);
	set_hitbox_value(AT_USTRONG, i, HG_LIGHT_GIMMICK, 1);
	set_hitbox_value(AT_USTRONG, i, HG_MUNO_HITBOX_MISC_ADD, light_gimmick_desc);
	i++;
}

// top
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -148);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 64);

// front
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 156);
set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_EXCLUDE, 1);