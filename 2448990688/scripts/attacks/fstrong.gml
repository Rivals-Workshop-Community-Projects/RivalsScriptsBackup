set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, sprite_get(""));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_AIR_SPRITE, sprite_get(""));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 13);


set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 130);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 79);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 120);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 1); //scoville buffs? On god?