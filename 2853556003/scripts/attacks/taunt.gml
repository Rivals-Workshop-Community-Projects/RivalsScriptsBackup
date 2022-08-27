set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_blow_weak2"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 23);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sfx_punch_blow_medium1);

set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 25);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sfx_punch_blow_medium2);