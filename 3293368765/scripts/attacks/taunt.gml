set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("tee_snap"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("tee_zap_light"));