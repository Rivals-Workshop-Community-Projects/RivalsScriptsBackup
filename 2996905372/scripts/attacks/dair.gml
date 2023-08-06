set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);

// clean active
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 9.25);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

// late active
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);

// endlag
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);

// spike hitbox
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 315);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);

// late, semi-spike hitbox
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 18);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 350);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);

// rune that has dair's late hit stats mirror the strong hit stats.
if (dairRune){
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 350);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .65);
	set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
}