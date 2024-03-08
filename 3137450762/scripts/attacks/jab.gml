//La Reina jab.gml
var edit_attack = AT_JAB;
var e_window = 1;
var e_hitbox = 1;

set_attack_value(edit_attack, AG_SPRITE, sprite_get("jab"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 6);
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(edit_attack, AG_NO_PARRY_STUN, true);

e_window = 1; //Anticipation
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, true);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 2);

e_window = 2; //Jab 1 Hit
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HSPEED, 1);

e_window = 3; //Jab 1 Hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 18);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_CANCEL_TYPE, 1);

e_window = 4; //Jab 2 Hit
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 10);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, true);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 3);

e_window = 5; //Jab 2 Hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 7);

e_window = 6; //Jab 3 Hit
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 10);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_SFX, true);
set_window_value(edit_attack, e_window, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(edit_attack, e_window, AG_WINDOW_SFX_FRAME, 3);

e_window = 7; //Jab 3 Hold
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 8);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 12);

e_window = 8; //Recovery
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 2);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(edit_attack, e_window, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(edit_attack, 3);

e_hitbox = 1; //Jab 1
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 53);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -43);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 76);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 64);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 3);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 70);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 8);
set_hitbox_value(edit_attack, e_hitbox, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

e_hitbox = 2; //Jab 2
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 49);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -43);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 62);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 64);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 60);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

e_hitbox = 3; //Jab 3
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 49);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -43);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 62);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 64);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 3);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 60);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, 14);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
