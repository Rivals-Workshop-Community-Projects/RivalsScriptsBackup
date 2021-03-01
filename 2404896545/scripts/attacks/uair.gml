set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("two3"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UAIR,2);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_holy_die"));

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 305);
