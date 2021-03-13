set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

//grab
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//pulling
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("pulling"));

//pull off
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, sound_get("pulloff"));

//spinfall
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 7);

//successful landing1
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 6);

//successful landing2
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 1);

//grabfail
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 1);

//fall
set_window_value(AT_FSPECIAL_AIR, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAMES, 1);

//wipe off1
set_window_value(AT_FSPECIAL_AIR, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAMES, 5);

//wipe off2
set_window_value(AT_FSPECIAL_AIR, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 11, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_AIR, 11, AG_WINDOW_ANIM_FRAMES, 1);

//wipe off3
set_window_value(AT_FSPECIAL_AIR, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 12, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_AIR, 12, AG_WINDOW_ANIM_FRAMES, 1);

//wipe off4
set_window_value(AT_FSPECIAL_AIR, 13, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 13, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_AIR, 13, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_FSPECIAL_AIR,2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 125);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, sidehammer);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);