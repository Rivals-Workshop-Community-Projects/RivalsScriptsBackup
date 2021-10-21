set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("phonedance"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("phonedance_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 0);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 798);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -200);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, -230);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("shadow"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_MASK, sprite_get("shadow"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, sound_get("hit"));