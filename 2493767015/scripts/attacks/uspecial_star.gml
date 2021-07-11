set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_star"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_star")); 
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_star_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("uspecial_rise"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -5.5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Rising Hit");

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("star_hit"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Spin Hit 1");

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 25);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, sound_get("star_hit"));

set_hitbox_value(AT_USPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Spin Hit 2");

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Spin Hit 3");

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Spin Hit 4");

set_hitbox_value(AT_USPECIAL_2, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 6, HG_MUNO_HITBOX_NAME, "Spin Hit 5");

set_hitbox_value(AT_USPECIAL_2, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 7, HG_MUNO_HITBOX_NAME, "Spin Hit 2");

set_hitbox_value(AT_USPECIAL_2, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 8, HG_MUNO_HITBOX_NAME, "Spin Hit 3");

set_hitbox_value(AT_USPECIAL_2, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 28);
set_hitbox_value(AT_USPECIAL_2, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 9, HG_MUNO_HITBOX_NAME, "Spin Hit 4");

set_hitbox_value(AT_USPECIAL_2, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 32);
set_hitbox_value(AT_USPECIAL_2, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_Y, -74);

set_hitbox_value(AT_USPECIAL_2, 10, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_X, -8);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL_2, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_DAMAGE, 14);
set_hitbox_value(AT_USPECIAL_2, 10, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL_2, 10, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL_2, 10, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_USPECIAL_2, 10, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_USPECIAL_2, 10, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_USPECIAL_2, 10, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_USPECIAL_2, 10, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HIT_SFX, sound_get("star_hit"));