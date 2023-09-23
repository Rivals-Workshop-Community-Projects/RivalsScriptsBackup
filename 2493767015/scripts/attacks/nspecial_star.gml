set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_star"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_star_air"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_star_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_star_air_hurt"));

//Startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Lunge
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED, 12);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//Uppercut
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_VSPEED, -5);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NSPECIAL_2, 4);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("star_hit"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, sound_get("star_hit"));

set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -76);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_SFX, sound_get("star_hit"));

set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 46);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_SFX, sound_get("star_hit"));