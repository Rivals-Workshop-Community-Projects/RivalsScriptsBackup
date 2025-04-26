set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 8);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 7);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 9, AG_WINDOW_GOTO, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_TENSION_WHIFF_PENALTY, 3);

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 10, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_JAB, 10, AG_WINDOW_HSPEED, 6);

set_window_value(AT_JAB, 11, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 11, AG_WINDOW_SFX_FRAME, 5);

var startup1 = get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH);
var active1 = get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH);
var recovery1 = startup1 + active1 + get_window_value(AT_JAB, 3, AG_WINDOW_LENGTH);
var tilt_cancel1 = startup1 + active1 + get_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME)
var startup2 = get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH);
var active2 = get_window_value(AT_JAB, 5, AG_WINDOW_LENGTH);
var recovery2 = startup1 + active1 + recovery1 + startup2 + active2 + get_window_value(AT_JAB, 6, AG_WINDOW_LENGTH);
var tilt_cancel2 = startup1 + active1 + recovery1 + startup2 + active2 + get_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME)

set_attack_value(AT_JAB, AG_MUNO_ATTACK_MISC_ADD, "Jab/Tilt Cancelable on frames " + string(tilt_cancel1) + "-" + string(recovery1) + " and "+ string(tilt_cancel2) + "-" + string(recovery2) );


set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 54);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_MUNO_HITBOX_NAME, "Hit 2");
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_MUNO_HITBOX_NAME, "Rapid Hit 1");
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_MUNO_HITBOX_NAME, "Rapid Hit 2");
set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 5, HG_MUNO_HITBOX_NAME, "Finisher Hit");
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);