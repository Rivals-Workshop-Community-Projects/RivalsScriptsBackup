set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// Active
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("bracer_shot"));

// Endlag
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

// Active
//set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("bracer_shot"));

// Endlag
//set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Start Up (yeah, i'm surprised too)
//set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 15);

// Active
//set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("bracer_shot"));

// Endlag
//set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

// Dash Shit
//set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 24);

//set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 27);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 59);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 45);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 77);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 6);

set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -41);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 63);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);

// Projectile
set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 30);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 180);
set_hitbox_value(AT_JAB, 4, HG_EFFECT, 9);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_SPRITE, sprite_get("temp_jab_proj"));
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_MASK, sprite_get("temp_jab_proj"));
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, 7);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
