set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_oly_uspecial_twirl"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0.5);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 5);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0.5);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
// set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -12);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 0);
// set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -7);
// set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 3);

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -168);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 5, HG_DRIFT_MULTIPLIER, 1.3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 7);//9
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, HFX_MAY_RAG_WHIP);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 60);//80
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 8);//9
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, HFX_MAY_RAG_WHIP);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));

// set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 4);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
// set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 50);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -110);
// set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 50);
// set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 80);
// set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
// set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 250);
// set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
// set_hitbox_value(AT_USPECIAL, 4, HG_TECHABLE, 1);

// set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 5);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 6);
// set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 20);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -25);
// set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 60);
// set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 60);
// set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
// set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
// set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 80);
// set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
// set_hitbox_value(AT_USPECIAL, 5, HG_TECHABLE, 1);