set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);

var win_num = 1;

//Startup
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
win_num++;

//Mid Start
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_SFX, sound_get("tee_snapzap"));
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_SFX_FRAME, 2);
win_num++;

//Mid End
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
win_num++;

//Up Start
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_SFX, sound_get("tee_snapzap"));
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_SFX_FRAME, 2);
win_num++;

//Up End
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 10);
win_num++;

// //End
// set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_TYPE, 1);
// set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_LENGTH, 4);
// set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_FSPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_FSPECIAL, 6);

hbox_num = 1;

//---FORWARD---
//Front
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_X, 128);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WIDTH, 36);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HIT_SFX, sound_get("tee_orb"));
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_VISUAL_EFFECT, fx_swirl);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_FORCE_FLINCH, 3);

hbox_num++;

//Middle (Sweet Spot)
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_X, 97);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WIDTH, 8);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HIT_SFX, sound_get("tee_orb2"));
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_FORCE_FLINCH, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_VISUAL_EFFECT, fx_burst);

hbox_num++;

//Back
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WIDTH, 36);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HIT_SFX, sound_get("tee_orb"));
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_VISUAL_EFFECT, fx_swirl);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_FORCE_FLINCH, 3);

hbox_num++;

//---UP---
//Front
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_X, 112);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_Y, -96);
hbox_num++;

//Middle (Sweet Spot)
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_Y, -80);
hbox_num++;

//Back
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSPECIAL, hbox_num, HG_HITBOX_Y, -64);
hbox_num++;