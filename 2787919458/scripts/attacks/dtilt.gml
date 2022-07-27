set_attack_value(AT_DTILT, AG_CATEGORY, 2)
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1)
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
//Build
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
//Dash
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//Stop
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12); // 10
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6); // 7
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//Ring
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 80);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 0);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("ring"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_PLASMA_SAFE, true);