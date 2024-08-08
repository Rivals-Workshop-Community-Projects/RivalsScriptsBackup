set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 12);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//attack 1
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("MiniJump"));
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//resting 1
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 99);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//attack 2
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_SFX, sound_get("MiniJump"));
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UTILT, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//resting 2
set_window_value(AT_UTILT, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_UTILT, 8, AG_WINDOW_LENGTH, 99);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UTILT, 8, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(AT_UTILT, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//attack 3
set_window_value(AT_UTILT, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_UTILT, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_SFX, sound_get("MiniJump"));
set_window_value(AT_UTILT, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_UTILT, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_UTILT, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_UTILT, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_UTILT, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//resting 3
set_window_value(AT_UTILT, 12, AG_WINDOW_TYPE, 9);
set_window_value(AT_UTILT, 12, AG_WINDOW_LENGTH, 99);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_UTILT, 12, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(AT_UTILT, 12, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_num_hitboxes(AT_UTILT,6);

//They're all the same btw

set_hitbox_value(AT_UTILT, 1, HG_MUNO_HITBOX_NAME, "Tiny leap (all of them)");

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -34);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 10);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -34);;

set_hitbox_value(AT_UTILT, 4, HG_MUNO_HITBOX_NAME, "Smart Steering Antenna (all of them)");

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -31);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 20);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -19);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -60);

set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 9);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -19);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -60);


set_attack_value(AT_UTILT, AG_MUNO_ATTACK_MISC_ADD, "You can move slightly to the left or right while leaping.");