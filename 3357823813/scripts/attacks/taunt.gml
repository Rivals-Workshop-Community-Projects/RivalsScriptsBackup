set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_goblet_throw"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_TAUNT, 3);

//Wine Glass
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 16);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_proj"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("blow_sfx1"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, .2);