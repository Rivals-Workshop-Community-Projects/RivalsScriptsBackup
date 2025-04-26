set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

//start
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//atk
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2); 

var hb_damage = 6;
var hb_angle = 90;
var hb_bkb = 6.5;
var hb_kbg = 0.6;
var hb_bhp = 6;
var hb_hpg = 0.3;


//1
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 76);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 103);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, hb_damage);//WHY DOES DR MARIO FTILT DOES 10% BASE DAMAGE
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, hb_kbg);//resembling clairen jab sour
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));


//2
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 47);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 133);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, hb_damage);//WHY DOES DR MARIO FTILT DOES 10% BASE DAMAGE
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, hb_kbg);//resembling clairen jab sour
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));





