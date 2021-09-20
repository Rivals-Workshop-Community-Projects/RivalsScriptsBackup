set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sfx_steam1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("sfx_ell_steam_hit"));
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 150);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 65);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));