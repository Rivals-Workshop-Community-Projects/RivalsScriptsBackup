set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_NSPECIAL, 3);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 56);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -60);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 18);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.8);