set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED, -9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_UTHROW, 3);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -0);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 20);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_HITPAUSE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_ghost"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_UTHROW, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, -0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 55);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UTHROW, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, -0);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_UTHROW, 3, HG_WIDTH, 65);
set_hitbox_value(AT_UTHROW, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_UTHROW, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_UTHROW, 3, HG_ANGLE, 50);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTHROW, 3, HG_EFFECT, 9);
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTHROW, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT, 303);