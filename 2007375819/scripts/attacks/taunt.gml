set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, asset_get("sfx_ori_glide_featherout"));

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_TAUNT,1);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, -90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, .001);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));