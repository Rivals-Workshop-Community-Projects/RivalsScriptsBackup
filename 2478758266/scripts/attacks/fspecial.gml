set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1); //Begin move
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1); //Charge
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1); //No charge
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("pkfireshoot"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, -2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1); //Mid charge
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("pkfireshoot"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, -4);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1); //Full charge
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("pkfireshoot"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, -6);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("yeahh"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 3);


set_num_hitboxes(AT_FSPECIAL, 9);

//Low-no charge
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 27);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("pkfirebeam"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("pkfirebeam"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("firee"));

set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 26);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -16);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("pkfire"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("pkfire"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("firetrail"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("firetrail"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);

//Medium charge 1
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 27);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("pkfirebeam"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("pkfirebeam"));
set_hitbox_value(AT_FSPECIAL, 4, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 10.5);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("firee"));

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 26);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -36);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("pkfiresecond"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("pkfiresecond"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);

set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 32);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("firetrailmed"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("firetrailmed"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);

//Full charge
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 27);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 24);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 60);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("pkfirebeam"));
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("pkfirebeam"));
set_hitbox_value(AT_FSPECIAL, 7, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_HSPEED, 10.5);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, sound_get("firee"));

set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 26);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, -36);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("pkfirefinal"));
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_MASK, sprite_get("pkfirefinal"));
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 32);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("firetrailfinal"));
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_MASK, sprite_get("firetrailfinal"));
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
