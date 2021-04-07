set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get(""));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_HURTBOX_AIR_SPRITE, sprite_get(""));

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_zet"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));


set_num_hitboxes(AT_DATTACK, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 85);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 86);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX,  asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_UNBASHABLE, 1);
