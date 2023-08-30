set_attack_value(AT_FTILT, AG_CATEGORY, 0);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 6);

//release
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 2);

//release tipper
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);

//multihit
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 3);
//set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);

//initial hit
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 40);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 4, HG_HIT_LOCKOUT, 5);

//release tipper 2
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 70);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTILT, 5, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 2);

//initial back hit
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 40);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 15);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 6, HG_WIDTH, 25);
set_hitbox_value(AT_FTILT, 6, HG_HEIGHT, 55);
set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_FTILT, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 6, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 6, HG_HIT_LOCKOUT, 5);