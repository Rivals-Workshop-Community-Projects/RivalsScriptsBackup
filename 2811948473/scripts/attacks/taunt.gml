set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("appear"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 64);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("gutz"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 30);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("poof"));

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("poof2"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_AIR_FRICTION, 0.03);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -0);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("poof2"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_AIR_FRICTION, 0.03);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);