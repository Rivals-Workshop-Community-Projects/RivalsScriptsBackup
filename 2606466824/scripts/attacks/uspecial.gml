set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_NAME, "USpecial: Cross Chop");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_FAF, "31");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_ENDLAG, "9");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC, "Above values refer to only doing the first part of the move. Second part only stats: FAF: 51, Endlag: 11, Landing Lag: 35 (or 15 with Soft Landing)");


//ascent startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("uspec_1"));

//ascent active
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);

//ascent endlag
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 8);

//descent startup
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, sound_get("uspec_2"));

//descent active
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 10);

//descent endlag
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 10);

//bounce
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_GOTO, 10);

//unused dont worry about it
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_GOTO, 10);

//soft landing
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 21);


set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Grab 1 (Ascent)");

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_MUNO_HITBOX_NAME, "Grab 2 (Ascent)");

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 310);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, firehfx);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 3); //1?
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_NAME, "Spike (Descent)");
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_ACTIVE, "11-12");
set_hitbox_value(AT_USPECIAL, 3, HG_MUNO_HITBOX_MISC_ADD, "Active frames start from when the second part of the move begins.");

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 22);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, firehfx);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_NAME, "Late hit (Descent)");
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_ACTIVE, "13-39");
set_hitbox_value(AT_USPECIAL, 4, HG_MUNO_HITBOX_MISC_ADD, "Active frames start from when the second part of the move begins.");

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 17);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, firehfx);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_REVENGE_KB_MULTIPLIER, 1.3);
set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_NAME, "Landing Explosion");
set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_ACTIVE, "1-2");
set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_MISC_ADD, "Active frames start from when the landing part of the move begins. Only comes out if NOT doing a soft landing (if parry is NOT held on landing).");