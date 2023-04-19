set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//hold
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//bounce
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 14);

//land
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 17);

//where am i?
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 19);
//hold frame
set_window_value(AT_DAIR, 10, AG_WINDOW_LENGTH, 42);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAME_START, 20);

set_window_value(AT_DAIR, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 11, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_DAIR, 4);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//landing hit
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 3, HG_GROUNDEDNESS, 1);

//hold hitbox
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);