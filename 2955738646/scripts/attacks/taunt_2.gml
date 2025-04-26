set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_transform"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
 
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1); //Getting ready to rise
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("Charge_Loop"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 30);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1); //Flying upwards
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GRAVITY, .3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1); //Transforming
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 55);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, sound_get("mvcsuperflash"));

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 10); //Transformed
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 90);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1); //Landed
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 17);
