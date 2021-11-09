set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 40);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 1);

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_hair"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);
set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_EXCLUDE, 1);

// throw startup
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(AT_NSPECIAL, 3, AG_MUNO_WINDOW_CD_SPECIAL, 1);

// throw + endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 19);

// cancel
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_NSPECIAL, 5, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_num_hitboxes(AT_NSPECIAL, 0);

for (var i = 1; i < 5; i++){
	set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 4);
	set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 24);
	set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 24);
	set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_HIT_PARTICLE_NUM, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ANIM_SPEED, 1/3);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 2);
}

set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("photon_uv"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Ultraviolet");

set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("photon_ir"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Infrared");

set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("photon_uv_gamma"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 23);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, vfx_hit_med);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIGHT_GIMMICK, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_MISC_ADD, light_gimmick_desc);
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "UV: Gamma");

set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("photon_ir_radio"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, vfx_hit_med);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIGHT_GIMMICK, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_MISC_ADD, light_gimmick_desc);
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_NAME, "IR: Radio");