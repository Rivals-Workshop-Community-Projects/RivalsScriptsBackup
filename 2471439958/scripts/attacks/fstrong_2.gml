set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_rock"));
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 10);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));


set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 6);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 19);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 14);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 162);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);


set_hitbox_value(AT_FSTRONG_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 150);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSTRONG_2, 2, HG_EXTRA_CAMERA_SHAKE, 1);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 133);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 30);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.2);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 15);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_EFFECT, 0);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 38);
	set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 50);


