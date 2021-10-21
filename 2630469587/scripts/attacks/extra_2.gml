//This is code for the 2nd fair

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("fair"));
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 10);

set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_2, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("weakslash"));

