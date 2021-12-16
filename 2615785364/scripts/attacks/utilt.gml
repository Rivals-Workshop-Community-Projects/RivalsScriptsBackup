set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 12);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//1
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("wheesh"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//2
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 4);

//3
set_window_value(AT_UTILT, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 8, AG_WINDOW_HSPEED, 16);
set_window_value(AT_UTILT, 8, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 9, AG_WINDOW_HSPEED, 16);
set_window_value(AT_UTILT, 9, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 10, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 10, AG_WINDOW_HSPEED, 16);
set_window_value(AT_UTILT, 10, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 11, AG_WINDOW_HSPEED, 16);
set_window_value(AT_UTILT, 11, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_UTILT, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 12, AG_WINDOW_HSPEED, 16);
set_window_value(AT_UTILT, 12, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_UTILT,1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 8);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE,  2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("crash"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 1);