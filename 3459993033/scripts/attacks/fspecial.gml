set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1)

//jumpsquat
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//jump
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part3"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//dash
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

//end
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_num_hitboxes(AT_FSPECIAL, 1);

//toady detection
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 21);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Toady Bounce Detection");
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");