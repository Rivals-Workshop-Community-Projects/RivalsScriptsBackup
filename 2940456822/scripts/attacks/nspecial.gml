curr_attack = AT_NSPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 15);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_plant_shoot"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 35);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(curr_attack, 1);

//Projectile
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ANIM_SPEED, .33);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 15);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 1);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 20);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 20);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -26);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 64);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(curr_attack, 1, HG_EXTENDED_PARRY_STUN, false);
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(curr_attack, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 1, HG_IGNORES_PROJECTILES, true);

//Projectile
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ANIM_SPEED, .33);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 20);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 8);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 0.1);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 0);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, HFX_POM_MUSIC);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_pom_note_hit"));
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(curr_attack, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(curr_attack, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(curr_attack, 2, HG_IGNORES_PROJECTILES, true);