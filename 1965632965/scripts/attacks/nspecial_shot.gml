set_attack_value(AT_NSPECIAL_SHOT, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_SHOT, AG_SPRITE, sprite_get("nspecialnohands"));
set_attack_value(AT_NSPECIAL_SHOT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_SHOT, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_SHOT, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_SHOT, AG_AIR_SPRITE, sprite_get("nspecialnohands"));
set_attack_value(AT_NSPECIAL_SHOT, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_SHOT, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_SFX, sound_get("shotgun"));
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_NSPECIAL_SHOT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_NSPECIAL_SHOT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_SHOT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_SHOT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_SHOT, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_NSPECIAL_SHOT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_SHOT, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_SHOT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_SHOT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_SHOT, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_num_hitboxes(AT_NSPECIAL_SHOT, 5);

set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_ANGLE, 50);

set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_DESTROY_EFFECT, 251);
//set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_HSPEED, 3);

set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_DESTROY_EFFECT, 251);
//set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_VSPEED, 1);

set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_DESTROY_EFFECT, 251);
//set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_VSPEED, 2);

set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_DESTROY_EFFECT, 251);
//set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_VSPEED, -1);

set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_DESTROY_EFFECT, 251);
//set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_VSPEED, -2);

// set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_AIR_FRICTION, 0.05);
// set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_AIR_FRICTION, 0.05);
// set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_AIR_FRICTION, 0.05);
// set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_AIR_FRICTION, 0.05);
// set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(AT_NSPECIAL_SHOT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_SHOT, 5, HG_PROJECTILE_PARRY_STUN, 1);