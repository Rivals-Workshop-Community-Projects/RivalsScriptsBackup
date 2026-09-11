set_attack_value(45, AG_CATEGORY, 2);
set_attack_value(45, AG_SPRITE, sprite_get("alt_divekick"));
set_attack_value(45, AG_HAS_LANDING_LAG, 1);
set_attack_value(45, AG_LANDING_LAG, 10);
set_attack_value(45, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(45, AG_NUM_WINDOWS, 8);

set_window_value(45, 1, AG_WINDOW_TYPE, 1);
set_window_value(45, 1, AG_WINDOW_LENGTH, 12);
set_window_value(45, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(45, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(45, 1, AG_WINDOW_VSPEED, -1);
//set_window_value(45, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(45, 1, AG_WINDOW_HSPEED, -1);

set_window_value(45, 2, AG_WINDOW_TYPE, 1);
set_window_value(45, 2, AG_WINDOW_LENGTH, 1);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(45, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(45, 2, AG_WINDOW_VSPEED, 15);
set_window_value(45, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(45, 2, AG_WINDOW_HSPEED, 7);
set_window_value(45, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(45, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(45, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(45, 3, AG_WINDOW_TYPE, 9);
set_window_value(45, 3, AG_WINDOW_LENGTH, 12);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(45, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(45, 3, AG_WINDOW_HSPEED, 5);
//set_window_value(45, 3, AG_WINDOW_HITPAUSE_FRAME, 8);

set_window_value(45, 4, AG_WINDOW_TYPE, 1);
set_window_value(45, 4, AG_WINDOW_LENGTH, 12);
set_window_value(45, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(45, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(45, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(45, 4, AG_WINDOW_HSPEED, 3);
set_window_value(45, 4, AG_WINDOW_GOTO, 10);
set_window_value(45, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Jump Kick Start
set_window_value(45, 5, AG_WINDOW_TYPE, 1);
set_window_value(45, 5, AG_WINDOW_LENGTH, 1);
set_window_value(45, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 5, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(45, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(45, 5, AG_WINDOW_SFX, asset_get("sfx_blow_medium3"));
//set_window_value(45, 5, AG_WINDOW_SFX, sound_get("kick_impact"));

//Jump Kick
set_window_value(45, 6, AG_WINDOW_TYPE, 1);
set_window_value(45, 6, AG_WINDOW_LENGTH, 8);
set_window_value(45, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(45, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(45, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(45, 6, AG_WINDOW_VSPEED, -8);
set_window_value(45, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(45, 6, AG_WINDOW_HSPEED, 3);
set_window_value(45, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(45, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(45, 6, AG_WINDOW_SFX_FRAME, 5);

set_window_value(45, 7, AG_WINDOW_TYPE, 1);
set_window_value(45, 7, AG_WINDOW_LENGTH, 4);
set_window_value(45, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(45, 8, AG_WINDOW_TYPE, 1);
set_window_value(45, 8, AG_WINDOW_LENGTH, 10);
set_window_value(45, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(45, 8, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(45, 2);

set_hitbox_value(45, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(45, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(45, 1, HG_WINDOW, 2);
set_hitbox_value(45, 1, HG_LIFETIME, 1);
set_hitbox_value(45, 1, HG_HITBOX_Y, -15);
set_hitbox_value(45, 1, HG_HITBOX_X, 15);
set_hitbox_value(45, 1, HG_WIDTH, 35);
set_hitbox_value(45, 1, HG_HEIGHT, 45);
set_hitbox_value(45, 1, HG_PRIORITY, 2);
set_hitbox_value(45, 1, HG_DAMAGE, 5);
set_hitbox_value(45, 1, HG_ANGLE, 290);
set_hitbox_value(45, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(45, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(45, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(45, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(45, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(45, 1, HG_VISUAL_EFFECT, 14);
set_hitbox_value(45, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(45, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(45, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(45, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(45, 2, HG_WINDOW, 3);
set_hitbox_value(45, 2, HG_LIFETIME, 12);
set_hitbox_value(45, 2, HG_HITBOX_Y, -15);
set_hitbox_value(45, 2, HG_HITBOX_X, 15);
set_hitbox_value(45, 2, HG_WIDTH, 35);
set_hitbox_value(45, 2, HG_HEIGHT, 45);
set_hitbox_value(45, 2, HG_PRIORITY, 2);
set_hitbox_value(45, 2, HG_DAMAGE, 3);
set_hitbox_value(45, 2, HG_ANGLE, 60);
set_hitbox_value(45, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(45, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(45, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(45, 2, HG_HITPAUSE_SCALING, .2);
//set_hitbox_value(45, 2, HG_HIT_SFX, sound_get("kick_impact"));
set_hitbox_value(45, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));