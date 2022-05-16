set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);//20
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_charge_blade_ready"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("prefly"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 19);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9); //this is absurd base knockback, do not give values this high to characters, sandbert has it because sandbert reasons
set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 4.5); //the knockback decays to this over the live of the move
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .75); //this is extremely high knockback scaling, this is a powerful kill scaling for a move with 6 base knockback, 11 means this move kills far earlier than anything normally should
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10); //this is good hitpause for a very strong kill move (15)
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 5); 
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 20); //this is good hitpause for a very strong kill move (15)
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 2); //-5
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 156);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 3, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 5, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.4);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 6, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.4);