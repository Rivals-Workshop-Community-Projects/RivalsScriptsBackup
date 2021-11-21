set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_MUNO_ATTACK_NAME, "DStrong (Supercharged)");
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hitplayer"));

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2,1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 210);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, electric_hit);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("sfx_electro_hit_heavy"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1.0);