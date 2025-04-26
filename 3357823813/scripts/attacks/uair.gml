set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//Startup
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("sfx_bat_moon_transform"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);

//Active
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

//Endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 5);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -132);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("blow_sfx1"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -132);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("blow_sfx1"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -132);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("blow_sfx1"));

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -132);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UAIR, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("blow_sfx1"));

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -132);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 120);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UAIR, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("sfx_darkness_medium1"));