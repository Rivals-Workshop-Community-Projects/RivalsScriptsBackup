set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 54);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);//nspecial_proj2_mask
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
//set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8.0);//6.5
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, splashfx);//6
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, splashfx);//150

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 150);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 54);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projfire"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);//nspecial_proj2_mask
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
//set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, splashfx);//6
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 21);//150
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 150);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 150);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -30);