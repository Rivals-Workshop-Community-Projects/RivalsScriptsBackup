set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_land_med2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 101);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 102);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 103);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 8);

/*
set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 999);
//set_hitbox_value(AT_TAUNT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 2);
