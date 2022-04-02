set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));

// startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 7);

// attack
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 0); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -16); 

//freefall
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//endlag
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
