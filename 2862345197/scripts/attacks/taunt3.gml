// press shield during taunt's startup!

set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_MISC_ADD, "Press up and taunt at the same time!!");

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("bighurt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("shelly_hurtbox"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("smiley_taunt"));

set_num_hitboxes(AT_EXTRA_1, 1);


set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 24);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0)
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, square_destroy);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("YIPPEE"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("YIPPEE"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED,0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_FRICTION, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, true);