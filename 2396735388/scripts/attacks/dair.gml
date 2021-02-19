set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 6);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 7);