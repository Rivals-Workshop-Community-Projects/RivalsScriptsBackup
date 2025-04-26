set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, 6.5);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 12); 
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.60);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);