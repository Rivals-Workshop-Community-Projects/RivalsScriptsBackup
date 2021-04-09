set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 30);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 6);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(49,1);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_LIFETIME, 8);
set_hitbox_value(49, 1, HG_HITBOX_X, 1050);
set_hitbox_value(49, 1, HG_HITBOX_Y, -32);
set_hitbox_value(49, 1, HG_WIDTH, 2000);
set_hitbox_value(49, 1, HG_HEIGHT, 60);
set_hitbox_value(49, 1, HG_PRIORITY, 1);
set_hitbox_value(49, 1, HG_DAMAGE, 4);
set_hitbox_value(49, 1, HG_ANGLE, 25);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("punch1"));
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 8);
