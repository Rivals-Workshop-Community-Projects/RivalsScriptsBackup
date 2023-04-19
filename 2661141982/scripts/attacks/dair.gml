set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);//4

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_bubblemouth"));
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_DAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -5);//-6
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);//this is new
//set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14);//10
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);//this should be here, not window 2



set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);// stationary projectile
//set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
//set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
//set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, uspec_large);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, blank);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, .5);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_PLASMA_SAFE, true);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
// set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 1);