set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1); //Getting into the launcher
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 3);

var temp_num = 1;

set_num_hitboxes(AT_USPECIAL, temp_num-1);

set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_LIFETIME, 9999);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, temp_num, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_SFX, sound_get("sm64_clonk"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, temp_num, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_SHAPE, 2);

set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_MASK, sprite_get("uspecial_barrel_mask"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, true);

temp_num += 1;

set_hitbox_value(AT_USPECIAL, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_LIFETIME, 9999);
set_hitbox_value(AT_USPECIAL, temp_num, HG_WIDTH, 46);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HEIGHT, 46);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, temp_num, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HIT_SFX, sound_get("sm64_clonk"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, temp_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, temp_num, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USPECIAL, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, temp_num, HG_SHAPE, 2);

set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
temp_num += 1;
