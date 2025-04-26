set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .25);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, .25);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_CUSTOM_GRAVITY, .35);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));