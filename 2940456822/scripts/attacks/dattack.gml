curr_attack = AT_DATTACK;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dattack"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_OFF_LEDGE, false);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 10);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(curr_attack, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curr_attack, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_HSPEED, 8);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curr_attack, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_HSPEED, 6);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 20);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 8);

var curr_num = 0;

for (var j = 0; j <= 1; j++) {
	for (var i = 1; i <= 4; i++) {
		curr_num = i + j * 4
		set_hitbox_value(curr_attack, curr_num, HG_WINDOW_CREATION_FRAME, (i - 1) * 2);
		set_hitbox_value(curr_attack, curr_num, HG_HITBOX_TYPE, 1);
		set_hitbox_value(curr_attack, curr_num, HG_WINDOW, j + 2);
		set_hitbox_value(curr_attack, curr_num, HG_LIFETIME, 1);
		set_hitbox_value(curr_attack, curr_num, HG_SHAPE, 0);
		set_hitbox_value(curr_attack, curr_num, HG_HITBOX_Y, -20);
		set_hitbox_value(curr_attack, curr_num, HG_HITBOX_X, 6);
		set_hitbox_value(curr_attack, curr_num, HG_WIDTH, 66);
		set_hitbox_value(curr_attack, curr_num, HG_HEIGHT, 50);
		set_hitbox_value(curr_attack, curr_num, HG_PRIORITY, 2);
		set_hitbox_value(curr_attack, curr_num, HG_DAMAGE, 1);
		set_hitbox_value(curr_attack, curr_num, HG_ANGLE, 10);
		set_hitbox_value(curr_attack, curr_num, HG_ANGLE_FLIPPER, 4);
		set_hitbox_value(curr_attack, curr_num, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(curr_attack, curr_num, HG_KNOCKBACK_SCALING, .0);
		set_hitbox_value(curr_attack, curr_num, HG_HITBOX_GROUP, -1);
		set_hitbox_value(curr_attack, curr_num, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(curr_attack, curr_num, HG_HITPAUSE_SCALING, .3);
		set_hitbox_value(curr_attack, curr_num, HG_HITSTUN_MULTIPLIER, .5);
		set_hitbox_value(curr_attack, curr_num, HG_TECHABLE, 3);
		//set_hitbox_value(curr_attack, 1, HG_FORCE_FLINCH, true);
		set_hitbox_value(curr_attack, curr_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(curr_attack, curr_num, HG_VISUAL_EFFECT, 301);
		//print(curr_num)
	}
}

set_hitbox_value(curr_attack, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(curr_attack, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 8, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 8, HG_LIFETIME, 2);
set_hitbox_value(curr_attack, 8, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 8, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 8, HG_HITBOX_X, 6);
set_hitbox_value(curr_attack, 8, HG_WIDTH, 70);
set_hitbox_value(curr_attack, 8, HG_HEIGHT, 54);
set_hitbox_value(curr_attack, 8, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 8, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, 8, HG_ANGLE, 45);
set_hitbox_value(curr_attack, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(curr_attack, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 8, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(curr_attack, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 8, HG_HITPAUSE_SCALING, .6);
//set_hitbox_value(curr_attack, 8, HG_FORCE_FLINCH, true);
set_hitbox_value(curr_attack, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 8, HG_VISUAL_EFFECT, 301);
