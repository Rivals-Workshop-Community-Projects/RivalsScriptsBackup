set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7); // 6
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_COOLDOWN, 30);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6); // 4
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 1); // 2
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 10);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4); // 8
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,8);

set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1); // 2
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 2.5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

for (var i = 0; i < 4; i++){
	var window_3 = (i == 2);
	
	set_hitbox_value(AT_FAIR, i + 2, HG_MUNO_HITBOX_NAME, "Multihit " + string(i + 2));
	
	set_hitbox_value(AT_FAIR, i + 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FAIR, i + 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FAIR, i + 2, HG_WINDOW, window_3 ? 3 : 2);
	set_hitbox_value(AT_FAIR, i + 2, HG_WINDOW_CREATION_FRAME, window_3 ? 0 : (i + 1) * 4);
	set_hitbox_value(AT_FAIR, i + 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_FAIR, i + 2, HG_HITBOX_Y, -20);
	set_hitbox_value(AT_FAIR, i + 2, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_FAIR, 8, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 3); // 8
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_FAIR, 8, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 8, HG_EFFECT, 1);