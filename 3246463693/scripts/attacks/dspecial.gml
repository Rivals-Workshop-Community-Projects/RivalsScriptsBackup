set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fit_hurt_box"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("wft_dspecial"));
set_window_value(AT_DSPECIAL, 1, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.0);

//will fail
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 33);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);

//goal
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 3, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

//end
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 4, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.75);

//fail
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 5, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("wft_failed"));

//success
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL, 6, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("wft_success"));

set_num_hitboxes(AT_DSPECIAL, 0);