var atk = AT_JAB;

set_attack_value(atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(atk, AG_NUM_WINDOWS, 12);
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

var windowNum = 0;
// [JAB 1] windows 1-3

windowNum ++; //windup
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.7);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 3);

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 0);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 11);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 6);

// [JAB 2] windows 4-6

windowNum ++; //windup
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 6);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 7);

// [JAB 3] windows 7-9

windowNum ++; //windup
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //controls speed //8
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 16); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 7); //5
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 9); //12
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 4);

// [JAB 4] windows 10-12

windowNum ++; //windup
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 4);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 5);

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 23); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 4.5);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4); // change later, it will have more frames
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 24);

//amount of hitboxes
set_num_hitboxes(atk, 4);

var hitbox_num = 1; // [JAB 1] - hitbox data
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2); //3
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 28); //24
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -39);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68); //60
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32); //28
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);

hitbox_num ++; // [JAB 2] - hitbox data
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30); //26
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80); //72
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 36); //28
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50); //65
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6); //4.5
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5); //7
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);

hitbox_num ++; // [JAB 3] - hitbox data
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 96); //88
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50); //42
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 55);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5); //8
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);

hitbox_num ++; // [JAB 4] - hitbox data
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 11);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 42);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 4);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);