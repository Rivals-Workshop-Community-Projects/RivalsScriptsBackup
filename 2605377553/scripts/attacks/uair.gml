set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);

//start
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);

//atk
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

//atkpart2
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);

//atkpart3
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 3);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -16);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 56);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));