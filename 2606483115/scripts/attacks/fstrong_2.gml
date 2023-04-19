set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_tired"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_tired_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, vfx_steam_hit_large_tired);

set_hitbox_value(AT_FSTRONG_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 0.85);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, vfx_steam_hit_large_tired);
