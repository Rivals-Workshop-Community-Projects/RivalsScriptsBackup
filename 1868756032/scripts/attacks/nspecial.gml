set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("AT_NSPECIAL_INHALE"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_INHALE"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_INHALE_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("inhale"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("nspecial_swallow"));

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("nspecial_spit"));

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("nspecial_down"));

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 31);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 32);




set_num_hitboxes(AT_NSPECIAL, 3);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1); //Suck
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 22);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 135);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2); //Spit
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3); //Swallow
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 3);