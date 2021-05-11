// ENTRANCE

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("entrance"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);


set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("entrance"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 11);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 70);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 17);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 69);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -715);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, -339);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("byetable"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_MASK, sprite_get("byetable"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_VSPEED, -11);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);