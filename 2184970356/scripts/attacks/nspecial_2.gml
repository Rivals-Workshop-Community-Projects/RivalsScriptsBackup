set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ice_sleep"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));