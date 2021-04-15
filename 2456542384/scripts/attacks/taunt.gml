set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

//sit
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_plant_ready"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 12);

//hold
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//get up
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 14);

//chomp
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, asset_get("sfx_bigplant_clamp"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 2);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 55);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));