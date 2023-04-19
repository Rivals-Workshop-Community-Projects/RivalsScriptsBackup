set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("munophone_gb"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, sprite_get("_pho_empty"));
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_PHONE, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_PHONE, 3, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_PHONE, 3, AG_WINDOW_SFX, sound_get("sm64_woosh"));

set_num_hitboxes(AT_PHONE, 1);

set_hitbox_value(AT_PHONE, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_PHONE, 1, HG_WINDOW, 3);
set_hitbox_value(AT_PHONE, 1, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_PHONE, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_PHONE, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_PHONE, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_PHONE, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_PHONE, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_PHONE, 1, HG_BASE_KNOCKBACK, 30);
set_hitbox_value(AT_PHONE, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_PHONE, 1, HG_ANGLE, 45);
set_hitbox_value(AT_PHONE, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_PHONE, 1, HG_HIT_SFX, sound_get("sm64_clonk"));
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_SPRITE, sprite_get("munophone_gb_proj"));
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("munophone_gb_proj"));
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_PHONE, 1, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_PHONE, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_PLASMA_SAFE, true);