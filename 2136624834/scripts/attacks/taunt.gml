set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX,  asset_get("sfx_ori_glide_end"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX,  asset_get("sfx_ori_glide_start"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 0);


set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 140);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1);



