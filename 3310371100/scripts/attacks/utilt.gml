set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

//start
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);//4
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);

//atk
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTILT, 4, AG_IASA_THIS_WINDOW, 1);
set_window_value(AT_UTILT, 4, AG_MUNO_WINDOW_EXCLUDE, 1);











set_num_hitboxes(AT_UTILT, 2);

var hb_damage = 7;
var hb_angle = 95;
var hb_bkb = 7;//5
var hb_kbg = 0.5;//0.7
var hb_bhp = 7;
var hb_hpg = 0.4;//0.3

//1
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 42);//37
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -42);//-56
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48);//37
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 53);//72
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//2
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 36);//12
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -68);//-66
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 68);//52
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 75);//72
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);//2
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));













