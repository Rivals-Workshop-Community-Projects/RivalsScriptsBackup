set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 10);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 17);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_USPECIAL, 5);

for (var i = 1; i <= 4; i++) {
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, i, HG_WINDOW, 2);
	set_hitbox_value(AT_USPECIAL, i, HG_WINDOW_CREATION_FRAME, 0 + (i - 1) * 3);
	set_hitbox_value(AT_USPECIAL, i, HG_LIFETIME, 3);
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_X, 6);//-25
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_Y, -38);
	set_hitbox_value(AT_USPECIAL, i, HG_WIDTH, 47);//50
	set_hitbox_value(AT_USPECIAL, i, HG_HEIGHT, 75);
	set_hitbox_value(AT_USPECIAL, i, HG_SHAPE, 2);
	set_hitbox_value(AT_USPECIAL, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 2);
	set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 90);
	set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_USPECIAL, i, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_USPECIAL, i, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 3);//-25
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 107);//50
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 111);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 131 );//304









