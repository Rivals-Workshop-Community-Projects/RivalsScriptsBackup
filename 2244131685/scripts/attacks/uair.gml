// UAIR - Cyclone Upair
set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

// Startup
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// Active Frames
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// Endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

var anim_speed = get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH) / get_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES)

// Multihit 1
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, round(anim_speed));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 110);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 1);

// Multihit 2
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, round(anim_speed * 4));
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, round(anim_speed));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 110);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

// Multihit Finisher
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, round(anim_speed * 7));
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, round(anim_speed));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -92);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.70);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.80);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);
