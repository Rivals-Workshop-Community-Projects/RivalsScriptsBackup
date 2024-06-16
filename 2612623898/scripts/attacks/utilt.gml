set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, sound_get("bigpunch"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 28);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTILT, 4);

//Windbox 1
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 35);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_UTILT, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_UTILT, 1, HG_IGNORES_PROJECTILES, 1);

//Windbox 2
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 35);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 96);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 180);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_UTILT, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_UTILT, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 58);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 92);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 24);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("slam2"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, hfx_ssl_bigger);
set_hitbox_value(AT_UTILT, 3, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 66);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 88);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 24);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sound_get("slam1"));
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, hfx_ssl_big);
set_hitbox_value(AT_UTILT, 4, HG_HIT_PARTICLE_NUM, 1);