set_attack_value(AT_COPY_SWORD, AG_CATEGORY, 2);
set_attack_value(AT_COPY_SWORD, AG_SPRITE, sprite_get("ability_sword"));
set_attack_value(AT_COPY_SWORD, AG_HURTBOX_SPRITE, sprite_get("ability_sword_hurt"));
set_attack_value(AT_COPY_SWORD, AG_NUM_WINDOWS, 6);
set_attack_value(AT_COPY_SWORD, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_SWORD, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SWORD, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_SWORD, 1, AG_WINDOW_ANIM_FRAMES, 4);

//charging
set_window_value(AT_COPY_SWORD, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SWORD, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_SWORD, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_SWORD, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_COPY_SWORD, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_SWORD, 2, AG_WINDOW_SFX, sound_get("sfx_charge"));

//release charge
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_SFX, sound_get("sfx_krdl_sword_spin_attack"));
set_window_value(AT_COPY_SWORD, 3, AG_WINDOW_SFX_FRAME, 3);

//spinning around
set_window_value(AT_COPY_SWORD, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SWORD, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_COPY_SWORD, 4, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_COPY_SWORD, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//launcher
set_window_value(AT_COPY_SWORD, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SWORD, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_COPY_SWORD, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_SWORD, 5, AG_WINDOW_ANIM_FRAME_START, 20);

//endlag
set_window_value(AT_COPY_SWORD, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_SWORD, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_COPY_SWORD, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_COPY_SWORD, 6, AG_WINDOW_ANIM_FRAME_START, 21);

set_num_hitboxes(AT_COPY_SWORD, 14);

//A "for" loop is used here to shorten the amount of multihit code here.
for (var i = 1; i < 5; i++){

	var hitboxMultihitWidth = 108;
	var hitboxMultihitHeight = 42;
	var hboxBKB = 2.5;
	var hboxAngleFlipper = 9;

	if (i == 1){
		var hboxRealNum = 1;
		var hboxCreationFrame1 = 0;
		var hboxCreationFrame2 = 2;
		var hboxCreationFrame3 = 4;
	} else if (i == 2){
		var hboxRealNum = 4;
		var hboxCreationFrame1 = 6;
		var hboxCreationFrame2 = 8;
		var hboxCreationFrame3 = 10;
	} else if (i == 3){
		var hboxRealNum = 7;
		var hboxCreationFrame1 = 12;
		var hboxCreationFrame2 = 14;
		var hboxCreationFrame3 = 16;
	} else if (i == 4){
		var hboxRealNum = 10;
		var hboxCreationFrame1 = 18;
		var hboxCreationFrame2 = 20;
		var hboxCreationFrame3 = 22;
	}
	
	// Multihit 1
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_WINDOW, 4);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_WINDOW_CREATION_FRAME, hboxCreationFrame1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_LIFETIME, 2);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_HITBOX_X, 23);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_HITBOX_Y, -23);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_WIDTH, hitboxMultihitWidth);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_HEIGHT, hitboxMultihitHeight);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_PRIORITY, 5);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_DAMAGE, 1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_ANGLE, 40);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_ANGLE_FLIPPER, hboxAngleFlipper);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_BASE_KNOCKBACK, hboxBKB);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_HIT_SFX, sound_get("sfx_krdl_sword_blow1"));
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum, HG_HITBOX_GROUP, -1);


	// Multihit 2
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_WINDOW, 4);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_WINDOW_CREATION_FRAME, hboxCreationFrame2);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_HITBOX_X, 10);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_HITBOX_Y, -26);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_WIDTH, hitboxMultihitWidth);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_HEIGHT, hitboxMultihitHeight);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_PRIORITY, 5);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_ANGLE, 40);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_ANGLE_FLIPPER, hboxAngleFlipper);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_BASE_KNOCKBACK, hboxBKB);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_HIT_SFX, sound_get("sfx_krdl_sword_blow1"));
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 1, HG_HITBOX_GROUP, -1);


	// Multihit 3
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_WINDOW, 4);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_WINDOW_CREATION_FRAME, hboxCreationFrame3);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_HITBOX_X, -24);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_HITBOX_Y, -26);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_WIDTH, hitboxMultihitWidth);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_HEIGHT, hitboxMultihitHeight);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_PRIORITY, 5);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_DAMAGE, 1);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_ANGLE, 40);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_ANGLE_FLIPPER, hboxAngleFlipper);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_BASE_KNOCKBACK, hboxBKB);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_HIT_SFX, sound_get("sfx_krdl_sword_blow1"));
	set_hitbox_value(AT_COPY_SWORD, hboxRealNum + 2, HG_HITBOX_GROUP, -1);

}

//Second to Last Hitbox
set_hitbox_value(AT_COPY_SWORD, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_SWORD, 13, HG_WINDOW, 4);
set_hitbox_value(AT_COPY_SWORD, 13, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_COPY_SWORD, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_COPY_SWORD, 13, HG_HITBOX_X, -15);
set_hitbox_value(AT_COPY_SWORD, 13, HG_HITBOX_Y, -18);
set_hitbox_value(AT_COPY_SWORD, 13, HG_WIDTH, hitboxMultihitWidth);
set_hitbox_value(AT_COPY_SWORD, 13, HG_HEIGHT, hitboxMultihitHeight);
set_hitbox_value(AT_COPY_SWORD, 13, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_SWORD, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_COPY_SWORD, 13, HG_ANGLE, 40);
set_hitbox_value(AT_COPY_SWORD, 13, HG_ANGLE_FLIPPER, hboxAngleFlipper);
set_hitbox_value(AT_COPY_SWORD, 13, HG_BASE_KNOCKBACK, hboxBKB);
set_hitbox_value(AT_COPY_SWORD, 13, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_COPY_SWORD, 13, HG_HIT_SFX, sound_get("sfx_krdl_sword_blow1"));
set_hitbox_value(AT_COPY_SWORD, 13, HG_HITBOX_GROUP, -1);

//Launcher
set_hitbox_value(AT_COPY_SWORD, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_SWORD, 14, HG_WINDOW, 5);
set_hitbox_value(AT_COPY_SWORD, 14, HG_LIFETIME, 5);
set_hitbox_value(AT_COPY_SWORD, 14, HG_HITBOX_X, 32);
set_hitbox_value(AT_COPY_SWORD, 14, HG_HITBOX_Y, -18);
set_hitbox_value(AT_COPY_SWORD, 14, HG_WIDTH, 85);
set_hitbox_value(AT_COPY_SWORD, 14, HG_HEIGHT, 52);
set_hitbox_value(AT_COPY_SWORD, 14, HG_SHAPE, 2);
set_hitbox_value(AT_COPY_SWORD, 14, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_SWORD, 14, HG_DAMAGE, 4);
set_hitbox_value(AT_COPY_SWORD, 14, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_SWORD, 14, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_COPY_SWORD, 14, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_COPY_SWORD, 14, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_SWORD, 14, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_COPY_SWORD, 14, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_COPY_SWORD, 14, HG_HIT_SFX, sound_get("sfx_krdl_sword_blow1"));
set_hitbox_value(AT_COPY_SWORD, 14, HG_HITBOX_GROUP, -1);