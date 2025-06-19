//La Reina fstrong.gml
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 7);

//Attack
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Grab hold
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 23);

//Whiff recovery
set_window_value(AT_FSTRONG, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAME_START, 24);

//Back throw startup
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);

//Back throw jump
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 17);

//Back throw falling
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 21);

//Bthrow Land hit + bounce up
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HITPAUSE_FRAME, 22);

//Forward throw startup
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 25);

//Forward throw initial hold
set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 26);

//Fthrow leanback (unused)
set_window_value(AT_FSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 6);

//Fthrow jump
set_window_value(AT_FSTRONG, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 29);

//Fthrow falling
set_window_value(AT_FSTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 30);

//Fthrow landing hit + bounce
set_window_value(AT_FSTRONG, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_HITPAUSE_FRAME, 31);




set_num_hitboxes(AT_FSTRONG, 5);

var e_hitbox = 1; //GRAB
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_GROUP,  1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_X, 71);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WIDTH, 93);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HEIGHT, 22);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITPAUSE_SCALING, 0);
/* set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, HFX_ORI_BLUE_SMALL); */
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_SFX, asset_get("sfx_clairen_swing_strong"));
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_TECHABLE, 3); // 3 = Cannot tech or bounce
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_THROWS_ROCK, 1);

var fstrong_base = 8;
var fstrong_scaling = 1.15;
e_hitbox = 2; //Back throw
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WINDOW, 7);
//set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_X, -16);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_ANGLE, 130);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_KNOCKBACK, fstrong_base);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_KNOCKBACK_SCALING, fstrong_scaling);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_LOCKOUT, 10);

e_hitbox = 3; //Forward throw
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WINDOW, 13);
//set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_X, 11);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WIDTH, 96);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_KNOCKBACK, fstrong_base);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_KNOCKBACK_SCALING, fstrong_scaling);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_LOCKOUT, 10);

// Rock hits

e_hitbox = 4; //Back throw
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_X, -16);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_PRIORITY, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_ANGLE, 140);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_THROWS_ROCK, 1);

e_hitbox = 5; //Forward throw
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WINDOW, 13);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_X, 11);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_WIDTH, 96);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_PRIORITY, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, e_hitbox, HG_THROWS_ROCK, 1);