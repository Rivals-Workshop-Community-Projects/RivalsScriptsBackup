set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("slashe_hurtbox"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("slashe_scream1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 30);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 256);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 256);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_CAMERA_SHAKE, 120);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));