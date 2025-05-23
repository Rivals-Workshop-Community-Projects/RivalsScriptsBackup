set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("doublejump"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 1);

//some animation stuff handled from animation.gml
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);