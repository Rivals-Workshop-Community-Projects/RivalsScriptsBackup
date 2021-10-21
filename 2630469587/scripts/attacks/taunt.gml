set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("spin2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("spin"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 24);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 29);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("spin2"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 38);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 0.25);
set_hitbox_value(AT_TAUNT, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
