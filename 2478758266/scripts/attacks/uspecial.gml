set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("pklifeup"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("pklifeup"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("pklifeup_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 90);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 23);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("castlifeup"));





set_num_hitboxes(AT_USPECIAL, 2);


set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 31);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("hudlife"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("hudlife"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);