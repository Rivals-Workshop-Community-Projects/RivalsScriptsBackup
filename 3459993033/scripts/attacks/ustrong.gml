set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_MISC, "Gains additional rings (up to a max of 3) and becomes a multihit if charged.");

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//release
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sound_get("sfx_delta_swipe3"));


set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//hold
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_USTRONG, 5, AG_MUNO_WINDOW_EXCLUDE, 1);


//recoil (unused)
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_GOTO, 5)
set_window_value(AT_USTRONG, 6, AG_MUNO_WINDOW_EXCLUDE, 1);

set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_USTRONG, 7, AG_MUNO_WINDOW_EXCLUDE, 1);

//endlag 1
set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//endlag hold
set_window_value(AT_USTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

//endlag hold
set_window_value(AT_USTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//endlag return to idle


set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, -1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2)
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 4)
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, hfx_small)
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0.5);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, -1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2)
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, hfx_big)
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 98);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 0)

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -95);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 16);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_USTRONG, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 0)

var el1 = get_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH);
var el2 = get_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH);
var el3 = get_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH);

var ustrong_endlag = el1 + el2 + el3;

//woodcock
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_ENDLAG, string(ustrong_endlag) + " (" + string(ceil(ustrong_endlag*1.5)) + ")");