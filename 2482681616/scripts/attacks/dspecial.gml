set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 10);

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, has_rune("L") ? 15 : 55);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_dspecial_start"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_dspecial_active"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 8);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_DSPECIAL, 4);
//Normal
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 18);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_release"));

//Reversed
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_release"));

//Aerial Normal
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_release"));

//Aerial Reversed
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 22);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ori_charged_flame_release"));

if (has_rune("O")) {
    big_yes(AT_DSPECIAL);
}

#define big_yes
/// big_yes(_move, ...)
var _move = argument[0];
for(var i = 1; i <= get_num_hitboxes(_move); i++) {
	reset_hitbox_value(_move, i, HG_WIDTH);
	reset_hitbox_value(_move, i, HG_HEIGHT);
	reset_hitbox_value(_move, i, HG_HITBOX_X);
	reset_hitbox_value(_move, i, HG_HITBOX_Y);
	set_hitbox_value(_move, i, HG_WIDTH, get_hitbox_value(_move, i, HG_WIDTH) *2);
	set_hitbox_value(_move, i, HG_HEIGHT, get_hitbox_value(_move, i, HG_HEIGHT) *2);
	set_hitbox_value(_move, i, HG_HITBOX_X, get_hitbox_value(_move, i, HG_HITBOX_X) *2);
	set_hitbox_value(_move, i, HG_HITBOX_Y, get_hitbox_value(_move, i, HG_HITBOX_Y) *1.9);
}
