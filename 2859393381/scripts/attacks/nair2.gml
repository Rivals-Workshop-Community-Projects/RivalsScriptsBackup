set_attack_value(AT_NAIR2, AG_CATEGORY, 1);
set_attack_value(AT_NAIR2, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_NAIR2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR2, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR2, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR2, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR2, 5, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR2,2);

set_hitbox_value(AT_NAIR2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR2, 1, HG_WINDOW, -1);
set_hitbox_value(AT_NAIR2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR2, 1, HG_WIDTH, 152);
set_hitbox_value(AT_NAIR2, 1, HG_HEIGHT, 152);
set_hitbox_value(AT_NAIR2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NAIR2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR2, 1, HG_HIT_LOCKOUT, 15);
//set_hitbox_value(AT_NAIR2, 1, HG_VISUAL_EFFECT, 302);

set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_VSPEED, 0);

set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NAIR2, 1, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_NAIR2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR2, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR2, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR2, 2, HG_WIDTH, 72);
set_hitbox_value(AT_NAIR2, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR2, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR2, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR2, 2, HG_ANGLE_FLIPPER, 6);