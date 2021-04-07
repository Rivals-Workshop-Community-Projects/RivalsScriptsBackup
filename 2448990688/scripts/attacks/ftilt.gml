set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_AIR_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_HURTBOX_AIR_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_FTILT, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 20);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FTILT, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FTILT, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_UNBASHABLE, 1);

set_attack_value(AT_ftilt, AG_MUNO_ATTACK_MISC_ADD, "Does NOT ignore parry stun. (fix this if you make your own character)");