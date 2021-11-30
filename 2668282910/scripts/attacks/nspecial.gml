set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .7);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("charge"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("pokken_mega_kick"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, .7);

set_num_hitboxes(AT_NSPECIAL, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, zetter_hit3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("hit_fire_strong"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, zetter_hit3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("super_effective"));