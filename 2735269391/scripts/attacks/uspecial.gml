set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 0);

set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 13*4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4*8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 5*8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);


set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("proj_nspec"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 46);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
