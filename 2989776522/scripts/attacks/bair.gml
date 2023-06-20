set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 5);

//tap bair
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 5);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//hold bair
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED, 3);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 7);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -90);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 3);
//set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -90);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 120);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -90);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 120);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);

//final hit
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 7);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -90);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 120);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.95);
//set_hitbox_value(AT_BAIR, 4, HG_EFFECT, 1);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 3);

//tap sweetspot
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 1.0);
//set_hitbox_value(AT_BAIR, 5, HG_EFFECT, 1);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 4);

//tap sourspot
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -90);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 120);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_BAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, 0.8);
//set_hitbox_value(AT_BAIR, 6, HG_EFFECT, 1);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_GROUP, 4);

//based hitbox on tap if you move fast enough forward
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 14);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, 15);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, -38);
set_hitbox_value(AT_BAIR, 7, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 7, HG_HEIGHT, 68);
set_hitbox_value(AT_BAIR, 7, HG_PRIORITY, 0);
set_hitbox_value(AT_BAIR, 7, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 7, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 7, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 7, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_BAIR, 7, HG_IGNORES_PROJECTILES, true);