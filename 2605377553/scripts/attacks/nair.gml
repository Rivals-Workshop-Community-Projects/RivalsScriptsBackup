set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);

//start
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 7);

//atk
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

//atk2
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);


//end
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 3);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("hit_1"));

//set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 0);
//set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
//set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 8);
//set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -16);
//set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 32);
//set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 32);
//set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
//set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 30);
//set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
//set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.2);
//set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("hit_1"));

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 140);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, bigsmoke);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);