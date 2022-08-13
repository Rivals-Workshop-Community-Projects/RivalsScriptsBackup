set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);

//very skillful
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//i see you!
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, -1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 10);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 999);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 9);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 10.85);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));