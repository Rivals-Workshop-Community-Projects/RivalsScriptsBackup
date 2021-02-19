set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,4);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1); //sweetspot hitbox ground
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 8);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 3, HG_EXTRA_HITPAUSE, 14);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1); //sweetspot hitbox air
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 8);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 280);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1); //sourspot that i only added to cover more of the smear
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -74);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 24);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 0.5);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));