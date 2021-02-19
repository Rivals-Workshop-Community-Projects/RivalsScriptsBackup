set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("AT_TAUNT_FULL"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("AT_TAUNT_GROUND_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1); //start
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 43);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1); //spin
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("taunt"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 32);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1); //sleep
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 84);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 29);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1); //jolly
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 43);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1); //puff
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, sound_get("nspecial_spit"));
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 12);


set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1); //lag
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 43);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 0);