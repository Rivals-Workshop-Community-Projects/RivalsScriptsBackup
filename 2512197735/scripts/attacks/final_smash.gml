set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_AIR_SPRITE, sprite_get("final_smash_air"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_HAS_LANDING_LAG, 3);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
set_attack_value(49, AG_HURTBOX_AIR_SPRITE, sprite_get("final_smash_air_hurt"));

//Jump to Center
set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 50);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("launcher"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
//Loop for Aiming
set_window_value(49, 2, AG_WINDOW_TYPE, 9);
set_window_value(49, 2, AG_WINDOW_LENGTH, 20);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 7);
//Explode//Return
set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 19);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_WINDOW, 6);
set_hitbox_value(49, 1, HG_LIFETIME, 99);
set_hitbox_value(49, 1, HG_HITBOX_X, -10);
set_hitbox_value(49, 1, HG_HITBOX_Y, -110);
set_hitbox_value(49, 1, HG_WIDTH, 60);
set_hitbox_value(49, 1, HG_HEIGHT, 60);
set_hitbox_value(49, 1, HG_PRIORITY, 7);
set_hitbox_value(49, 1, HG_DAMAGE, 18);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(49, 1, HG_PROJECTILE_DESTROY_EFFECT, 14);
set_hitbox_value(49, 1, HG_ANGLE, 50);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("waluigi_projectile"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("waluigi_projectile_mask"));
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(49, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_WINDOW, 6);
set_hitbox_value(49, 2, HG_LIFETIME, 40);
set_hitbox_value(49, 2, HG_HITBOX_X, -10);
set_hitbox_value(49, 2, HG_HITBOX_Y, -110);
set_hitbox_value(49, 2, HG_WIDTH, 300);
set_hitbox_value(49, 2, HG_HEIGHT, 300);
set_hitbox_value(49, 2, HG_PRIORITY, 7);
set_hitbox_value(49, 2, HG_DAMAGE, 20);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(49, 2, HG_ANGLE, 45);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE,sprite_get("final_smash_explosion"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 2, HG_TECHABLE, 1);
set_hitbox_value(49, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));