set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_MUNO_ATTACK_MISC_ADD, "Shield can be held for up to " + string(shield_time_max) + " frames");

//Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3); // 4
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

//Blocking
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4); // 4
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//Startup
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 3);

//Active
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

//Middle
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX_FRAME, 3);

//Active
set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);

//Endlag
set_window_value(AT_NAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//Endlag when you don't attack
set_window_value(AT_NAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -16);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);