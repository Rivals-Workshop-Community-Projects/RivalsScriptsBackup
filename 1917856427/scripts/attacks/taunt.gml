set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 16);



set_num_hitboxes(AT_TAUNT,3);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 53);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH,33);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 255);
set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 42);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -12);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 29);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 0);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));



