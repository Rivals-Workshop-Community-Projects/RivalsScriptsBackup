set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));

// startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_spin_start"));

// idle
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .75);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

// move
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

// atk endlag
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, sound_get("sfx_spin_stop"));


set_num_hitboxes(AT_USPECIAL_2, 4);



set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 200);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);



set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);



set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 150);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);

/*

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

for (var i = 0; i < 6; i++){
	var window_3 = (i == 5);
	

	
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_WINDOW, window_3 ? 3 : 2);
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_WINDOW_CREATION_FRAME, window_3 ? 0 : (i + 1) * 4);
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_USPECIAL_2, i + 2, HG_HITBOX_GROUP, -1);
}



set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 8, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WIDTH, 125);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HEIGHT, 125);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL_2, 8, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_GROUP, -1);*/