set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_grab"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);


// For changes between each projectile look in attack_update.gml
set_num_hitboxes(AT_USTRONG, 1);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 500);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .6);

set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_hit2"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 0);