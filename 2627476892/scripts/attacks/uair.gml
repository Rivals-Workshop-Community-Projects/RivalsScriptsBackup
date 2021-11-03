set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//startup
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

//attack
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7); 
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7); 
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);