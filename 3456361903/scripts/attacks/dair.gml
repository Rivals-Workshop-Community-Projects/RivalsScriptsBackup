set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("smw_spin_jump"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DAIR, 6);

//thanks rice for perms lol
//A "for" loop is used here to shorten the amount of multihit code here.
for (var i = 1; i <= 5; i++){//>
	set_hitbox_value(AT_DAIR, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DAIR, i, HG_WINDOW, 2);
	set_hitbox_value(AT_DAIR, i, HG_WINDOW_CREATION_FRAME, ((i - 1) * 2));
	set_hitbox_value(AT_DAIR, i, HG_LIFETIME, 2);
	set_hitbox_value(AT_DAIR, i, HG_HITBOX_X, 6);
	set_hitbox_value(AT_DAIR, i, HG_HITBOX_Y, -4);
	set_hitbox_value(AT_DAIR, i, HG_WIDTH, 38);
	set_hitbox_value(AT_DAIR, i, HG_HEIGHT, 60);
	set_hitbox_value(AT_DAIR, i, HG_SHAPE, 0);
	set_hitbox_value(AT_DAIR, i, HG_PRIORITY, 2);
	set_hitbox_value(AT_DAIR, i, HG_DAMAGE, 1);
	set_hitbox_value(AT_DAIR, i, HG_ANGLE, 80);
	set_hitbox_value(AT_DAIR, i, HG_ANGLE_FLIPPER, 9);
	set_hitbox_value(AT_DAIR, i, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_DAIR, i, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_DAIR, i, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_DAIR, i, HG_HITPAUSE_SCALING, 0.1);
	set_hitbox_value(AT_DAIR, i, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_DAIR, i, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(AT_DAIR, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_DAIR, i, HG_HITBOX_GROUP, i);
	set_hitbox_value(AT_DAIR, i, HG_HITSTUN_MULTIPLIER, 0.8);
}

// spike hitbox
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 62);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 275);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 6);