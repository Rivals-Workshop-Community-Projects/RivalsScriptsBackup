set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong_tired"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_tired_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, sfx_steam3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_DSTRONG_2, 2);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, vfx_steam_hit_large_tired);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));

set_hitbox_value(AT_DSTRONG_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, -65);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, vfx_steam_hit_large_tired);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));


//set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
