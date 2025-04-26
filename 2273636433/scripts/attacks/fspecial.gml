set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.25);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.75);

set_num_hitboxes(AT_FSPECIAL, 4);

//Grounded
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("mantle"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 1, HG_GROUNDEDNESS,1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 12);

//Aerial
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 11);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("mantle"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 12);

//Article Template
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("mantle"));
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_LOCKOUT, 10);

//Reflector
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("mantle"));
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 10);
