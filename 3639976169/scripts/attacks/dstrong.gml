set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_num_hitboxes(AT_DSTRONG, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 12);


set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.12);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
//set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));