set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//start precharge
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);//6
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_hair"));

//anticipation
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);//3
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//atk
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);//5
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);

//hold
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 11);//13
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);





set_num_hitboxes(AT_USTRONG, 3);

var hb_damage = 10;
var hb_angle = 90;//70//80
var hb_bkb = 8;//4//7
var hb_kbg = 1.0;//1.3
var hb_bhp = 8;//sk ustrong value
var hb_hpg = 0.7;//sk ustrong value

//left (start)
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -34);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//middle
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -66);//-64
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 75);//71
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//right (end)
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 61);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 57);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, hb_angle);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));








