set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 5);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

// Jump
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("monarch_smallblink1"));


// Hold
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 7);

// Invis
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);

// Fall
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("monarch_twinkle"));

// Charge
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);


// Begin
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, sound_get("monarch_fstrongslash"));

// Slash
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);

// End1
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FSTRONG,1);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 128);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 184);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
//set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, hitfx3);