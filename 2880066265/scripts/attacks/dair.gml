set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);  //Does aerial have landing lag?
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);  //Frames of landing lag
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1); //Opener window
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 18);  //How many frames to run in 60fps
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4); //Number of frames
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1); //Hurt window
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1); //Closing window
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR,2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1); //SWEET
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2); //attack at window 2
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4); //hitbox active duration
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 83);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 89);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 24);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304); //unsure, might want to change this later
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 50);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1); //SOUR
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2); //attack at window 2
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4); //hitbox active duration
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 83);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 112);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 305); //unsure, might want to change this later
//set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);