set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("wallcrawl"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("wall_idle_hurtbox"));

//wallcrawl
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_GOTO, 7);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 300);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//wallgrab startup
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//grab hitbox window
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_GOTO, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

//launch
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_GOTO, 6);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

//missed grab
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_GOTO, 7);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);

//continue crawl?
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);

//endlag walljump prepare
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -60);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -105);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 120);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 30);
// set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 420);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, get_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -105);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 35);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 25);
// set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);