set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_DSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//sslicer
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("chargeshotlv1"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("sblade"));
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("sblade"));
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_DSPECIAL_2, 2);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 130);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_2_proj"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("dspecial_2_proj"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_buzzsaw_hit"));

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 130);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("dspecial_2_proj"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("dspecial_2_proj"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_buzzsaw_hit"));

if !has_rune("N") exit;

set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 14);