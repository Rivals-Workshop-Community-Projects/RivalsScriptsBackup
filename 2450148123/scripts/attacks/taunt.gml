set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_TAUNT,2);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 30);

set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));