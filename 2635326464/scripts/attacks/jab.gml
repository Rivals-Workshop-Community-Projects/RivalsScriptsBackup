set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//startup 1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("PiranhaStart"));

//active 1
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("PiranhaAttack"));


//endlag 1
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

//startup 2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//active 2
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("PiranhaAttack2"));

//endlag 2
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);

//fast endlag
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 15);

//NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_MUNO_HITBOX_NAME, "Bite 1");

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("PiranhaHit"));

set_hitbox_value(AT_JAB, 2, HG_MUNO_HITBOX_NAME, "Bite 2");

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("PiranhaHit2"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 304);

//the starting hitbox

set_hitbox_value(AT_JAB, 3, HG_MUNO_HITBOX_NAME, "The pot at the beggining");

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 303);

//Screw it, the spawn self-damage goes here

set_hitbox_value(AT_JAB, 4, HG_MUNO_HITBOX_NAME, "This is actually the self damage from when you hold attack for too long at the start of the match (sorry)");

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 10);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 10);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 95);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("Start_fail"));
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 13);

set_attack_value(AT_JAB, AG_MUNO_ATTACK_MISC_ADD, "Endlag varies depending on the number of bites.");