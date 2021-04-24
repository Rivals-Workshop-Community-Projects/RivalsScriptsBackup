set_attack_value(AT_NAIR, AG_CATEGORY, 2);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, -1);

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("s800_kengeki00"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NAIR, 3);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 0.5); // knives do fractional damage, which i had to custom code. see hit_player.gml
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 10);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("knife"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_MASK, sprite_get("knife_hitbox"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 48);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, 12);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);