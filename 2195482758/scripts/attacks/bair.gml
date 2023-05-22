set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

// Window 1 Start
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

// Window 1 Active
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -1);


// Window 1 End
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);


// Window 2 Active
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, -1);

// Window 2 End
set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX_FRAME, 1);

// Window 3 Active
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED, -1);

// Window 3 End
set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_BAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

// Hit 1
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

// hit 2

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 94);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);

// Hit 3

set_hitbox_value(AT_BAIR,3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR,3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR,3, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR,3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR,3, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR,3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR,3, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR,3, HG_HEIGHT, 90);
set_hitbox_value(AT_BAIR,3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR,3, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR,3, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR,3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR,3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR,3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR,3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR,3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR,3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR,3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR,3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));