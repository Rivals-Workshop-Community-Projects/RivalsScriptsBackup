set_attack_value(AT_COPY_FIRE, AG_CATEGORY, 2);
set_attack_value(AT_COPY_FIRE, AG_SPRITE, sprite_get("ability_fire"));
set_attack_value(AT_COPY_FIRE, AG_HURTBOX_SPRITE, sprite_get("ability_fire_hurt"));
set_attack_value(AT_COPY_FIRE, AG_NUM_WINDOWS, 4);
set_attack_value(AT_COPY_FIRE, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_FIRE, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIRE, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_COPY_FIRE, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_COPY_FIRE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_FIRE, 1, AG_WINDOW_SFX, sound_get("sfx_krdl_burning"));
set_window_value(AT_COPY_FIRE, 1, AG_WINDOW_SFX_FRAME, 17);

//active/travelling
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_COPY_FIRE, 2, AG_WINDOW_VSPEED_TYPE, 1);

//endlag (whiff)
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_COPY_FIRE, 3, AG_WINDOW_GOTO, 6);

//bouncing of a wall
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_GOTO, 6);
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_SFX, sound_get("hurt"));
set_window_value(AT_COPY_FIRE, 4, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_COPY_FIRE, 1);

set_hitbox_value(AT_COPY_FIRE, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_FIRE, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_FIRE, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_COPY_FIRE, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_COPY_FIRE, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_FIRE, 1, HG_WIDTH, 70);
set_hitbox_value(AT_COPY_FIRE, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_COPY_FIRE, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_FIRE, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_COPY_FIRE, 1, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_FIRE, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_COPY_FIRE, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_COPY_FIRE, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_FIRE, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_COPY_FIRE, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_COPY_FIRE, 1, HG_HIT_SFX, sound_get("sfx_krdl_fire_hit"));