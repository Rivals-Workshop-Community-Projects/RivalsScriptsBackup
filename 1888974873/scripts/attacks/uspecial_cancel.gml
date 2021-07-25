set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("uspecial_cancel"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("uspecial_cancel"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("jumphurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_EXTRA_3, 0);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, 24);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, sound_get("fireworks"));
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 1);