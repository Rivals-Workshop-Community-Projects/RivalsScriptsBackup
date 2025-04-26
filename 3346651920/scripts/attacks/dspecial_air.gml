set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);

//some animation stuff handled from animation.gml


//LAND (uses tech anim)
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);


//LAND (uses tech anim)
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

//LAND (uses tech anim)
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);









