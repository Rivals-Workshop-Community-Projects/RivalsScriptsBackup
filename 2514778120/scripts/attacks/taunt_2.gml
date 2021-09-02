set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_2"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_GOTO, 7);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_hit"));

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, sound_get("sfx_doggo"));
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 17);


set_num_hitboxes(AT_TAUNT_2, 2);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -540);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_doggo"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_VSPEED, 24);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_TAUNT_2, 2, HG_LIFETIME, 300);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_TAUNT_2, 2, HG_WIDTH, 64);
set_hitbox_value(AT_TAUNT_2, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_TAUNT_2, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_SPRITE, sprite_get("taunt_doggo"));
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_TAUNT_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 3, HG_LIFETIME, 300);
set_hitbox_value(AT_TAUNT_2, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_TAUNT_2, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_TAUNT_2, 3, HG_WIDTH, 64);
set_hitbox_value(AT_TAUNT_2, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_TAUNT_2, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_SPRITE, sprite_get("taunt_doggo"));
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);