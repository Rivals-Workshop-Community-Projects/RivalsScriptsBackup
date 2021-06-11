//extra_3.gml

//landing attack after using uspecial.




set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("ex_guy_crouch_box"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 15); //7
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2); //4
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1); 
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.25); 

//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1); //play sound.
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("releaseland"));//asset_get("sfx_kragg_rock_shatter"));

//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_EXTRA_3, 0);
