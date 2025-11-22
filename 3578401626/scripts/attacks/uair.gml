set_attack_value(AT_UAIR, AG_CATEGORY, 2);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sfx_swipe_mid);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_UAIR, 3);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -51);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sfx_hit4);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 72);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 300);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sfx_hit6);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 95);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 43);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 30);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sfx_hit4);