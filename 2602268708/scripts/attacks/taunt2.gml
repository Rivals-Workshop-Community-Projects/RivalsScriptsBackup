set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_transrightsarehumanrights"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_TAUNT_2, 1);

//not actually a hitbox just a vfx
set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 51);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_EXTRA_CAMERA_SHAKE, -1); //none
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 1); //none
set_hitbox_value(AT_TAUNT_2, 1, HG_FORCE_FLINCH, 2); //none
set_hitbox_value(AT_TAUNT_2, 1, HG_THROWS_ROCK, 2); //ignore
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("taunt_transflag"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);

set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_TAUNT_2, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_SPRITE, sprite_get("munophone_gb_proj"));
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("munophone_gb_proj"));
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_TAUNT_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_TAUNT_2, 2, HG_PROJECTILE_UNBASHABLE, true);
