set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 7);

//fas1  faa1  fah1  fas2  faa2  fah2  far
//0-0:1 1-1:1 2-2:1 3-3:1 4-4:1 5-5:1 6-8:3

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

//1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 103);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("hit_medium_3"));

//2
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 51);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("hit_medium_5"));

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);





