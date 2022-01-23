set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9); // 6
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6); // 4
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("lunge1"));

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("lunge2"));

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12); // 8
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 8); // 8
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 6);

// sweet 1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 61);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40); // 30
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5); // 6
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .2); // .25
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hitfx2);

// sweet 2 (1st)
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45); // 30
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 11); // 6
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .4); // .25
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hitfx2);

// sweet 2 (2nd)
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 73);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45); // 30
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 11); // 6
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .4); // .25
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, hitfx2);

// sour 1
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 25);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 45); // 30
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 4); // 6
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .2); // .25
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 1);

// sour 2 (2nd)
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 25);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 58);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 45); // 30
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 4); // 6
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, .2); // .25
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 2);

// sour 2 (1st)
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 25);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 45); // 30
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 4); // 6
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, .2); // .25
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 2);