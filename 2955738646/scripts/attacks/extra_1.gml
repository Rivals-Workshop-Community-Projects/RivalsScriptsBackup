set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
//set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("airdodge"));
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("airdodge2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("mecha_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_INVINCIBILITY, 0);

set_num_hitboxes(AT_EXTRA_1, 1);

//Emerald spawning
/*
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("emrl"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 19);