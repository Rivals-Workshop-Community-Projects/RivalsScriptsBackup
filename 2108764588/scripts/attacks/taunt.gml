set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_TAUNT, 3);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 83-64);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, 52-96);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 21);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 17);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 83-64);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, 52-96);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 21);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 17);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 110);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, 83-64);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, 52-96);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 21);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 17);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 0);