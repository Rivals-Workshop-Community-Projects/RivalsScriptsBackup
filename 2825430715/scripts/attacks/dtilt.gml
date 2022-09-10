set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);


set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, -6);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);


set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("dtilt_proj"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
