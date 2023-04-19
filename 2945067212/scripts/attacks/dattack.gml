set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_HURTBOX_AIR_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 7);

//startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
//why
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 3);

//attack 1
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 4);

//attack 2
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 4);

//attack 3
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 4);

//attack 4
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX_FRAME, 8);

//attack 5
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag
set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 4.25);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get ("dattackhit1"));
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, 0.6);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, 0.6);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1);
// set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
// set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_HSPEED, 1);
// set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get ("dattackhit2"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get ("dattackhit3"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get ("dattackhit1"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, sound_get ("dattackhit2"));
set_hitbox_value(AT_DATTACK, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 5);