set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_brandish"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 88);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 118);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FSTRONG, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
