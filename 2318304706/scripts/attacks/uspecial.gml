set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 15);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground_hurt"));





//part 1
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("smrpg_geno_transform"));





//part 2
//up angled
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 13);


//neutral angled
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_GOTO, 14);


//down angled
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_USPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_USPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_GOTO, 14);





//part 3 (endlag)
//up angled
set_window_value(AT_USPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_GOTO, 15);

//neutral/down angled
set_window_value(AT_USPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_GOTO, 15);

//part 4
set_window_value(AT_USPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 23);








set_num_hitboxes(AT_USPECIAL, 6);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("smrpg_mario_hammer"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 3);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 30);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 30);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);