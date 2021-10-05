set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("punch"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 56);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("slam1"));
