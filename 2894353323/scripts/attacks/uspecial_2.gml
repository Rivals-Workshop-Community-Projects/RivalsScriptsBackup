set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "Can be charged for 30 frames. No pratfall if charged for less than 10 frames.");
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 8);

//Charge
set_window_value(AT_USPECIAL_2, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_window_value(AT_USPECIAL_2, 3, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, -2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_2, 4, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL_2, 5, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 26);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_GOTO, 24);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Wind (No Charge)");
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 32);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_windproj1a"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 196 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_bird_downspecial_end"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 8/32);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MULTIHIT, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_HITRATE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_MULTIHIT_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_MULTIHIT_VFX, 194 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_MULTIHIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Wind (Full Charge)");
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 128);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_windproj1b"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 196 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_bird_downspecial_end"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 10/40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_MULTIHIT, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_HITRATE, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_MULTIHIT_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_MULTIHIT_VFX, 194 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_MULTIHIT_SFX, asset_get("sfx_blow_medium2"));