set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//attack
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);


set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .55);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -61);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);


set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .55);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);


set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 115);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -38);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 301);


set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 115);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .5);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -38);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 301);
