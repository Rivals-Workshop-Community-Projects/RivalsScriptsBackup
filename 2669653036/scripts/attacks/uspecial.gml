set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_COOLDOWN, 80);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("cry"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("Fire-Punch"));

//set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 19);


set_num_hitboxes(AT_USPECIAL, 8);

set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2); // 2
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0.25);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

for (var i = 0; i < 4; i++){
	var window_3 = (i == 2);
	
	set_hitbox_value(AT_USPECIAL, i + 2, HG_MUNO_HITBOX_NAME, "Multihit " + string(i + 2));
	
	set_hitbox_value(AT_USPECIAL, i + 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_WINDOW, window_3 ? 3 : 2);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_WINDOW_CREATION_FRAME, window_3 ? 0 : (i + 1) * 4);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_HITBOX_Y, -45);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_USPECIAL, 8, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 10); // 8
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("Fire-Spin-turn-damage"));
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_EFFECT, 1);