set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("explosion"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 1.6);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, sound_get("bat"));
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 6);