set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_AIR_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_bubblemouth"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
//set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);//whifflag goes here

set_num_hitboxes(AT_FSTRONG, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);//8
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);//20
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);