set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);

weapon_attack_spr[AT_JAB] = sprite_get("jab_w");
weapon_xoffset[AT_JAB] = !runeL ? 0 : 48;
weapon_yoffset[AT_JAB] = 0;
weapon_follow[AT_JAB] = true;

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 2.5);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 6);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 17);


weapon_window_min[AT_JAB] = 10;
weapon_window_max[AT_JAB] = 19;

set_window_value(AT_JAB, 10, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 11, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 12, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 12, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 13, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 14, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 14, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 5, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 15, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 15, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 6, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 15, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_JAB, 16, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 16, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 7, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 16, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 16, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_JAB, 17, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 17, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 8, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 17, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 17, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_JAB, 18, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 18, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 9, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 18, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 18, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 18, AG_WINDOW_GOTO, weapon_window_max[AT_JAB] + 1);

set_window_value(AT_JAB, 19, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_JAB, 19, AG_WINDOW_LENGTH, get_window_value(AT_JAB, 8, AG_WINDOW_LENGTH));
set_window_value(AT_JAB, 19, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 19, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 19, AG_WINDOW_GOTO, 18);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_JAB, 2, HG_MUNO_HITBOX_NAME, "Hit 2a");
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 62);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_MUNO_HITBOX_NAME, "Hit 2b");
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 62);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 4, HG_MUNO_HITBOX_NAME, "Hit 3");
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 36);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 304);

weapon_hitbox_min[AT_JAB] = 5;
weapon_hitbox_max[AT_JAB] = 10;

set_hitbox_value(AT_JAB, 5, HG_MUNO_HITBOX_NAME, "Weapon Hit 1");
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 54);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sound_get("sfx_iceslash_weak1"));
set_hitbox_value(AT_JAB, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_JAB, 5, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_JAB, 5));

set_hitbox_value(AT_JAB, 6, HG_MUNO_HITBOX_NAME, "Weapon Hit 2a");
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 14);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 56);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 76);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 62);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, sound_get("sfx_iceslash_weak2"));
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_JAB, 6, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_JAB, 6));

set_hitbox_value(AT_JAB, 7, HG_MUNO_HITBOX_NAME, "Weapon Hit 2b");
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 14);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 7, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 62);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -48);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 62);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 92);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, sound_get("sfx_iceslash_weak2"));
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_JAB, 7, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_JAB, 7));

set_hitbox_value(AT_JAB, 8, HG_MUNO_HITBOX_NAME, "Weapon Hit 3 (Ground Hit 1");
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 19);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 80);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 8, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 8, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 8, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, sound_get("sfx_iceslash_medium2"));
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_JAB, 8, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_JAB, 8, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_JAB, 8));

set_hitbox_value(AT_JAB, 9, HG_MUNO_HITBOX_NAME, "Weapon Hit 3 (Ground Hit 2");
set_hitbox_value(AT_JAB, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 9, HG_WINDOW, 19);
set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_X, 80);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, -8);
set_hitbox_value(AT_JAB, 9, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 9, HG_HEIGHT, 16);
set_hitbox_value(AT_JAB, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 9, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 9, HG_ANGLE, 270);
set_hitbox_value(AT_JAB, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 9, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 9, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 9, HG_HIT_SFX, sound_get("sfx_iceslash_heavy1"));
set_hitbox_value(AT_JAB, 9, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 9, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_JAB, 9, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_JAB, 9, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_JAB, 9));

set_hitbox_value(AT_JAB, 10, HG_MUNO_HITBOX_NAME, "Weapon Hit 3 (Ground Whiff");
set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 10, HG_WINDOW, 17);
set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 80);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 10, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 10, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 10, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 10, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 10, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 10, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 10, HG_HIT_SFX, sound_get("sfx_iceslash_medium2"));
set_hitbox_value(AT_JAB, 10, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 10, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_JAB, 10, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_JAB, 10));

#define weapon_active_time(_att, _hitbox_cur)
var frames_before = 1;
var frames_active = 0;
var window_before = weapon_window_min[_att];

while (window_before < get_hitbox_value(_att, _hitbox_cur, HG_WINDOW)) {
    frames_before += get_window_value(_att, window_before, AG_WINDOW_LENGTH);
    window_before ++;
}
frames_before += get_hitbox_value(_att, _hitbox_cur, HG_WINDOW_CREATION_FRAME);
frames_active = frames_before - 1;
frames_active += get_hitbox_value(_att, _hitbox_cur, HG_LIFETIME);
return string(frames_before) + "-" + string(frames_active);