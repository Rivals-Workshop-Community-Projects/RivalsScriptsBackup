set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swish_weak"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, 1);