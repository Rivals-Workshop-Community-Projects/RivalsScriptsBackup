atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(atk, AG_NUM_WINDOWS, 5);


set_window_value(atk, 1, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("spin"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 2);

// active

set_window_value(atk, 2, AG_WINDOW_LENGTH, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// GOTCHA 3: The Snthreeequel
set_window_value(atk, 3, AG_WINDOW_LENGTH, 13);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// whiff
set_window_value(atk, 4, AG_WINDOW_LENGTH, 22);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 3);

// throw
set_window_value(atk, 5, AG_WINDOW_LENGTH, 14);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 5);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //grab
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 20);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("snatch"));

hitbox_num ++; //throw
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 2);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 302);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 15 * spr_dir);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("minislash"));


set_num_hitboxes(atk, hitbox_num);