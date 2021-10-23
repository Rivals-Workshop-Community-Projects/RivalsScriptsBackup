//Startup = 12
//Active = 3
//Endlag = 17

//Increase air friction!!!

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("fair_short"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 10);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("fair_short_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_2, 3);


//MAIN ATTACK
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 30);

set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));



//SWEET SPOT
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, 162);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 55);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 45);

set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE_FLIPPER, 6);

//SECONDARY MAIN

set_hitbox_value(AT_EXTRA_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 69);
set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_X, 182);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -52);
set_hitbox_value(AT_EXTRA_2, 3, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_2, 3, HG_HEIGHT, 20);