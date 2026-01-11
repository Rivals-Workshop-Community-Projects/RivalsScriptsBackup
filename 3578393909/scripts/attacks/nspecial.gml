var atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

var win_num = 1; //windup
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);

win_num++; //aim
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);

win_num++; //fire
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_01"));

win_num++; //endlag
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 14);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

var hit_num = 1;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
//set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);

set_num_hitboxes(atk, hit_num);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 0);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, sprite_get("nspecial_start_hurt"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 0);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, sprite_get("nspecial_middle_hurt"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 0);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, sprite_get("nspecial_end_hurt"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 0);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, sprite_get("nspecial_angled_start_hurt"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 0);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, sprite_get("nspecial_angled_middle_hurt"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);

hit_num++;
set_hitbox_value(atk, hit_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hit_num, HG_WINDOW, 6); //we are spawning it manually
set_hitbox_value(atk, hit_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hit_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hit_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hit_num, HG_WIDTH, 24);
set_hitbox_value(atk, hit_num, HG_HEIGHT, 24);
set_hitbox_value(atk, hit_num, HG_PRIORITY, 0);
set_hitbox_value(atk, hit_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hit_num, HG_ANGLE, 60);
set_hitbox_value(atk, hit_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hit_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hit_num, HG_HITSTUN_MULTIPLIER, 0.4); 
set_hitbox_value(atk, hit_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(atk, hit_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_MASK, sprite_get("nspecial_angled_end_hurt"));
set_hitbox_value(atk, hit_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hit_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hit_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hit_num, HG_IGNORES_PROJECTILES, 1);