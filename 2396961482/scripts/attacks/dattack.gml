set_attack_value(AT_DATTACK, AG_CATEGORY, 1);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_HURTBOX_AIR_SPRITE, sprite_get("dattack_hurt"));

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);



set_num_hitboxes(AT_DATTACK, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get ("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_UNBASHABLE, 1);

