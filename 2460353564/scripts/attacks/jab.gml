set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
set_attack_value(AT_JAB, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, -1);

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("s800_kengeki00"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("s800_kengeki00"));
set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 10);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("s800_kengeki00"));
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("s800_kengeki00"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 23);
//set_window_value(AT_JAB, 8, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 1);

set_num_hitboxes(AT_JAB, 12);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0.5); // knives do fractional damage, which i had to custom code. see hit_player.gml
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 10);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("knife"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, sprite_get("knife_hitbox"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, 12);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);

// second throw
set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, 4);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -4);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, 12);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);

// third throw
set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, 4);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -4);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 9, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, 12);
set_hitbox_value(AT_JAB, 9, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 9, HG_PROJECTILE_DOES_NOT_REFLECT, true);

// fourth throw
set_hitbox_value(AT_JAB, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 10, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, 4);
set_hitbox_value(AT_JAB, 10, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 10, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 11, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 11, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_Y, -4);
set_hitbox_value(AT_JAB, 11, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 11, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_JAB, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 12, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 12, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 12, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_Y, 12);
set_hitbox_value(AT_JAB, 12, HG_DAMAGE, 0.5);
set_hitbox_value(AT_JAB, 12, HG_PROJECTILE_DOES_NOT_REFLECT, true);