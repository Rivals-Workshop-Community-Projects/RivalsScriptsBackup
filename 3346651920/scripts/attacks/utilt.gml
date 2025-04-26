set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

//start
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//atk
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_UTILT, 2); 

var hb_damage = 8;
var hb_angle = 75;
var hb_bkb = 8;
var hb_kbg = 0.45;
var hb_bhp = 7;
var hb_hpg = 0.35;


//1
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -123);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 116);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//2
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -154);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 94);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));








