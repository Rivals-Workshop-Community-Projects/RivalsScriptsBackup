set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_box"));
set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, sprite_get("taunt_box"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 13);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
//set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("taunt_box"));

//Entry 1
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 5);

//Entry 2
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_land_med2"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 21);

//Idle
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

//Walk
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 6); 

//Pre Jump
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 14);

//Jump
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_VSPEED, -7); //modified from attack_update
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_VSPEED_TYPE, 2);

//Fall Loop
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 31);

//Land
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_LENGTH, 7); //Technically 6 frames, but the 5th frame returns Amber back to idle
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_SFX, asset_get("sfx_land_med2"));
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAME_START, 14);

//Exit Box
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_TAUNT_2, 9, AG_WINDOW_SFX_FRAME, 3);

//Landing
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_ANIM_FRAME_START, 42);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_SFX, asset_get("sfx_land_light"));

//Slight pause after landing
set_window_value(AT_TAUNT_2, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 11, AG_WINDOW_ANIM_FRAME_START, 44);

//POOF!
set_window_value(AT_TAUNT_2, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 12, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT_2, 12, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT_2, 12, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(AT_TAUNT_2, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 12, AG_WINDOW_SFX, asset_get("sfx_jumpair"));

//Return to Idle
set_window_value(AT_TAUNT_2, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 13, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 13, AG_WINDOW_ANIM_FRAME_START, 51);