set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swish_weak"));

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_MUNO_HITBOX_NAME, "Normal hit");

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 1200);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("spiny_shell"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("spiny_shell"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("spiny_shell_hurt"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, spiny_shell_destroy);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("ShellHit"));

//Explosion

set_hitbox_value(AT_FSTRONG_2, 2, HG_MUNO_HITBOX_NAME, "Explosion");

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 140);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 18);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -59);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, sound_get("blue_explosion"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 13);

set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_MISC_ADD, "You can only use it once per match, when you're in a stock match and losing. The explosion can hurt ou. Still activates a cooldown of 100 frames for your regular FStrong.");
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH)));