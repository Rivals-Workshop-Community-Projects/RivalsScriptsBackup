set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_MISC_ADD, "All projectiles reflect as a group when parried");

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("pshooter_clack_1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 5);

var temp_num = 1;

//left left
set_hitbox_value(AT_UAIR, temp_num, HG_MUNO_HITBOX_NAME, "Laser");
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, temp_num, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, temp_num, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT, pshooter_hfx);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_SFX, sound_get("pshooter_hit_1"));
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_UAIR, temp_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_SPRITE, sprite_get("pshooter_proj_v"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_MASK, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_HSPEED, -4);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
temp_num += 1;

//left mid
set_hitbox_value(AT_UAIR, temp_num, HG_MUNO_HITBOX_NAME, "Laser");
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, temp_num, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, temp_num, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT, pshooter_hfx);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_SFX, sound_get("pshooter_hit_1"));
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_UAIR, temp_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_SPRITE, sprite_get("pshooter_proj_v"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_MASK, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_HSPEED, -2.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
temp_num += 1;

//mid mid
set_hitbox_value(AT_UAIR, temp_num, HG_MUNO_HITBOX_NAME, "Laser");
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, temp_num, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, temp_num, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT, pshooter_hfx);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_SFX, sound_get("pshooter_hit_1"));
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_UAIR, temp_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_SPRITE, sprite_get("pshooter_proj_v"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_MASK, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
temp_num += 1;

//right mid
set_hitbox_value(AT_UAIR, temp_num, HG_MUNO_HITBOX_NAME, "Laser");
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UAIR, temp_num, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, temp_num, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT, pshooter_hfx);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_SFX, sound_get("pshooter_hit_1"));
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_UAIR, temp_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_SPRITE, sprite_get("pshooter_proj_v"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_MASK, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_HSPEED, 2.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
temp_num += 1;

//right right
set_hitbox_value(AT_UAIR, temp_num, HG_MUNO_HITBOX_NAME, "Laser");
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, temp_num, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, temp_num, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, temp_num, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, temp_num, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, temp_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT, pshooter_hfx);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_SFX, sound_get("pshooter_hit_1"));
set_hitbox_value(AT_UAIR, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_UAIR, temp_num, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_UAIR, temp_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_SPRITE, sprite_get("pshooter_proj_v"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_MASK, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pshooter_mask"));
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UAIR, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
temp_num += 1;