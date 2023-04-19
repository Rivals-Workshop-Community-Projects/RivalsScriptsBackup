set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("dattack"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_MUNO_ATTACK_MISC_ADD, "Kills instantly if the opponent is over 100%");

set_window_value(49, 1, AG_WINDOW_LENGTH, 4);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("glitch"));

set_window_value(49, 2, AG_WINDOW_LENGTH, 5);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED, 16);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_TYPE, 0);
set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 3, AG_WINDOW_HSPEED, 10);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(49, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.5);

set_window_value(49, 4, AG_WINDOW_LENGTH, 12);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(49, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(49, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);


set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Activation Hit");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 15);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -20);
set_hitbox_value(49, 1, HG_WIDTH, 25);
set_hitbox_value(49, 1, HG_HEIGHT, 50);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 9);
set_hitbox_value(49, 1, HG_ANGLE, 60);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(49, 2, HG_MUNO_HITBOX_NAME, "Damage"); //not a real hitbox just here for munophone data
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 5);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_WIDTH, 100);
set_hitbox_value(49, 2, HG_HEIGHT, 100);
set_hitbox_value(49, 2, HG_SHAPE, 2);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 40);
set_hitbox_value(49, 2, HG_ANGLE, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 0);

set_hitbox_value(49, 3, HG_MUNO_HITBOX_NAME, "Finisher");
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_WINDOW, 5);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 3, HG_LIFETIME, 10);
set_hitbox_value(49, 3, HG_WIDTH, 100);
set_hitbox_value(49, 3, HG_HEIGHT, 100);
set_hitbox_value(49, 3, HG_SHAPE, 2);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_DAMAGE, 10);
set_hitbox_value(49, 3, HG_ANGLE, 361);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, square_hfx);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(49, 3, HG_HIT_SFX, sound_get("BIG_SNAIL_SPIKE"));

set_hitbox_value(49, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(49, 3, HG_PROJECTILE_HSPEED,0);
set_hitbox_value(49, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(49, 3, HG_PROJECTILE_DESTROY_EFFECT, emptyfx);
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(49, 3, HG_PROJECTILE_PLASMA_SAFE, true);