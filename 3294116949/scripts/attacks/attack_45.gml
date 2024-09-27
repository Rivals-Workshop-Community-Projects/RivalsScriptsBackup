set_attack_value(45, AG_CATEGORY, 2);
set_attack_value(45, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(45, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(45, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(45, AG_NUM_WINDOWS, 4);

set_window_value(45, 1, AG_WINDOW_LENGTH, 3);
set_window_value(45, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(45, 2, AG_WINDOW_LENGTH, 4);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(45, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(45, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(45, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(45, 3, AG_WINDOW_LENGTH, 6);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(45, 4, AG_WINDOW_LENGTH, 12);
set_window_value(45, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(45, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(45, 1);

set_hitbox_value(45, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(45, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(45, 1, HG_WINDOW, 3);
set_hitbox_value(45, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(45, 1, HG_LIFETIME, 41);
set_hitbox_value(45, 1, HG_HITBOX_X, 5);
set_hitbox_value(45, 1, HG_HITBOX_Y, -38);
set_hitbox_value(45, 1, HG_WIDTH, 40);
set_hitbox_value(45, 1, HG_HEIGHT, 40);
set_hitbox_value(45, 1, HG_PRIORITY, 1);
set_hitbox_value(45, 1, HG_DAMAGE, 3);
set_hitbox_value(45, 1, HG_ANGLE, 80);
set_hitbox_value(45, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(45, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(45, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(45, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(45, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(45, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(45, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(45, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(45, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(45, 1, HG_PROJECTILE_SPRITE, sprite_get("lamp_spin"));
set_hitbox_value(45, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(45, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(45, 1, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(45, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(45, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(45, 1, HG_PROJECTILE_VSPEED, 10);
set_hitbox_value(45, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(45, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));