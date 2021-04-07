set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_rag_plant_ready"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_USPECIAL_GROUND, 0);
//vent chungus