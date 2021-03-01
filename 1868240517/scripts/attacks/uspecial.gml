set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 100);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, tele_spool_sfx);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, tele_sfx);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .4);

//set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 40);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, tele_sfx);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .7);


set_num_hitboxes(AT_USPECIAL,0);