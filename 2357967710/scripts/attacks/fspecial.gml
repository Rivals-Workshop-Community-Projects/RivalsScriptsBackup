set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial2air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial2air_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FSPECIAL,1);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 120);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
