set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));


set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 15);    //Startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 2);      //Freeze on floor
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);    //Chomp animation
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -10);
//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, sound_get("chomp1"));

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 8); //FreezeFrame
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 14); //Endlag
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 11 );
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7);


//set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 2);



set_num_hitboxes(AT_USPECIAL_2, 5);

set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);   //Detection hitbox
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 69);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 0);

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);  //Launching grounded opponents
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 0);

set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);  //owie hit
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 123);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 129);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));





set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "Flight loop lasts up to " + string(get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) * 11) + " frames. Canceling endlag lasts " + string(get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH)) + " frames. Duration measured by immediately performing the launcher attack. Launcher active frames measured from point when button is pressed. Endlag measured after launcher hit.");
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH)));
set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_ACTIVE, "4-13");