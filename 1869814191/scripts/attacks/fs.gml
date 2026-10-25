set_attack_value(49, AG_SPRITE, sprite_get("dattack"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(49, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(49, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("sfx_sans_blink"));

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 50);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 360);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 140);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 20);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 7, AG_WINDOW_GOTO, 30);

set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 3);
set_hitbox_value(49, 1, HG_HITBOX_X, 60);
set_hitbox_value(49, 1, HG_HITBOX_Y, -34);
set_hitbox_value(49, 1, HG_WIDTH, 6444);
set_hitbox_value(49, 1, HG_HEIGHT, 6444);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 5);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_ANGLE, 80);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("sfx_soul_hit"));
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 99);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_HITBOX_X, 60);
set_hitbox_value(49, 2, HG_HITBOX_Y, -34);
set_hitbox_value(49, 2, HG_WIDTH, 99999);
set_hitbox_value(49, 2, HG_HEIGHT, 99999);
set_hitbox_value(49, 2, HG_SHAPE, 1);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 0);
set_hitbox_value(49, 2, HG_ANGLE, 270);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(49, 2, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 2, HG_HITSTUN_MULTIPLIER, .25);

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 99);
set_hitbox_value(49, 3, HG_LIFETIME, 2);
set_hitbox_value(49, 3, HG_HITBOX_X, 60);
set_hitbox_value(49, 3, HG_HITBOX_Y, -34);
set_hitbox_value(49, 3, HG_WIDTH, 99999);
set_hitbox_value(49, 3, HG_HEIGHT, 99999);
set_hitbox_value(49, 3, HG_SHAPE, 1);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_DAMAGE, 0);
set_hitbox_value(49, 3, HG_ANGLE, 45);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 3, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 3, HG_HITSTUN_MULTIPLIER, 1);