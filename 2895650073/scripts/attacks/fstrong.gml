set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6); //11 //16

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

var fst_1 = 4
var fst_2 = 9
var fst_3 = 3
var fst_4 = 15
var fst_5 = 12

// - - - TIER 1
//charge
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, fst_1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, fst_2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, fst_3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, fst_4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, fst_5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

// - - - TIER 2
//charge
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, fst_1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, fst_2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, sound_get("thunder"));
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, fst_3);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);


set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, fst_4);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, fst_5);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

// - - - TIER 3
//charge
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, fst_1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, fst_2);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_SFX, sound_get("thunder"));
set_window_value(AT_FSTRONG, 13, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG, 14, AG_WINDOW_LENGTH, fst_3);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 15, AG_WINDOW_LENGTH, fst_4);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 16, AG_WINDOW_LENGTH, fst_5);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 59);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 69);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 14);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 79);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 104);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));










