set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 0);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 60);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("hit3"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(AT_UAIR, 2, HG_TECHABLE, 2);