//AR DSPECIAL [WIP]
//still needs lightning
//broken

set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//dsps  dspss dspan dspat dsph    dspr
//0-5:6 6-7:2 8-8:1 9-9:1 10-10:1 11-13:3

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("scopCD"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_DSPECIAL, 4);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
//set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
//set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 9999);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 18);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);


//this is lightning
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
//set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 48); //361
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 12); //8
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 197); //EL - 157
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("Lightninghit_low"));
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true)
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 10);

//this is lightning ground hit
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
//set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 53);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 1.8);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 197); //EL - 157
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
//set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true)
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 18);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 50); //361
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 16); //8
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 157); //EL - 157
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("Lightninghit_low"));
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true)
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 10);























