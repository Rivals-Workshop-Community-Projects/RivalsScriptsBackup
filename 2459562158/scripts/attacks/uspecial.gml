set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);

// rising
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_troupple_splash_big"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -8); 


// hold and wait
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0); 

// standing up
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
