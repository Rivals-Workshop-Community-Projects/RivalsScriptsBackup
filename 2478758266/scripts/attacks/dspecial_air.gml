set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("pklifeup"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("pklifeup"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("pklifeup_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("defenseup"));





set_num_hitboxes(AT_DSPECIAL_AIR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -140);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("defenseup"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("defenseup"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);