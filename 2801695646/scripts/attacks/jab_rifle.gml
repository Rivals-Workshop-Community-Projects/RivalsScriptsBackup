// Rifle Jab Attack

set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("jab_rifle"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("jab_rifle_hurt"));


//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);

// Punch 1
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("sfx_at_punch_03"));
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_EXTRA_2, 1);

//set_hitbox_value(AT_EXTRA_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 4); //2
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 38); //34
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -39); //-33
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 72);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 56); //26
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.5); //0.05
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0.7);
//set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("sfx_hit_punch"));
//set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, 2); // Edit this
//set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_HITPAUSE, 10); // Edit this
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_EXTRA_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, -1);