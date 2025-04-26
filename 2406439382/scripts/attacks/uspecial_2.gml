//Uspecial if hit someone
set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_endlag_hit"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_endlag_hit_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY,true);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 4);

set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);


set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0); 

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.18);