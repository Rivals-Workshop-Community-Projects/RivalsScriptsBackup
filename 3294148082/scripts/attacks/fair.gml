set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("ihurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("THROW4"));
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 2);

set_num_hitboxes(AT_FAIR, 1);


set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 26);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("magicproj2"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, sprite_get("magicproj2"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("MAGICHIT2"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT,1);
set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
