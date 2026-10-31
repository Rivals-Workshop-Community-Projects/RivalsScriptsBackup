set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("item_smb2"));

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("carpet"));
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DTILT,1);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5.6)
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5)
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_proj"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, sprite_get("dair_proj"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 1.6);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_AIR_FRICTION, 0.025);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hit_smb2"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);