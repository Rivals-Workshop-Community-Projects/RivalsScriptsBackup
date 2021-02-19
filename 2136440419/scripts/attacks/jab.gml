set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// Startup
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

// Attack 1
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Multihit
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Endlag
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_JAB, 3);

// Initial Hit
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

// Multihit Main Hitbox 1
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 6); // Temp water effect
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("sfx_stinky_steam1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 1);

// Multihit Main Hitbox 2
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_HIT_PARTICLE_NUM, 1);