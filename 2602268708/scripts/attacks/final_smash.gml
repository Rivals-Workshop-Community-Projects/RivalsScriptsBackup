set_attack_value(49, AG_MUNO_ATTACK_NAME, "YOU WANT FUN? (Final Smash)");
set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("fs_activate"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("hurtbox_strip1"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);

set_window_value(49, 1, AG_WINDOW_LENGTH, 24);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 1, AG_WINDOW_HSPEED, 0);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("final_scream"));

set_window_value(49, 2, AG_WINDOW_LENGTH, 40);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 3, AG_WINDOW_HSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Wario Apparition");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_WINDOW, 1);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(49, 1, HG_LIFETIME, 200);
set_hitbox_value(49, 1, HG_HITBOX_X, -800);
set_hitbox_value(49, 1, HG_HITBOX_Y, 80);
set_hitbox_value(49, 1, HG_WIDTH, 150);
set_hitbox_value(49, 1, HG_HEIGHT, 200);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 40);
set_hitbox_value(49, 1, HG_ANGLE, 50);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, fs_hit);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(49, 1, HG_EFFECT, 11);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("fs_wario_apparition"));
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(49, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 10);


