//La Reina bair.gml
var edit_attack = AT_BAIR;
var e_window = 1;

set_attack_value(edit_attack, AG_CATEGORY, 1);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("bair"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 4);
set_attack_value(edit_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(edit_attack, AG_LANDING_LAG, 4);
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

e_window = 1; //Startup 1
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);

e_window = 2; //Swipe
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 2);

e_window = 3; //Key Hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 5);

e_window = 4;//Whiff
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 16);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 17);

e_window = 5;//YEET
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 7);

e_window = 6;//Yeet hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 11);

e_window = 7;//Recovery
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 15);

e_window = 8;//Goes between windows 3 and 5 on hit
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 6);







set_num_hitboxes(edit_attack, 4);

//lower grab box
set_hitbox_value(edit_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 1, HG_SHAPE, 2);
set_hitbox_value(edit_attack, 1, HG_WINDOW, 2);
set_hitbox_value(edit_attack, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(edit_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(edit_attack, 1, HG_HITBOX_X, -50);
set_hitbox_value(edit_attack, 1, HG_HITBOX_Y, -14);
set_hitbox_value(edit_attack, 1, HG_WIDTH, 54);
set_hitbox_value(edit_attack, 1, HG_HEIGHT, 36);
set_hitbox_value(edit_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(edit_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(edit_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(edit_attack, 1, HG_ANGLE, 170);
set_hitbox_value(edit_attack, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(edit_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(edit_attack, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(edit_attack, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(edit_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(edit_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(edit_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(edit_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(edit_attack, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, 1, HG_TECHABLE, 3); // 3 = Cannot tech or bounce
set_hitbox_value(edit_attack, 1, HG_THROWS_ROCK, 1);

//upper grab box
set_hitbox_value(edit_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 2, HG_SHAPE, 0);
set_hitbox_value(edit_attack, 2, HG_WINDOW, 2);
set_hitbox_value(edit_attack, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(edit_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(edit_attack, 2, HG_HITBOX_X, -34);
set_hitbox_value(edit_attack, 2, HG_HITBOX_Y, -42);
set_hitbox_value(edit_attack, 2, HG_WIDTH, 54);
set_hitbox_value(edit_attack, 2, HG_HEIGHT, 58);
set_hitbox_value(edit_attack, 2, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(edit_attack, 2, HG_DAMAGE, 2);
set_hitbox_value(edit_attack, 2, HG_ANGLE, 260);
set_hitbox_value(edit_attack, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(edit_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(edit_attack, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(edit_attack, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(edit_attack, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(edit_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(edit_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(edit_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(edit_attack, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, 2, HG_TECHABLE, 3); // 3 = Cannot tech or bounce
set_hitbox_value(edit_attack, 2, HG_THROWS_ROCK, 1);

//YEET
set_hitbox_value(edit_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 3, HG_SHAPE, 0);
set_hitbox_value(edit_attack, 3, HG_WINDOW, 5);
set_hitbox_value(edit_attack, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(edit_attack, 3, HG_LIFETIME, 3);
set_hitbox_value(edit_attack, 3, HG_HITBOX_X, -19);
set_hitbox_value(edit_attack, 3, HG_HITBOX_Y, -55);
set_hitbox_value(edit_attack, 3, HG_WIDTH, 79);
set_hitbox_value(edit_attack, 3, HG_HEIGHT, 60);
set_hitbox_value(edit_attack, 3, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, 3, HG_DAMAGE, 7);
set_hitbox_value(edit_attack, 3, HG_ANGLE, 140);
set_hitbox_value(edit_attack, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(edit_attack, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(edit_attack, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(edit_attack, 3, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(edit_attack, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(edit_attack, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(edit_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, 3, HG_THROWS_ROCK, 2);
set_hitbox_value(edit_attack, 3, HG_HIT_LOCKOUT, 10);

// Throws Rock

//YEET
set_hitbox_value(edit_attack, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, 4, HG_SHAPE, 0);
set_hitbox_value(edit_attack, 4, HG_WINDOW, 5);
set_hitbox_value(edit_attack, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(edit_attack, 4, HG_LIFETIME, 3);
set_hitbox_value(edit_attack, 4, HG_HITBOX_X, -19);
set_hitbox_value(edit_attack, 4, HG_HITBOX_Y, -55);
set_hitbox_value(edit_attack, 4, HG_WIDTH, 79);
set_hitbox_value(edit_attack, 4, HG_HEIGHT, 60);
set_hitbox_value(edit_attack, 4, HG_PRIORITY, 0);
set_hitbox_value(edit_attack, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, 4, HG_DAMAGE, 7);
set_hitbox_value(edit_attack, 4, HG_ANGLE, 155);
set_hitbox_value(edit_attack, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(edit_attack, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(edit_attack, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(edit_attack, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(edit_attack, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(edit_attack, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, 4, HG_THROWS_ROCK, 1);
