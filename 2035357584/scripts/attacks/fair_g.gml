set_attack_value(AT_FAIR_G, AG_CATEGORY, 1);
set_attack_value(AT_FAIR_G, AG_SPRITE, sprite_get("fairg"));
set_attack_value(AT_FAIR_G, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FAIR_G, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR_G, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR_G, AG_HURTBOX_SPRITE, sprite_get("fairg_hurt"));

//fairg start1
set_window_value(AT_FAIR_G, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR_G, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//fairg active1
set_window_value(AT_FAIR_G, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR_G, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR_G, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//fairg end1
set_window_value(AT_FAIR_G, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR_G, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR_G, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR_G, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//fairg start2
set_window_value(AT_FAIR_G, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR_G, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FAIR_G, 4, AG_WINDOW_VSPEED_TYPE, 1);

//fairg active2
set_window_value(AT_FAIR_G, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR_G, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR_G, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR_G, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FAIR_G, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FAIR_G, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FAIR_G, 5, AG_WINDOW_VSPEED_TYPE, 1);

//fairg end2
set_window_value(AT_FAIR_G, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR_G, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR_G, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FAIR_G, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR_G, 2);

//pistol
set_hitbox_value(AT_FAIR_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR_G, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR_G, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_FAIR_G, 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_FAIR_G, 1, HG_WIDTH, 81);
set_hitbox_value(AT_FAIR_G, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FAIR_G, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR_G, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR_G, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FAIR_G, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR_G, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FAIR_G, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FAIR_G, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//grenade
set_hitbox_value(AT_FAIR_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR_G, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR_G, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR_G, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_FAIR_G, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FAIR_G, 2, HG_WIDTH, 93);
set_hitbox_value(AT_FAIR_G, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR_G, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR_G, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR_G, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR_G, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FAIR_G, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR_G, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR_G, 2, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_FAIR_G, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR_G, 2, HG_HITBOX_GROUP, 1);