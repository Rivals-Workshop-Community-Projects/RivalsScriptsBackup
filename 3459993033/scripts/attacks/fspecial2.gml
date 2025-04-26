set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1)

//jumpsquat
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//jump
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part3"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//dash
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

//end
//set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_num_hitboxes(AT_FSPECIAL_2, 1);

//toady detection
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 21);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Toady Bounce Detection");
set_hitbox_value(AT_FSPECIAL_2, 1, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

//magic
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 600);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 2);
//set_hitbox_value(AT_FSPECIAL_2, 2, HG_EFFECT, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("smash_magic_light"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fspecial2_proj_mask"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_VSPEED, -0.5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, nspecial_trail);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");