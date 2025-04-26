set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fspecial_strong"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_strong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_NAME, "Fspecial Strong");

//Startup
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED, 3.5);

//Shoot
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_VSPEED, -11);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

//Endlag
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TENSION_WHIFF_PENALTY, 6);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("sfx_bat_whack_heavy"));