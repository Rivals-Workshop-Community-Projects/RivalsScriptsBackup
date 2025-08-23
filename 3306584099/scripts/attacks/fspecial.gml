set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//#region Tomoko's data
//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Shoot
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Recovery
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//#endregion

//#region Weapon's data
weapon_attack_spr[AT_FSPECIAL] = sprite_get("fspecial_w");
weapon_xoffset[AT_FSPECIAL] = -32;
weapon_yoffset[AT_FSPECIAL] = -96;

weapon_window_min[AT_FSPECIAL] = 4;
weapon_window_max[AT_FSPECIAL] = 6;

//Startup
set_window_value(AT_FSPECIAL, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);

//Shooting
set_window_value(AT_FSPECIAL, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//Recovery
set_window_value(AT_FSPECIAL, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
//#endregion

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Projectile");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.25); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 4); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_ETA_ICE_SMALL); 
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1); 
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.75); 

set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Explosion");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 42);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 8); 
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6); 
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7); 
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, HFX_ETA_ICE_BIG);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_expl"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 9/42); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.75); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_DISTANCE, -1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MULTIHIT, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HITRATE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_MULTIHIT_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_MULTIHIT_VFX, HFX_ETA_ICE_SMALL);
set_hitbox_value(AT_FSPECIAL, 2, HG_MULTIHIT_SFX, asset_get("sfx_icehit_weak1"));