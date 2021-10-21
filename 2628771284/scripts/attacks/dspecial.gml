set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("phonedance"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("phonedance_hurt"));
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("superdeathkilldance"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 90);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("whewlaser"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 25);

set_num_hitboxes(AT_DSPECIAL, 10);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 98);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -185);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 79);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("necopri"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("necopri"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, redthingmess );

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 430);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 160);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("bluelaser"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("bluelaser"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, redthingmess );

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 29);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 34);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 39);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 44);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 49);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 54);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 8, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 59);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 64);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 162);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -455);
set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 1287);
set_hitbox_value(AT_DSPECIAL, 10, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT_Y_OFFSET, 220);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 0.80);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_GROUP, 8);