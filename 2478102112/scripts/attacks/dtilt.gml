set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_DTILT,1);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 35);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 16);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, -1);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, .1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 1)
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("candy_free"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, sprite_get("candy_free"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_bite"));