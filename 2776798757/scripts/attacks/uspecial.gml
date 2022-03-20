set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 0);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_USPECIAL, 6);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3)
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 3)
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 3, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 3)
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 4, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 3)
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 5, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 3)
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -105);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("uspecial_groundproj"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("uspecial_groundproj"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_USPECIAL, 6, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 143);

if !has_rune("B") exit;

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);