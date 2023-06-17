//stolen from legacy zario thank u zard xoxo

set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC, "Has a 14-frame long recoil endlag when hitting a wall/opponent.");

set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//WINDOWW 1 - Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);

//WINDOW 2 - Charge Up
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("sm64_boom"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);

//WINDOW 3 - Shoulder Bash standard attack
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);

//WINDOW 4 - Shoulder Bash Endlag
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 11);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);

//WINDOW 5 - Shoulder Bash Jumpsquat
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sm64_enemy_hop"));

//WINDOW 6 - Shoulder Bash Jump
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -12);

//WINDOW 7 - Shoulder Bash Hit detection
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 0);

//WINDOW 8 -  Shoulder Bash Recoil
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 11);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 0);

//WINDOW 9 - Shoulder Bash Jump Landing
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_GOTO, 11);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX, land_sound);

//WINDOW 9 - Shoulder Bash Jump Endlag
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSPECIAL, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 9, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 10, AG_MUNO_WINDOW_EXCLUDE, 1);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Normal Hitbox");
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 42);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_PARTICLE_NUM, 3);

set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Jumping Hitbox");
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_ACTIVE, "5-44");
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 42);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Starts when jumping during the grounded attack window. Active frames are counted from the start of FSpecial jumpsquat");