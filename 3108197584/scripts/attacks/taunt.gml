set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

var num = 1;
set_window_value(AT_TAUNT, num, AG_WINDOW_LENGTH, 44);
set_window_value(AT_TAUNT, num, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_TAUNT, num, AG_WINDOW_ANIM_FRAME_START, 1);

num++;
set_window_value(AT_TAUNT, num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, num, AG_WINDOW_ANIM_FRAME_START, 11);

num++;
set_window_value(AT_TAUNT, num, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, num, AG_WINDOW_ANIM_FRAME_START, 12);

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(AT_TAUNT, num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, num, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, num, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, num, HG_HITBOX_X, 60);
set_hitbox_value(AT_TAUNT, num, HG_HITBOX_Y, -48);
set_hitbox_value(AT_TAUNT, num, HG_WIDTH, 20);
set_hitbox_value(AT_TAUNT, num, HG_HEIGHT, 20);
set_hitbox_value(AT_TAUNT, num, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, num, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, num, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_TAUNT, num, HG_BASE_HITPAUSE, 3);

set_num_hitboxes(AT_TAUNT, !has_rune("G"));