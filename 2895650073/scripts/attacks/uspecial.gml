set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

//buffer
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_boss_vortex_end"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_USPECIAL, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 72);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));




