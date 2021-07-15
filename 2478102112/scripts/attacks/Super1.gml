set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, -8);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 85);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, confetti);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_321"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 1);