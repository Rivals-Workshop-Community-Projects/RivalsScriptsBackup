set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
 
// pull out (note: this should never be frame 4)
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

// also firing
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("smg1_fire1"));

// firing
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);

// ammo is removed from the ammo bar during this window
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);

// put away
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, gun_effect);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 24);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, gun_wall_effect);

set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 9);
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);