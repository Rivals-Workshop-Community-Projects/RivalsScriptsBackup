set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 120);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, 41, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium1"));

set_hitbox_value(AT_NSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, -12);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 120);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 311);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, -20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, .6);